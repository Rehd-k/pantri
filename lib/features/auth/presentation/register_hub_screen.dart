import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/router/app_router.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_card.dart';
import 'widgets/auth_scaffold.dart';

@RoutePage()
class RegisterHubScreen extends StatelessWidget {
  const RegisterHubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(
          AppSpacing.xl,
          AppSpacing.md,
          AppSpacing.xl,
          AppSpacing.xl,
        ),
        children: [
          const AuthScreenHeader(
            title: 'Create your account',
            subtitle:
                'Employees join with a company invite. Suppliers and logistics partners need a short admin review.',
          ),
          const SizedBox(height: AppSpacing.xxl),
          _RoleCard(
            title: 'Employee',
            subtitle:
                'Join with your company invite code and shop on payroll credit.',
            icon: Icons.badge_rounded,
            featured: true,
            onTap: () => context.router.push(const RegisterEmployeeRoute()),
          ),
          const SizedBox(height: AppSpacing.md),
          _RoleCard(
            title: 'Supplier',
            subtitle: 'List wholesale goods. Requires admin approval.',
            icon: Icons.inventory_2_rounded,
            onTap: () => context.router.push(const RegisterSupplierRoute()),
          ),
          const SizedBox(height: AppSpacing.md),
          _RoleCard(
            title: 'Logistics',
            subtitle:
                'Deliver orders to company hubs. Requires admin approval.',
            icon: Icons.local_shipping_rounded,
            onTap: () => context.router.push(const RegisterLogisticsRoute()),
          ),
          const SizedBox(height: AppSpacing.xl),
          AppButton(
            label: 'Already have an account? Log in',
            expanded: true,
            variant: AppButtonVariant.text,
            onPressed: () => context.navigateTo(const LoginRoute()),
          ),
        ],
      ),
    );
  }
}

class _RoleCard extends StatelessWidget {
  const _RoleCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
    this.featured = false,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;
  final bool featured;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final orbColor = featured
        ? colorScheme.primary
        : colorScheme.primaryContainer;
    final iconColor = featured
        ? colorScheme.onPrimary
        : colorScheme.onPrimaryContainer;

    return DecoratedBox(
      decoration: featured
          ? BoxDecoration(
              borderRadius: AppRadius.borderLg,
              border: Border.all(
                color: colorScheme.primary.withValues(alpha: 0.35),
              ),
            )
          : const BoxDecoration(),
      child: AppCard(
        onTap: onTap,
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Row(
          children: [
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                color: orbColor,
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: iconColor, size: 26),
            ),
            const SizedBox(width: AppSpacing.lg),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Text(title, style: textTheme.titleMedium),
                      ),
                      if (featured) ...[
                        const SizedBox(width: AppSpacing.sm),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: colorScheme.secondaryContainer,
                            borderRadius: AppRadius.borderFull,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: AppSpacing.sm,
                              vertical: 2,
                            ),
                            child: Text(
                              'Most common',
                              style: textTheme.labelSmall?.copyWith(
                                color: colorScheme.onSecondaryContainer,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  Text(
                    subtitle,
                    style: textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                      height: 1.35,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: AppSpacing.sm),
            Icon(
              Icons.chevron_right_rounded,
              color: colorScheme.onSurfaceVariant,
            ),
          ],
        ),
      ),
    );
  }
}
