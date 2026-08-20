import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_button.dart';
import '../providers/auth_notifier.dart';
import '../providers/auth_state.dart';
import 'widgets/auth_scaffold.dart';

@RoutePage()
class PendingApprovalScreen extends ConsumerWidget {
  const PendingApprovalScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final authState = ref.watch(authNotifierProvider);
    final message = authState is AuthPendingApproval
        ? (authState.message ?? 'Your account is awaiting admin approval.')
        : 'Your account is awaiting admin approval.';

    return AuthScaffold(
      showBack: false,
      footer: AppButton(
        label: 'Back to welcome',
        expanded: true,
        variant: AppButtonVariant.outlined,
        onPressed: () => ref.read(authNotifierProvider.notifier).logout(),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
        child: Column(
          children: [
            const Spacer(),
            Container(
              width: 112,
              height: 112,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colorScheme.surfaceContainerHighest,
                boxShadow: [
                  BoxShadow(
                    color: colorScheme.secondary.withValues(alpha: 0.28),
                    blurRadius: 28,
                    spreadRadius: 4,
                  ),
                ],
              ),
              child: Icon(
                Icons.hourglass_top_rounded,
                size: 48,
                color: colorScheme.secondary,
              ),
            ),
            const SizedBox(height: AppSpacing.xxl),
            Text(
              'Pending approval',
              textAlign: TextAlign.center,
              style: textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.w800,
                letterSpacing: -0.4,
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            Text(
              message,
              textAlign: TextAlign.center,
              style: textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurface.withValues(alpha: 0.72),
                height: 1.45,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
