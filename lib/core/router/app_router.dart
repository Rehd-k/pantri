import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/admin/admin_home_screen.dart';
import '../../features/auth/domain/user_role.dart';
import '../../features/auth/presentation/login_screen.dart';
import '../../features/auth/presentation/pending_approval_screen.dart';
import '../../features/auth/presentation/register_employee_screen.dart';
import '../../features/auth/presentation/register_employer_screen.dart';
import '../../features/auth/presentation/register_hub_screen.dart';
import '../../features/auth/presentation/register_logistics_screen.dart';
import '../../features/auth/presentation/register_supplier_screen.dart';
import '../../features/auth/presentation/splash_screen.dart';
import '../../features/auth/presentation/welcome_screen.dart';
import '../../features/auth/providers/auth_notifier.dart';
import '../../features/auth/providers/auth_state.dart';
import '../../features/marketplace/presentation/admin_banners_screen.dart';
import '../../features/marketplace/presentation/admin_categories_screen.dart';
import '../../features/marketplace/presentation/admin_products_screen.dart';
import '../../features/marketplace/presentation/admin_subcategories_screen.dart';
import '../../features/checkout/presentation/admin_companies_screen.dart';
import '../../features/checkout/presentation/admin_pickup_points_screen.dart';
import '../../features/credit/presentation/credit_account_screen.dart';
import '../../features/delivery_settings/presentation/admin_delivery_settings_screen.dart';
import '../../features/nutrition/presentation/health_questionnaire_screen.dart';
import '../../features/packages/presentation/admin_discount_tiers_screen.dart';
import '../../features/packages/presentation/admin_package_form_screen.dart';
import '../../features/packages/presentation/admin_packages_screen.dart';
import 'role_home_pages.dart';

part 'app_router.gr.dart';

class AuthRouteGuard extends AutoRouteGuard {
  AuthRouteGuard(this._ref);

  final Ref _ref;

  static const _authRoutes = {
    WelcomeRoute.name,
    LoginRoute.name,
    RegisterHubRoute.name,
    RegisterEmployerRoute.name,
    RegisterEmployeeRoute.name,
    RegisterSupplierRoute.name,
    RegisterLogisticsRoute.name,
  };

  static const _adminCmsRoutes = {
    AdminCategoriesRoute.name,
    AdminCategoryFormRoute.name,
    AdminBannersRoute.name,
    AdminBannerFormRoute.name,
    AdminSubcategoriesRoute.name,
    AdminSubcategoryFormRoute.name,
    AdminProductsRoute.name,
    AdminProductFormRoute.name,
    AdminPackagesRoute.name,
    AdminPackageFormRoute.name,
    AdminDiscountTiersRoute.name,
    AdminDeliverySettingsRoute.name,
    AdminCompaniesRoute.name,
    AdminPickupPointsRoute.name,
  };

  static const _employeeRoutes = {
    CreditAccountRoute.name,
    HealthQuestionnaireRoute.name,
  };

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final auth = _ref.read(authNotifierProvider);
    final routeName = resolver.route.name;

    final isSplash = routeName == SplashRoute.name;
    final isPending = routeName == PendingApprovalRoute.name;
    final isAuthRoute = _authRoutes.contains(routeName);

    if (auth is AuthInitial) {
      if (isSplash) {
        resolver.next();
        return;
      }
      resolver.redirectUntil(const SplashRoute());
      return;
    }

    if (auth is AuthLoading) {
      resolver.next();
      return;
    }

    if (auth is AuthPendingApproval) {
      if (isPending) {
        resolver.next();
        return;
      }
      resolver.redirectUntil(const PendingApprovalRoute());
      return;
    }

    if (auth is AuthAuthenticated) {
      final home = _homeRouteForRole(auth.user.role);
      if (isSplash || isAuthRoute || isPending) {
        resolver.redirectUntil(home);
        return;
      }
      if (!_isAllowedRoute(routeName, auth.user.role)) {
        resolver.redirectUntil(home);
        return;
      }
      resolver.next();
      return;
    }

    if (isSplash) {
      resolver.redirectUntil(const WelcomeRoute());
      return;
    }
    if (isPending) {
      resolver.redirectUntil(const WelcomeRoute());
      return;
    }
    if (!isAuthRoute && routeName != WelcomeRoute.name) {
      resolver.redirectUntil(const WelcomeRoute());
      return;
    }
    resolver.next();
  }

  PageRouteInfo<void> _homeRouteForRole(UserRole role) => switch (role) {
        UserRole.admin => const AdminHomeRoute(),
        UserRole.employer => const EmployerHomeRoute(),
        UserRole.employee => const EmployeeHomeRoute(),
        UserRole.supplier => const SupplierHomeRoute(),
        UserRole.logistics => const LogisticsHomeRoute(),
      };

  bool _isAllowedRoute(String routeName, UserRole role) {
    if (routeName == _homeRouteForRole(role).routeName) {
      return true;
    }
    if (role == UserRole.admin && _adminCmsRoutes.contains(routeName)) {
      return true;
    }
    if (role == UserRole.employee && _employeeRoutes.contains(routeName)) {
      return true;
    }
    return false;
  }
}

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  AppRouter(this.ref);

  final Ref ref;

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRouteGuard> get guards => [AuthRouteGuard(ref)];

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, path: '/', initial: true),
        AutoRoute(page: WelcomeRoute.page, path: '/welcome'),
        AutoRoute(page: LoginRoute.page, path: '/login'),
        AutoRoute(page: RegisterHubRoute.page, path: '/register'),
        AutoRoute(page: RegisterEmployerRoute.page, path: '/register/employer'),
        AutoRoute(page: RegisterEmployeeRoute.page, path: '/register/employee'),
        AutoRoute(page: RegisterSupplierRoute.page, path: '/register/supplier'),
        AutoRoute(
          page: RegisterLogisticsRoute.page,
          path: '/register/logistics',
        ),
        AutoRoute(page: PendingApprovalRoute.page, path: '/pending-approval'),
        AutoRoute(page: AdminHomeRoute.page, path: '/admin/home'),
        AutoRoute(
          page: AdminCategoriesRoute.page,
          path: '/admin/marketplace/categories',
        ),
        AutoRoute(
          page: AdminCategoryFormRoute.page,
          path: '/admin/marketplace/categories/form',
        ),
        AutoRoute(
          page: AdminSubcategoriesRoute.page,
          path: '/admin/marketplace/subcategories',
        ),
        AutoRoute(
          page: AdminSubcategoryFormRoute.page,
          path: '/admin/marketplace/subcategories/form',
        ),
        AutoRoute(
          page: AdminProductsRoute.page,
          path: '/admin/marketplace/products',
        ),
        AutoRoute(
          page: AdminProductFormRoute.page,
          path: '/admin/marketplace/products/form',
        ),
        AutoRoute(
          page: AdminBannersRoute.page,
          path: '/admin/marketplace/banners',
        ),
        AutoRoute(
          page: AdminBannerFormRoute.page,
          path: '/admin/marketplace/banners/form',
        ),
        AutoRoute(
          page: AdminPackagesRoute.page,
          path: '/admin/packages',
        ),
        AutoRoute(
          page: AdminPackageFormRoute.page,
          path: '/admin/packages/form',
        ),
        AutoRoute(
          page: AdminDiscountTiersRoute.page,
          path: '/admin/packages/tiers',
        ),
        AutoRoute(
          page: AdminDeliverySettingsRoute.page,
          path: '/admin/delivery-settings',
        ),
        AutoRoute(
          page: AdminCompaniesRoute.page,
          path: '/admin/companies',
        ),
        AutoRoute(
          page: AdminPickupPointsRoute.page,
          path: '/admin/companies/:companyId/pickup-points',
        ),
        AutoRoute(page: EmployerHomeRoute.page, path: '/employer/home'),
        AutoRoute(page: EmployeeHomeRoute.page, path: '/employee/home'),
        AutoRoute(
          page: CreditAccountRoute.page,
          path: '/employee/credit-account',
        ),
        AutoRoute(
          page: HealthQuestionnaireRoute.page,
          path: '/employee/nutrition/questionnaire',
        ),
        AutoRoute(page: SupplierHomeRoute.page, path: '/supplier/home'),
        AutoRoute(page: LogisticsHomeRoute.page, path: '/logistics/home'),
      ];
}

final authRouteRefreshProvider = Provider<ValueNotifier<int>>((ref) {
  final notifier = ValueNotifier(0);
  ref.listen<AuthState>(authNotifierProvider, (_, __) {
    notifier.value++;
  });
  ref.onDispose(notifier.dispose);
  return notifier;
});

final appRouterProvider = Provider<AppRouter>((ref) {
  final router = AppRouter(ref);
  ref.onDispose(router.dispose);
  return router;
});
