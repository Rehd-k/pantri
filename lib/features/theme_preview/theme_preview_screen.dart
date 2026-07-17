import 'package:flutter/material.dart';

import '../../core/theme/app_spacing.dart';
import '../../core/widgets/app_badge.dart';
import '../../core/widgets/app_button.dart';
import '../../core/widgets/app_card.dart';
import '../../core/widgets/app_empty_state.dart';
import '../../core/widgets/app_text_field.dart';

/// Temporary gallery to validate Pantri design tokens and atoms.
class ThemePreviewScreen extends StatelessWidget {
  const ThemePreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Pantri Design System')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        children: [
          Text('Color scheme', style: textTheme.titleLarge),
          const SizedBox(height: AppSpacing.md),
          Wrap(
            spacing: AppSpacing.sm,
            runSpacing: AppSpacing.sm,
            children: [
              _Swatch(label: 'Primary', color: colorScheme.primary),
              _Swatch(label: 'Secondary', color: colorScheme.secondary),
              _Swatch(label: 'Tertiary', color: colorScheme.tertiary),
              _Swatch(label: 'Error', color: colorScheme.error),
              _Swatch(label: 'Surface', color: colorScheme.surface),
              _Swatch(
                label: 'Container',
                color: colorScheme.surfaceContainerHighest,
              ),
              _Swatch(label: 'Outline', color: colorScheme.outline),
            ],
          ),
          const SizedBox(height: AppSpacing.xxl),
          Text('Typography', style: textTheme.titleLarge),
          const SizedBox(height: AppSpacing.md),
          Text('Display Large', style: textTheme.displayLarge),
          Text('Headline Medium', style: textTheme.headlineMedium),
          Text('Title Large', style: textTheme.titleLarge),
          Text('Body Large — marketplace body copy', style: textTheme.bodyLarge),
          Text('Body Medium — supporting detail', style: textTheme.bodyMedium),
          Text('Label Small — captions & meta', style: textTheme.labelSmall),
          const SizedBox(height: AppSpacing.xxl),
          Text('Buttons', style: textTheme.titleLarge),
          const SizedBox(height: AppSpacing.md),
          Wrap(
            spacing: AppSpacing.sm,
            runSpacing: AppSpacing.sm,
            children: [
              AppButton(label: 'Filled', onPressed: () {}),
              AppButton(
                label: 'Outlined',
                variant: AppButtonVariant.outlined,
                onPressed: () {},
              ),
              AppButton(
                label: 'Text',
                variant: AppButtonVariant.text,
                onPressed: () {},
              ),
              AppButton(
                label: 'Destructive',
                variant: AppButtonVariant.destructive,
                onPressed: () {},
              ),
              const AppButton(
                label: 'Loading',
                loading: true,
                onPressed: null,
              ),
              AppButton(
                label: 'Compact',
                size: AppButtonSize.compact,
                icon: Icons.shopping_bag_outlined,
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.xxl),
          Text('Text field', style: textTheme.titleLarge),
          const SizedBox(height: AppSpacing.md),
          const AppTextField(
            label: 'Email',
            hint: 'you@company.com',
            keyboardType: TextInputType.emailAddress,
            prefixIcon: Icon(Icons.mail_outline),
          ),
          const SizedBox(height: AppSpacing.md),
          const AppTextField(
            label: 'Password',
            obscureText: true,
            errorText: 'Password must be at least 8 characters',
            prefixIcon: Icon(Icons.lock_outline),
          ),
          const SizedBox(height: AppSpacing.xxl),
          Text('Card', style: textTheme.titleLarge),
          const SizedBox(height: AppSpacing.md),
          AppCard(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Family Package', style: textTheme.titleMedium),
                const SizedBox(height: AppSpacing.xs),
                Text(
                  'Rice, oil, and essentials — split across 5 payroll cycles.',
                  style: textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.xxl),
          Text('Badges', style: textTheme.titleLarge),
          const SizedBox(height: AppSpacing.md),
          const Wrap(
            spacing: AppSpacing.sm,
            runSpacing: AppSpacing.sm,
            children: [
              AppBadge(label: 'Active', variant: AppBadgeVariant.success),
              AppBadge(label: 'Pending', variant: AppBadgeVariant.warning),
              AppBadge(label: 'Info', variant: AppBadgeVariant.info),
              AppBadge(label: 'Defaulted', variant: AppBadgeVariant.error),
              AppBadge(label: 'Neutral', variant: AppBadgeVariant.neutral),
            ],
          ),
          const SizedBox(height: AppSpacing.xxl),
          Text('Empty state', style: textTheme.titleLarge),
          const SizedBox(height: AppSpacing.md),
          AppEmptyState(
            icon: Icons.inventory_2_outlined,
            title: 'No orders yet',
            message:
                'When your company approves a payroll deduction, orders show up here.',
            actionLabel: 'Browse packages',
            onAction: () {},
          ),
          const SizedBox(height: AppSpacing.xxxl),
        ],
      ),
    );
  }
}

class _Swatch extends StatelessWidget {
  const _Swatch({required this.label, required this.color});

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final onSurface = Theme.of(context).colorScheme.onSurface;
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      width: 88,
      child: Column(
        children: [
          Container(
            height: 48,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: onSurface.withValues(alpha: 0.12)),
            ),
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            label,
            textAlign: TextAlign.center,
            style: textTheme.labelSmall,
          ),
        ],
      ),
    );
  }
}
