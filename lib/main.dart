import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';
import 'features/auth/providers/auth_notifier.dart';
import 'features/auth/providers/auth_state.dart';
import 'features/marketplace/presentation/product_details_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerStatefulWidget {
  const MainApp({super.key});

  @override
  ConsumerState<MainApp> createState() => _MainAppState();
}

class _MainAppState extends ConsumerState<MainApp> {
  final _appLinks = AppLinks();
  StreamSubscription<Uri>? _linkSubscription;
  String? _pendingProductId;

  @override
  void initState() {
    super.initState();
    _listenForLinks();
  }

  Future<void> _listenForLinks() async {
    final initial = await _appLinks.getInitialLink();
    if (initial != null) _openLink(initial);
    _linkSubscription = _appLinks.uriLinkStream.listen(_openLink);
  }

  void _openLink(Uri uri) {
    final productId = switch ((uri.scheme, uri.host, uri.pathSegments)) {
      ('https', 'pantri.app', ['products', final id]) => id,
      ('pantri', 'products', [final id]) => id,
      _ => null,
    };
    if (productId == null || productId.isEmpty) return;
    _pendingProductId = productId;
    _openPendingProduct();
  }

  void _openPendingProduct() {
    final productId = _pendingProductId;
    if (productId == null ||
        ref.read(authNotifierProvider) is! AuthAuthenticated) {
      return;
    }
    _pendingProductId = null;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final navigator = ref.read(appRouterProvider).navigatorKey.currentState;
      navigator?.push(
        MaterialPageRoute<void>(
          builder: (_) => ProductDetailsScreen(productId: productId),
        ),
      );
    });
  }

  @override
  void dispose() {
    _linkSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AuthState>(authNotifierProvider, (_, next) {
      if (next is AuthAuthenticated) _openPendingProduct();
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
