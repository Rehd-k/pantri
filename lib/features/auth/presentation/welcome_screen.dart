import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/router/app_router.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_button.dart';
import '../../onboarding/data/onboarding_slides.dart';
import '../../onboarding/presentation/widgets/onboarding_illustration.dart';
import '../../onboarding/providers/first_launch_provider.dart';
import 'widgets/auth_scaffold.dart';

@RoutePage()
class WelcomeScreen extends ConsumerWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firstLaunch = ref.watch(firstLaunchProvider);
    final quizFinished =
        firstLaunch is FirstLaunchLoaded && firstLaunch.hasFinishedQuiz;

    return AuthScaffold(
      showBack: false,
      footer: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppButton(
            label: 'Log in',
            expanded: true,
            onPressed: () => context.router.push(const LoginRoute()),
          ),
          const SizedBox(height: AppSpacing.md),
          AppButton(
            label: quizFinished ? 'Create an account' : 'Get started',
            expanded: true,
            variant: AppButtonVariant.outlined,
            onPressed: () => context.router.push(
              quizFinished
                  ? const RegisterHubRoute()
                  : const PreferenceQuizRoute(),
            ),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
        child: Column(
          children: [
            const Expanded(
              child: OnboardingIllustration(
                kind: OnboardingIllustrationKind.creditShop,
                accent: OnboardingAccent.primary,
                progress: 0.45,
              ),
            ),
            Text(
              'Welcome to Pantri',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.w800,
                letterSpacing: -0.4,
                height: 1.15,
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            Text(
              'Payroll-backed grocery for Nigerian workplaces. Shop now, repay from salary.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(
                  context,
                ).colorScheme.onSurface.withValues(alpha: 0.72),
                height: 1.45,
              ),
            ),
            const SizedBox(height: AppSpacing.xxl),
          ],
        ),
      ),
    );
  }
}
