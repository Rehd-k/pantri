// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AdminBannerFormScreen]
class AdminBannerFormRoute extends PageRouteInfo<AdminBannerFormRouteArgs> {
  AdminBannerFormRoute({
    Key? key,
    String? bannerId,
    List<PageRouteInfo>? children,
  }) : super(
         AdminBannerFormRoute.name,
         args: AdminBannerFormRouteArgs(key: key, bannerId: bannerId),
         initialChildren: children,
       );

  static const String name = 'AdminBannerFormRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminBannerFormRouteArgs>(
        orElse: () => const AdminBannerFormRouteArgs(),
      );
      return AdminBannerFormScreen(key: args.key, bannerId: args.bannerId);
    },
  );
}

class AdminBannerFormRouteArgs {
  const AdminBannerFormRouteArgs({this.key, this.bannerId});

  final Key? key;

  final String? bannerId;

  @override
  String toString() {
    return 'AdminBannerFormRouteArgs{key: $key, bannerId: $bannerId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AdminBannerFormRouteArgs) return false;
    return key == other.key && bannerId == other.bannerId;
  }

  @override
  int get hashCode => key.hashCode ^ bannerId.hashCode;
}

/// generated route for
/// [AdminBannersScreen]
class AdminBannersRoute extends PageRouteInfo<void> {
  const AdminBannersRoute({List<PageRouteInfo>? children})
    : super(AdminBannersRoute.name, initialChildren: children);

  static const String name = 'AdminBannersRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AdminBannersScreen();
    },
  );
}

/// generated route for
/// [AdminCategoriesScreen]
class AdminCategoriesRoute extends PageRouteInfo<void> {
  const AdminCategoriesRoute({List<PageRouteInfo>? children})
    : super(AdminCategoriesRoute.name, initialChildren: children);

  static const String name = 'AdminCategoriesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AdminCategoriesScreen();
    },
  );
}

/// generated route for
/// [AdminCategoryFormScreen]
class AdminCategoryFormRoute extends PageRouteInfo<AdminCategoryFormRouteArgs> {
  AdminCategoryFormRoute({
    Key? key,
    String? categoryId,
    List<PageRouteInfo>? children,
  }) : super(
         AdminCategoryFormRoute.name,
         args: AdminCategoryFormRouteArgs(key: key, categoryId: categoryId),
         initialChildren: children,
       );

  static const String name = 'AdminCategoryFormRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminCategoryFormRouteArgs>(
        orElse: () => const AdminCategoryFormRouteArgs(),
      );
      return AdminCategoryFormScreen(
        key: args.key,
        categoryId: args.categoryId,
      );
    },
  );
}

class AdminCategoryFormRouteArgs {
  const AdminCategoryFormRouteArgs({this.key, this.categoryId});

  final Key? key;

  final String? categoryId;

  @override
  String toString() {
    return 'AdminCategoryFormRouteArgs{key: $key, categoryId: $categoryId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AdminCategoryFormRouteArgs) return false;
    return key == other.key && categoryId == other.categoryId;
  }

  @override
  int get hashCode => key.hashCode ^ categoryId.hashCode;
}

/// generated route for
/// [AdminCompaniesScreen]
class AdminCompaniesRoute extends PageRouteInfo<void> {
  const AdminCompaniesRoute({List<PageRouteInfo>? children})
    : super(AdminCompaniesRoute.name, initialChildren: children);

  static const String name = 'AdminCompaniesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AdminCompaniesScreen();
    },
  );
}

/// generated route for
/// [AdminDeliverySettingsScreen]
class AdminDeliverySettingsRoute extends PageRouteInfo<void> {
  const AdminDeliverySettingsRoute({List<PageRouteInfo>? children})
    : super(AdminDeliverySettingsRoute.name, initialChildren: children);

  static const String name = 'AdminDeliverySettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AdminDeliverySettingsScreen();
    },
  );
}

/// generated route for
/// [AdminDiscountTiersScreen]
class AdminDiscountTiersRoute extends PageRouteInfo<void> {
  const AdminDiscountTiersRoute({List<PageRouteInfo>? children})
    : super(AdminDiscountTiersRoute.name, initialChildren: children);

  static const String name = 'AdminDiscountTiersRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AdminDiscountTiersScreen();
    },
  );
}

/// generated route for
/// [AdminHomeScreen]
class AdminHomeRoute extends PageRouteInfo<void> {
  const AdminHomeRoute({List<PageRouteInfo>? children})
    : super(AdminHomeRoute.name, initialChildren: children);

  static const String name = 'AdminHomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AdminHomeScreen();
    },
  );
}

/// generated route for
/// [AdminPackageFormScreen]
class AdminPackageFormRoute extends PageRouteInfo<AdminPackageFormRouteArgs> {
  AdminPackageFormRoute({
    Key? key,
    String? packageId,
    List<PageRouteInfo>? children,
  }) : super(
         AdminPackageFormRoute.name,
         args: AdminPackageFormRouteArgs(key: key, packageId: packageId),
         initialChildren: children,
       );

  static const String name = 'AdminPackageFormRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminPackageFormRouteArgs>(
        orElse: () => const AdminPackageFormRouteArgs(),
      );
      return AdminPackageFormScreen(key: args.key, packageId: args.packageId);
    },
  );
}

class AdminPackageFormRouteArgs {
  const AdminPackageFormRouteArgs({this.key, this.packageId});

  final Key? key;

  final String? packageId;

  @override
  String toString() {
    return 'AdminPackageFormRouteArgs{key: $key, packageId: $packageId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AdminPackageFormRouteArgs) return false;
    return key == other.key && packageId == other.packageId;
  }

  @override
  int get hashCode => key.hashCode ^ packageId.hashCode;
}

/// generated route for
/// [AdminPackagesScreen]
class AdminPackagesRoute extends PageRouteInfo<void> {
  const AdminPackagesRoute({List<PageRouteInfo>? children})
    : super(AdminPackagesRoute.name, initialChildren: children);

  static const String name = 'AdminPackagesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AdminPackagesScreen();
    },
  );
}

/// generated route for
/// [AdminPickupPointsScreen]
class AdminPickupPointsRoute extends PageRouteInfo<AdminPickupPointsRouteArgs> {
  AdminPickupPointsRoute({
    Key? key,
    required String companyId,
    required String companyName,
    List<PageRouteInfo>? children,
  }) : super(
         AdminPickupPointsRoute.name,
         args: AdminPickupPointsRouteArgs(
           key: key,
           companyId: companyId,
           companyName: companyName,
         ),
         initialChildren: children,
       );

  static const String name = 'AdminPickupPointsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminPickupPointsRouteArgs>();
      return AdminPickupPointsScreen(
        key: args.key,
        companyId: args.companyId,
        companyName: args.companyName,
      );
    },
  );
}

class AdminPickupPointsRouteArgs {
  const AdminPickupPointsRouteArgs({
    this.key,
    required this.companyId,
    required this.companyName,
  });

  final Key? key;

  final String companyId;

  final String companyName;

  @override
  String toString() {
    return 'AdminPickupPointsRouteArgs{key: $key, companyId: $companyId, companyName: $companyName}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AdminPickupPointsRouteArgs) return false;
    return key == other.key &&
        companyId == other.companyId &&
        companyName == other.companyName;
  }

  @override
  int get hashCode => key.hashCode ^ companyId.hashCode ^ companyName.hashCode;
}

/// generated route for
/// [AdminProductFormScreen]
class AdminProductFormRoute extends PageRouteInfo<AdminProductFormRouteArgs> {
  AdminProductFormRoute({
    Key? key,
    String? productId,
    List<PageRouteInfo>? children,
  }) : super(
         AdminProductFormRoute.name,
         args: AdminProductFormRouteArgs(key: key, productId: productId),
         initialChildren: children,
       );

  static const String name = 'AdminProductFormRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminProductFormRouteArgs>(
        orElse: () => const AdminProductFormRouteArgs(),
      );
      return AdminProductFormScreen(key: args.key, productId: args.productId);
    },
  );
}

class AdminProductFormRouteArgs {
  const AdminProductFormRouteArgs({this.key, this.productId});

  final Key? key;

  final String? productId;

  @override
  String toString() {
    return 'AdminProductFormRouteArgs{key: $key, productId: $productId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AdminProductFormRouteArgs) return false;
    return key == other.key && productId == other.productId;
  }

  @override
  int get hashCode => key.hashCode ^ productId.hashCode;
}

/// generated route for
/// [AdminProductsScreen]
class AdminProductsRoute extends PageRouteInfo<void> {
  const AdminProductsRoute({List<PageRouteInfo>? children})
    : super(AdminProductsRoute.name, initialChildren: children);

  static const String name = 'AdminProductsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AdminProductsScreen();
    },
  );
}

/// generated route for
/// [AdminSubcategoriesScreen]
class AdminSubcategoriesRoute
    extends PageRouteInfo<AdminSubcategoriesRouteArgs> {
  AdminSubcategoriesRoute({
    Key? key,
    String? categoryId,
    List<PageRouteInfo>? children,
  }) : super(
         AdminSubcategoriesRoute.name,
         args: AdminSubcategoriesRouteArgs(key: key, categoryId: categoryId),
         initialChildren: children,
       );

  static const String name = 'AdminSubcategoriesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminSubcategoriesRouteArgs>(
        orElse: () => const AdminSubcategoriesRouteArgs(),
      );
      return AdminSubcategoriesScreen(
        key: args.key,
        categoryId: args.categoryId,
      );
    },
  );
}

class AdminSubcategoriesRouteArgs {
  const AdminSubcategoriesRouteArgs({this.key, this.categoryId});

  final Key? key;

  final String? categoryId;

  @override
  String toString() {
    return 'AdminSubcategoriesRouteArgs{key: $key, categoryId: $categoryId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AdminSubcategoriesRouteArgs) return false;
    return key == other.key && categoryId == other.categoryId;
  }

  @override
  int get hashCode => key.hashCode ^ categoryId.hashCode;
}

/// generated route for
/// [AdminSubcategoryFormScreen]
class AdminSubcategoryFormRoute
    extends PageRouteInfo<AdminSubcategoryFormRouteArgs> {
  AdminSubcategoryFormRoute({
    Key? key,
    String? categoryId,
    String? subcategoryId,
    List<PageRouteInfo>? children,
  }) : super(
         AdminSubcategoryFormRoute.name,
         args: AdminSubcategoryFormRouteArgs(
           key: key,
           categoryId: categoryId,
           subcategoryId: subcategoryId,
         ),
         initialChildren: children,
       );

  static const String name = 'AdminSubcategoryFormRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminSubcategoryFormRouteArgs>(
        orElse: () => const AdminSubcategoryFormRouteArgs(),
      );
      return AdminSubcategoryFormScreen(
        key: args.key,
        categoryId: args.categoryId,
        subcategoryId: args.subcategoryId,
      );
    },
  );
}

class AdminSubcategoryFormRouteArgs {
  const AdminSubcategoryFormRouteArgs({
    this.key,
    this.categoryId,
    this.subcategoryId,
  });

  final Key? key;

  final String? categoryId;

  final String? subcategoryId;

  @override
  String toString() {
    return 'AdminSubcategoryFormRouteArgs{key: $key, categoryId: $categoryId, subcategoryId: $subcategoryId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AdminSubcategoryFormRouteArgs) return false;
    return key == other.key &&
        categoryId == other.categoryId &&
        subcategoryId == other.subcategoryId;
  }

  @override
  int get hashCode =>
      key.hashCode ^ categoryId.hashCode ^ subcategoryId.hashCode;
}

/// generated route for
/// [CreditAccountScreen]
class CreditAccountRoute extends PageRouteInfo<void> {
  const CreditAccountRoute({List<PageRouteInfo>? children})
    : super(CreditAccountRoute.name, initialChildren: children);

  static const String name = 'CreditAccountRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CreditAccountScreen();
    },
  );
}

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
/// [EmployerHomePage]
class EmployerHomeRoute extends PageRouteInfo<void> {
  const EmployerHomeRoute({List<PageRouteInfo>? children})
    : super(EmployerHomeRoute.name, initialChildren: children);

  static const String name = 'EmployerHomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const EmployerHomePage();
    },
  );
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
/// [RegisterEmployeeScreen]
class RegisterEmployeeRoute extends PageRouteInfo<void> {
  const RegisterEmployeeRoute({List<PageRouteInfo>? children})
    : super(RegisterEmployeeRoute.name, initialChildren: children);

  static const String name = 'RegisterEmployeeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RegisterEmployeeScreen();
    },
  );
}

/// generated route for
/// [RegisterEmployerScreen]
class RegisterEmployerRoute extends PageRouteInfo<void> {
  const RegisterEmployerRoute({List<PageRouteInfo>? children})
    : super(RegisterEmployerRoute.name, initialChildren: children);

  static const String name = 'RegisterEmployerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RegisterEmployerScreen();
    },
  );
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
