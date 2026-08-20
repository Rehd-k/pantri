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
