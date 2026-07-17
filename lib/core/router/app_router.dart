import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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
import '../../features/shell/role_home_shell.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final goRouterProvider = Provider<GoRouter>((ref) {
  final refresh = ValueNotifier<int>(0);
  ref.listen<AuthState>(authNotifierProvider, (_, __) {
    refresh.value++;
  });
  ref.onDispose(refresh.dispose);

  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    refreshListenable: refresh,
    redirect: (context, state) {
      final auth = ref.read(authNotifierProvider);
      final location = state.matchedLocation;
      final isSplash = location == '/';
      final isPending = location == '/pending-approval';
      final isAuthRoute = location == '/welcome' ||
          location == '/login' ||
          location.startsWith('/register');

      if (auth is AuthInitial) {
        return isSplash ? null : '/';
      }

      // Stay on the current screen while login/register/bootstrap requests run.
      if (auth is AuthLoading) {
        return null;
      }

      if (auth is AuthPendingApproval) {
        return isPending ? null : '/pending-approval';
      }

      if (auth is AuthAuthenticated) {
        final home = _homeForRole(auth.user.role);
        if (isSplash || isAuthRoute || isPending) {
          return home;
        }
        if (!_isAllowedHome(location, auth.user.role)) {
          return home;
        }
        return null;
      }

      // Unauthenticated or recoverable error
      if (isSplash) return '/welcome';
      if (isPending) return '/welcome';
      if (!isAuthRoute && location != '/welcome') return '/welcome';
      return null;
    },
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/welcome',
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterHubScreen(),
      ),
      GoRoute(
        path: '/register/employer',
        builder: (context, state) => const RegisterEmployerScreen(),
      ),
      GoRoute(
        path: '/register/employee',
        builder: (context, state) => const RegisterEmployeeScreen(),
      ),
      GoRoute(
        path: '/register/supplier',
        builder: (context, state) => const RegisterSupplierScreen(),
      ),
      GoRoute(
        path: '/register/logistics',
        builder: (context, state) => const RegisterLogisticsScreen(),
      ),
      GoRoute(
        path: '/pending-approval',
        builder: (context, state) => const PendingApprovalScreen(),
      ),
      GoRoute(
        path: '/admin/home',
        builder: (context, state) => const AdminHomeScreen(),
      ),
      GoRoute(
        path: '/employer/home',
        builder: (context, state) =>
            const RoleHomeShell(role: UserRole.employer),
      ),
      GoRoute(
        path: '/employee/home',
        builder: (context, state) =>
            const RoleHomeShell(role: UserRole.employee),
      ),
      GoRoute(
        path: '/supplier/home',
        builder: (context, state) =>
            const RoleHomeShell(role: UserRole.supplier),
      ),
      GoRoute(
        path: '/logistics/home',
        builder: (context, state) =>
            const RoleHomeShell(role: UserRole.logistics),
      ),
    ],
  );
});

String _homeForRole(UserRole role) => switch (role) {
      UserRole.admin => '/admin/home',
      UserRole.employer => '/employer/home',
      UserRole.employee => '/employee/home',
      UserRole.supplier => '/supplier/home',
      UserRole.logistics => '/logistics/home',
    };

bool _isAllowedHome(String location, UserRole role) {
  return location == _homeForRole(role);
}
