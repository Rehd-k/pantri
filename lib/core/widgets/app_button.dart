import 'package:flutter/material.dart';

import '../theme/app_spacing.dart';

enum AppButtonVariant { filled, outlined, text, destructive }

enum AppButtonSize { compact, standard }

/// Theme-aware button for Pantri CTAs.
class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.label,
    this.onPressed,
    this.variant = AppButtonVariant.filled,
    this.size = AppButtonSize.standard,
    this.loading = false,
    this.icon,
    this.expanded = false,
  });

  final String label;
  final VoidCallback? onPressed;
  final AppButtonVariant variant;
  final AppButtonSize size;
  final bool loading;
  final IconData? icon;
  final bool expanded;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final enabled = onPressed != null && !loading;
    final handler = enabled ? onPressed : null;

    final padding = size == AppButtonSize.compact
        ? const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
            vertical: AppSpacing.sm,
          )
        : const EdgeInsets.symmetric(
            horizontal: AppSpacing.xl,
            vertical: AppSpacing.md,
          );

    final child = loading
        ? SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: _progressColor(colorScheme),
            ),
          )
        : _labelRow(context);

    final button = switch (variant) {
      AppButtonVariant.filled => FilledButton(
          onPressed: handler,
          style: FilledButton.styleFrom(padding: padding),
          child: child,
        ),
      AppButtonVariant.outlined => OutlinedButton(
          onPressed: handler,
          style: OutlinedButton.styleFrom(padding: padding),
          child: child,
        ),
      AppButtonVariant.text => TextButton(
          onPressed: handler,
          style: TextButton.styleFrom(padding: padding),
          child: child,
        ),
      AppButtonVariant.destructive => FilledButton(
          onPressed: handler,
          style: FilledButton.styleFrom(
            padding: padding,
            backgroundColor: colorScheme.error,
            foregroundColor: colorScheme.onError,
            disabledBackgroundColor: colorScheme.onSurface.withValues(
              alpha: 0.12,
            ),
            disabledForegroundColor: colorScheme.onSurface.withValues(
              alpha: 0.38,
            ),
          ),
          child: child,
        ),
    };

    if (expanded) {
      return SizedBox(width: double.infinity, child: button);
    }
    return button;
  }

  Color _progressColor(ColorScheme colorScheme) {
    return switch (variant) {
      AppButtonVariant.filled => colorScheme.onPrimary,
      AppButtonVariant.destructive => colorScheme.onError,
      AppButtonVariant.outlined || AppButtonVariant.text => colorScheme.primary,
    };
  }

  Widget _labelRow(BuildContext context) {
    final text = Text(
      label,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );

    if (icon == null) {
      return text;
    }

    return Row(
      children: [
        Icon(icon, size: 18),
        const SizedBox(width: AppSpacing.sm),
        Flexible(child: text),
      ],
    );
  }
}
