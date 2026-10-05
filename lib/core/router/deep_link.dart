import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/home/providers/home_providers.dart';
import '../../features/shell/employee_bottom_nav.dart';
import 'app_router.dart';

/// A joinpantri.com (or legacy product) link mapped onto an existing screen.
sealed class DeepLink {
  const DeepLink();
}

final class FoodDeepLink extends DeepLink {
  const FoodDeepLink(this.foodId);

  final String foodId;
}

final class OrderDeepLink extends DeepLink {
  const OrderDeepLink(this.orderId);

  final String orderId;
}

final class OrdersDeepLink extends DeepLink {
  const OrdersDeepLink();
}

final class PackagesDeepLink extends DeepLink {
  const PackagesDeepLink();
}

final class PackageDeepLink extends DeepLink {
  const PackageDeepLink(this.packageId);

  final String packageId;
}

final class TabDeepLink extends DeepLink {
  const TabDeepLink(this.tabIndex);

  final int tabIndex;
}

final class InviteDeepLink extends DeepLink {
  const InviteDeepLink(this.code);

  final String code;
}

/// Recognized so the app can open, with no promo screen to navigate to.
final class PromoDeepLink extends DeepLink {
  const PromoDeepLink(this.code);

  final String code;
}

/// Parses supported HTTPS links. Returns null for every other URI.
DeepLink? parseDeepLink(Uri uri) {
  final segments = uri.pathSegments.where((segment) => segment.isNotEmpty).toList();

  if (uri.scheme == 'pantri' &&
      uri.host == 'products' &&
      segments.length == 1 &&
      segments.first.isNotEmpty) {
    return FoodDeepLink(segments.first);
  }

  if (uri.scheme != 'https') return null;
  final host = uri.host.toLowerCase();

  if (host == 'pantri.app') {
    if (segments.length == 2 &&
        segments[0] == 'products' &&
        segments[1].isNotEmpty) {
      return FoodDeepLink(segments[1]);
    }
    return null;
  }

  if (host != 'joinpantri.com' || segments.length < 2 || segments.first != 'app') {
    return null;
  }

  final head = segments[1];
  switch (head) {
    case 'food':
      if (segments.length >= 3 && segments[2].isNotEmpty) {
        return FoodDeepLink(segments[2]);
      }
      return null;
    case 'order':
      if (segments.length >= 3 && segments[2].isNotEmpty) {
        return OrderDeepLink(segments[2]);
      }
      return null;
    case 'orders':
      return segments.length == 2 ? const OrdersDeepLink() : null;
    case 'packages':
      if (segments.length == 2) return const PackagesDeepLink();
      if (segments.length >= 3 && segments[2].isNotEmpty) {
        return PackageDeepLink(segments[2]);
      }
      return null;
    case 'marketplace':
      return segments.length == 2
          ? const TabDeepLink(EmployeeTabs.marketplace)
          : null;
    case 'credit':
      return segments.length == 2
          ? const TabDeepLink(EmployeeTabs.credit)
          : null;
    case 'profile':
      return segments.length == 2
          ? const TabDeepLink(EmployeeTabs.profile)
          : null;
    case 'invite':
      if (segments.length >= 3 && segments[2].isNotEmpty) {
        return InviteDeepLink(segments[2]);
      }
      return null;
    case 'promo':
      if (segments.length >= 3 && segments[2].isNotEmpty) {
        return PromoDeepLink(segments[2]);
      }
      return null;
    default:
      return null;
  }
}

void openInviteLink(AppRouter router, String code) {
  final current = router.current;
  if (current.name == RegisterEmployeeRoute.name &&
      current.args is RegisterEmployeeRouteArgs &&
      (current.args as RegisterEmployeeRouteArgs).inviteCode == code) {
    return;
  }
  router.replaceAll([RegisterEmployeeRoute(inviteCode: code)]);
}

void openEmployeeDeepLink(WidgetRef ref, DeepLink link) {
  final router = ref.read(appRouterProvider);
  switch (link) {
    case FoodDeepLink(:final foodId):
      _openEmployeePage(
        router,
        ProductDetailsRoute(productId: foodId),
        _isFoodOpen(router, foodId),
      );
    case OrderDeepLink(:final orderId):
      _openEmployeePage(
        router,
        OrderDetailRoute(orderId: orderId),
        _isOrderOpen(router, orderId),
      );
    case OrdersDeepLink():
      _openEmployeePage(
        router,
        const OrdersRoute(),
        router.current.name == OrdersRoute.name,
      );
    case PackagesDeepLink():
      _openEmployeePage(
        router,
        const PackagesRoute(),
        router.current.name == PackagesRoute.name,
      );
    case PackageDeepLink(:final packageId):
      _openEmployeePage(
        router,
        PackageDetailsRoute(packageId: packageId),
        _isPackageOpen(router, packageId),
      );
    case TabDeepLink(:final tabIndex):
      _openEmployeeTab(ref, router, tabIndex);
    case InviteDeepLink():
    case PromoDeepLink():
      break;
  }
}

bool _isFoodOpen(AppRouter router, String foodId) {
  final args = router.current.args;
  return router.current.name == ProductDetailsRoute.name &&
      args is ProductDetailsRouteArgs &&
      args.productId == foodId;
}

bool _isPackageOpen(AppRouter router, String packageId) {
  final args = router.current.args;
  return router.current.name == PackageDetailsRoute.name &&
      args is PackageDetailsRouteArgs &&
      args.packageId == packageId;
}

bool _isOrderOpen(AppRouter router, String orderId) {
  final args = router.current.args;
  return router.current.name == OrderDetailRoute.name &&
      args is OrderDetailRouteArgs &&
      args.orderId == orderId;
}

void _openEmployeePage(
  AppRouter router,
  PageRouteInfo<dynamic> page,
  bool alreadyOpen,
) {
  if (alreadyOpen) return;
  if (router.current.name == EmployeeHomeRoute.name) {
    router.push(page);
    return;
  }
  router.replaceAll([const EmployeeHomeRoute(), page]);
}

void _openEmployeeTab(WidgetRef ref, AppRouter router, int index) {
  final homeIsCurrent = router.current.name == EmployeeHomeRoute.name;
  final homeInStack = router.stackData.any(
    (route) => route.name == EmployeeHomeRoute.name,
  );

  if (homeIsCurrent) {
    ref.read(employeeTabIndexProvider.notifier).setIndex(index);
    ref.read(requestedEmployeeTabProvider.notifier).clear();
    return;
  }

  ref.read(requestedEmployeeTabProvider.notifier).request(index);
  if (homeInStack) {
    router.popUntilRouteWithName(EmployeeHomeRoute.name);
    ref.read(employeeTabIndexProvider.notifier).setIndex(index);
    ref.read(requestedEmployeeTabProvider.notifier).clear();
    return;
  }

  if (router.current.name != SplashRoute.name) {
    router.replaceAll([const EmployeeHomeRoute()]);
  }
}
