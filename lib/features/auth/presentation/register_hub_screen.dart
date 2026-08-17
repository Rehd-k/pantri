import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/router/app_router.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_card.dart';

@RoutePage()
class RegisterHubScreen extends StatelessWidget {
  const RegisterHubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Create account')),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.xl),
        children: [
          Text('Choose your account type', style: textTheme.titleMedium),
          const SizedBox(height: AppSpacing.lg),
          _RoleCard(
            title: 'Employee',
            subtitle: 'Join with your company invite code.',
            icon: Icons.badge_outlined,
            onTap: () => context.router.push(const RegisterEmployeeRoute()),
          ),
          const SizedBox(height: AppSpacing.md),
          _RoleCard(
            title: 'Supplier',
            subtitle: 'Sell wholesale goods (requires admin approval).',
            icon: Icons.inventory_2_outlined,
            onTap: () => context.router.push(const RegisterSupplierRoute()),
          ),
          const SizedBox(height: AppSpacing.md),
          _RoleCard(
            title: 'Logistics',
            subtitle: 'Deliver orders (requires admin approval).',
            icon: Icons.local_shipping_outlined,
            onTap: () => context.router.push(const RegisterLogisticsRoute()),
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
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return AppCard(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon, color: colorScheme.primary, size: 32),
          const SizedBox(width: AppSpacing.lg),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: AppSpacing.xs),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
          Icon(Icons.chevron_right, color: colorScheme.onSurfaceVariant),
        ],
      ),
    );
  }
}
