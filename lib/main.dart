import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/analytics/analytics_service.dart';
import 'core/router/app_router.dart';
import 'core/router/deep_link.dart';
import 'core/theme/app_theme.dart';
import 'features/auth/domain/user_role.dart';
import 'features/shell/employee_bottom_nav.dart';
import 'features/auth/providers/auth_notifier.dart';
import 'features/auth/providers/auth_state.dart';
import 'features/home/providers/home_providers.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerStatefulWidget {
  const MainApp({super.key});

  @override
  ConsumerState<MainApp> createState() => _MainAppState();
}

class _MainAppState extends ConsumerState<MainApp> with WidgetsBindingObserver {
  final _appLinks = AppLinks();
  StreamSubscription<Uri>? _linkSubscription;
  DeepLink? _pendingLink;
  String? _lastUri;
  DateTime? _lastUriAt;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(analyticsServiceProvider).startSession();
    });
    _listenForLinks();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final analytics = ref.read(analyticsServiceProvider);
    if (state == AppLifecycleState.resumed) {
      analytics.startSession();
    } else if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.detached) {
      analytics.endSession();
    }
  }

  Future<void> _listenForLinks() async {
    final initial = await _appLinks.getInitialLink();
    if (initial != null) _onLink(initial);
    _linkSubscription = _appLinks.uriLinkStream.listen(_onLink);
  }

  void _onLink(Uri uri) {
    final serialized = uri.toString();
    final now = DateTime.now();
    if (_lastUri == serialized &&
        _lastUriAt != null &&
        now.difference(_lastUriAt!) < const Duration(seconds: 1)) {
      return;
    }
    _lastUri = serialized;
    _lastUriAt = now;

    final link = parseDeepLink(uri);
    if (link == null || link is PromoDeepLink) return;
    if (link is TabDeepLink) {
      ref.read(requestedEmployeeTabProvider.notifier).request(link.tabIndex);
    }
    _pendingLink = link;
    _tryApplyPending();
  }

  void _tryApplyPending() {
    final link = _pendingLink;
    if (link == null) return;
    final auth = ref.read(authNotifierProvider);
    if (auth is AuthInitial || auth is AuthLoading) return;

    if (link is InviteDeepLink) {
      _pendingLink = null;
      if (auth is AuthAuthenticated || auth is AuthPendingApproval) return;
      _schedule(() => openInviteLink(ref.read(appRouterProvider), link.code));
      return;
    }

    if (auth is! AuthAuthenticated) return;
    _pendingLink = null;
    if (auth.user.role != UserRole.employee) {
      ref.read(requestedEmployeeTabProvider.notifier).clear();
      return;
    }
    _schedule(() => openEmployeeDeepLink(ref, link));
  }

  void _schedule(VoidCallback action) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      action();
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _linkSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AuthState>(authNotifierProvider, (previous, next) {
      if (previous is AuthAuthenticated && next is! AuthAuthenticated) {
        ref.read(employeeTabIndexProvider.notifier).setIndex(EmployeeTabs.home);
        ref.read(requestedEmployeeTabProvider.notifier).clear();
      }
      _tryApplyPending();
    });
    final router = ref.watch(appRouterProvider);
    final authRefresh = ref.watch(authRouteRefreshProvider);

    return MaterialApp.router(
      title: 'Pantri',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.system,
      routerConfig: router.config(reevaluateListenable: authRefresh),
    );
  }
}
