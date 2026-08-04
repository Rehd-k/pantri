import 'package:flutter/material.dart';

import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_spacing.dart';

class QuickActionsRow extends StatelessWidget {
  const QuickActionsRow({
    super.key,
    required this.onBuyFood,
    required this.onEventPackage,
    required this.onRecipes,
    required this.onNutrition,
  });

  final VoidCallback onBuyFood;
  final VoidCallback onEventPackage;
  final VoidCallback onRecipes;
  final VoidCallback onNutrition;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Quick Actions',
          style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: AppSpacing.lg),
        Row(
          children: [
            Expanded(
              child: _QuickActionTile(
                icon: Icons.shopping_cart_outlined,
                label: 'Buy Food',
                onTap: onBuyFood,
              ),
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: _QuickActionTile(
                icon: Icons.card_giftcard_outlined,
                label: 'Event Package',
                onTap: onEventPackage,
              ),
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: _QuickActionTile(
                icon: Icons.restaurant_outlined,
                label: 'Recipes',
                onTap: onRecipes,
              ),
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: _QuickActionTile(
                icon: Icons.monitor_heart_outlined,
                label: 'Nutrition',
                onTap: onNutrition,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _QuickActionTile extends StatelessWidget {
  const _QuickActionTile({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Material(
      color: colorScheme.surfaceContainerHighest,
      elevation: 1,
      shadowColor: colorScheme.shadow.withValues(alpha: 0.08),
      borderRadius: AppRadius.borderMd,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadius.borderMd,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppSpacing.lg,
            horizontal: AppSpacing.xs,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 26,
                color: colorScheme.onSurface.withValues(alpha: 0.75),
              ),
              const SizedBox(height: AppSpacing.sm),
              Text(
                label,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: colorScheme.onSurface.withValues(alpha: 0.7),
                  height: 1.2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
