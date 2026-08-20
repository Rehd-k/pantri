import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/app_spacing.dart';
import '../../onboarding/providers/first_launch_provider.dart';
import '../providers/auth_notifier.dart';
import '../providers/auth_state.dart';

/// Bootstraps session from secure storage then redirects via AutoRoute guards.
@RoutePage()
class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _bootstrap());
  }

  Future<void> _bootstrap() async {
    await ref.read(firstLaunchProvider.notifier).load();
    if (!mounted) return;
    await ref.read(authNotifierProvider.notifier).bootstrap();
    if (!mounted) return;

    final auth = ref.read(authNotifierProvider);
    final firstLaunch = ref.read(firstLaunchProvider);
    final alreadyInSession =
        auth is AuthAuthenticated || auth is AuthPendingApproval;
    if (alreadyInSession &&
        firstLaunch is FirstLaunchLoaded &&
        !firstLaunch.hasSeenOnboarding) {
      await ref.read(firstLaunchProvider.notifier).markSeen();
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Pantri',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                color: colorScheme.primary,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: AppSpacing.xl),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
