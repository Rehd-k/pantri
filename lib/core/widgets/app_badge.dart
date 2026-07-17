import 'package:flutter/material.dart';

import '../theme/app_radius.dart';
import '../theme/app_spacing.dart';

enum AppBadgeVariant { success, warning, info, error, neutral }

/// Compact status badge mapped to [ColorScheme] roles.
class AppBadge extends StatelessWidget {
  const AppBadge({
    super.key,
    required this.label,
    this.variant = AppBadgeVariant.neutral,
  });

  final String label;
  final AppBadgeVariant variant;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final colors = _colorsFor(colorScheme);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.xs,
      ),
      decoration: BoxDecoration(
        color: colors.background,
        borderRadius: AppRadius.borderFull,
      ),
      child: Text(
        label,
        style: textTheme.labelSmall?.copyWith(
          color: colors.foreground,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  ({Color background, Color foreground}) _colorsFor(ColorScheme scheme) {
    return switch (variant) {
      AppBadgeVariant.success => (
          background: scheme.primaryContainer,
          foreground: scheme.onPrimaryContainer,
        ),
      AppBadgeVariant.warning => (
          background: scheme.secondaryContainer,
          foreground: scheme.onSecondaryContainer,
        ),
      AppBadgeVariant.info => (
          background: scheme.tertiaryContainer,
          foreground: scheme.onTertiaryContainer,
        ),
      AppBadgeVariant.error => (
          background: scheme.errorContainer,
          foreground: scheme.onErrorContainer,
        ),
      AppBadgeVariant.neutral => (
          background: scheme.surfaceContainerHighest,
          foreground: scheme.onSurface.withValues(alpha: 0.8),
        ),
    };
  }
}
