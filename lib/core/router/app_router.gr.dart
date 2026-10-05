// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [EmployeeHomePage]
class EmployeeHomeRoute extends PageRouteInfo<void> {
  const EmployeeHomeRoute({List<PageRouteInfo>? children})
    : super(EmployeeHomeRoute.name, initialChildren: children);

  static const String name = 'EmployeeHomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const EmployeeHomePage();
    },
  );
}

/// generated route for
/// [HealthQuestionnaireScreen]
class HealthQuestionnaireRoute
    extends PageRouteInfo<HealthQuestionnaireRouteArgs> {
  HealthQuestionnaireRoute({
    Key? key,
    bool embeddedInTab = false,
    List<PageRouteInfo>? children,
  }) : super(
         HealthQuestionnaireRoute.name,
         args: HealthQuestionnaireRouteArgs(
           key: key,
           embeddedInTab: embeddedInTab,
         ),
         initialChildren: children,
       );

  static const String name = 'HealthQuestionnaireRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<HealthQuestionnaireRouteArgs>(
        orElse: () => const HealthQuestionnaireRouteArgs(),
      );
      return HealthQuestionnaireScreen(
        key: args.key,
        embeddedInTab: args.embeddedInTab,
      );
    },
  );
}

class HealthQuestionnaireRouteArgs {
  const HealthQuestionnaireRouteArgs({this.key, this.embeddedInTab = false});

  final Key? key;

  final bool embeddedInTab;

  @override
  String toString() {
    return 'HealthQuestionnaireRouteArgs{key: $key, embeddedInTab: $embeddedInTab}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! HealthQuestionnaireRouteArgs) return false;
    return key == other.key && embeddedInTab == other.embeddedInTab;
  }

  @override
  int get hashCode => key.hashCode ^ embeddedInTab.hashCode;
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginScreen();
    },
  );
}

/// generated route for
/// [LogisticsHomePage]
class LogisticsHomeRoute extends PageRouteInfo<void> {
  const LogisticsHomeRoute({List<PageRouteInfo>? children})
    : super(LogisticsHomeRoute.name, initialChildren: children);

  static const String name = 'LogisticsHomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LogisticsHomePage();
    },
  );
}

/// generated route for
/// [OnboardingScreen]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
    : super(OnboardingRoute.name, initialChildren: children);

  static const String name = 'OnboardingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OnboardingScreen();
    },
  );
}

/// generated route for
/// [OrderDetailScreen]
class OrderDetailRoute extends PageRouteInfo<OrderDetailRouteArgs> {
  OrderDetailRoute({
    Key? key,
    required String orderId,
    List<PageRouteInfo>? children,
  }) : super(
         OrderDetailRoute.name,
         args: OrderDetailRouteArgs(key: key, orderId: orderId),
         rawPathParams: {'orderId': orderId},
         initialChildren: children,
       );

  static const String name = 'OrderDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<OrderDetailRouteArgs>(
        orElse: () =>
            OrderDetailRouteArgs(orderId: pathParams.getString('orderId')),
      );
      return OrderDetailScreen(key: args.key, orderId: args.orderId);
    },
  );
}

class OrderDetailRouteArgs {
  const OrderDetailRouteArgs({this.key, required this.orderId});

  final Key? key;

  final String orderId;

  @override
  String toString() {
    return 'OrderDetailRouteArgs{key: $key, orderId: $orderId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OrderDetailRouteArgs) return false;
    return key == other.key && orderId == other.orderId;
  }

  @override
  int get hashCode => key.hashCode ^ orderId.hashCode;
}

/// generated route for
/// [OrdersScreen]
class OrdersRoute extends PageRouteInfo<void> {
  const OrdersRoute({List<PageRouteInfo>? children})
    : super(OrdersRoute.name, initialChildren: children);

  static const String name = 'OrdersRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OrdersScreen();
    },
  );
}

/// generated route for
/// [PackageDetailsScreen]
class PackageDetailsRoute extends PageRouteInfo<PackageDetailsRouteArgs> {
  PackageDetailsRoute({
    Key? key,
    required String packageId,
    List<PageRouteInfo>? children,
  }) : super(
         PackageDetailsRoute.name,
         args: PackageDetailsRouteArgs(key: key, packageId: packageId),
         rawPathParams: {'packageId': packageId},
         initialChildren: children,
       );

  static const String name = 'PackageDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<PackageDetailsRouteArgs>(
        orElse: () => PackageDetailsRouteArgs(
          packageId: pathParams.getString('packageId'),
        ),
      );
      return PackageDetailsScreen(key: args.key, packageId: args.packageId);
    },
  );
}

class PackageDetailsRouteArgs {
  const PackageDetailsRouteArgs({this.key, required this.packageId});

  final Key? key;

  final String packageId;

  @override
  String toString() {
    return 'PackageDetailsRouteArgs{key: $key, packageId: $packageId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PackageDetailsRouteArgs) return false;
    return key == other.key && packageId == other.packageId;
  }

  @override
  int get hashCode => key.hashCode ^ packageId.hashCode;
}

/// generated route for
/// [PackagesScreen]
class PackagesRoute extends PageRouteInfo<void> {
  const PackagesRoute({List<PageRouteInfo>? children})
    : super(PackagesRoute.name, initialChildren: children);

  static const String name = 'PackagesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PackagesScreen();
    },
  );
}

/// generated route for
/// [PendingApprovalScreen]
class PendingApprovalRoute extends PageRouteInfo<void> {
  const PendingApprovalRoute({List<PageRouteInfo>? children})
    : super(PendingApprovalRoute.name, initialChildren: children);

  static const String name = 'PendingApprovalRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PendingApprovalScreen();
    },
  );
}

/// generated route for
/// [PreferenceQuizScreen]
class PreferenceQuizRoute extends PageRouteInfo<void> {
  const PreferenceQuizRoute({List<PageRouteInfo>? children})
    : super(PreferenceQuizRoute.name, initialChildren: children);

  static const String name = 'PreferenceQuizRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PreferenceQuizScreen();
    },
  );
}

/// generated route for
/// [ProductDetailsScreen]
class ProductDetailsRoute extends PageRouteInfo<ProductDetailsRouteArgs> {
  ProductDetailsRoute({
    Key? key,
    required String productId,
    List<PageRouteInfo>? children,
  }) : super(
         ProductDetailsRoute.name,
         args: ProductDetailsRouteArgs(key: key, productId: productId),
         rawPathParams: {'foodId': productId},
         initialChildren: children,
       );

  static const String name = 'ProductDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ProductDetailsRouteArgs>(
        orElse: () =>
            ProductDetailsRouteArgs(productId: pathParams.getString('foodId')),
      );
      return ProductDetailsScreen(key: args.key, productId: args.productId);
    },
  );
}

class ProductDetailsRouteArgs {
  const ProductDetailsRouteArgs({this.key, required this.productId});

  final Key? key;

  final String productId;

  @override
  String toString() {
    return 'ProductDetailsRouteArgs{key: $key, productId: $productId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProductDetailsRouteArgs) return false;
    return key == other.key && productId == other.productId;
  }

  @override
  int get hashCode => key.hashCode ^ productId.hashCode;
}

/// generated route for
/// [RegisterEmployeeScreen]
class RegisterEmployeeRoute extends PageRouteInfo<RegisterEmployeeRouteArgs> {
  RegisterEmployeeRoute({
    Key? key,
    String? inviteCode,
    List<PageRouteInfo>? children,
  }) : super(
         RegisterEmployeeRoute.name,
         args: RegisterEmployeeRouteArgs(key: key, inviteCode: inviteCode),
         initialChildren: children,
       );

  static const String name = 'RegisterEmployeeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RegisterEmployeeRouteArgs>(
        orElse: () => const RegisterEmployeeRouteArgs(),
      );
      return RegisterEmployeeScreen(key: args.key, inviteCode: args.inviteCode);
    },
  );
}

class RegisterEmployeeRouteArgs {
  const RegisterEmployeeRouteArgs({this.key, this.inviteCode});

  final Key? key;

  final String? inviteCode;

  @override
  String toString() {
    return 'RegisterEmployeeRouteArgs{key: $key, inviteCode: $inviteCode}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! RegisterEmployeeRouteArgs) return false;
    return key == other.key && inviteCode == other.inviteCode;
  }

  @override
  int get hashCode => key.hashCode ^ inviteCode.hashCode;
}

/// generated route for
/// [RegisterHubScreen]
class RegisterHubRoute extends PageRouteInfo<void> {
  const RegisterHubRoute({List<PageRouteInfo>? children})
    : super(RegisterHubRoute.name, initialChildren: children);

  static const String name = 'RegisterHubRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RegisterHubScreen();
    },
  );
}

/// generated route for
/// [RegisterLogisticsScreen]
class RegisterLogisticsRoute extends PageRouteInfo<void> {
  const RegisterLogisticsRoute({List<PageRouteInfo>? children})
    : super(RegisterLogisticsRoute.name, initialChildren: children);

  static const String name = 'RegisterLogisticsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RegisterLogisticsScreen();
    },
  );
}

/// generated route for
/// [RegisterSupplierScreen]
class RegisterSupplierRoute extends PageRouteInfo<void> {
  const RegisterSupplierRoute({List<PageRouteInfo>? children})
    : super(RegisterSupplierRoute.name, initialChildren: children);

  static const String name = 'RegisterSupplierRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RegisterSupplierScreen();
    },
  );
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashScreen();
    },
  );
}

/// generated route for
/// [SupplierHomePage]
class SupplierHomeRoute extends PageRouteInfo<void> {
  const SupplierHomeRoute({List<PageRouteInfo>? children})
    : super(SupplierHomeRoute.name, initialChildren: children);

  static const String name = 'SupplierHomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SupplierHomePage();
    },
  );
}

/// generated route for
/// [WelcomeScreen]
class WelcomeRoute extends PageRouteInfo<void> {
  const WelcomeRoute({List<PageRouteInfo>? children})
    : super(WelcomeRoute.name, initialChildren: children);

  static const String name = 'WelcomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const WelcomeScreen();
    },
  );
}
