import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/router/app_router.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_button.dart';
import '../../onboarding/data/onboarding_slides.dart';
import '../../onboarding/presentation/widgets/onboarding_illustration.dart';
import 'widgets/auth_scaffold.dart';

@RoutePage()
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            label: 'Create an account',
            expanded: true,
            variant: AppButtonVariant.outlined,
            onPressed: () => context.router.push(const RegisterHubRoute()),
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
