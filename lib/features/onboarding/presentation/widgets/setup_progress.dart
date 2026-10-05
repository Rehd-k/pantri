import 'package:flutter/material.dart';

import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../domain/setup_steps.dart';

/// Segmented setup progress. Each step is a short track ending in an icon.
class SetupProgress extends StatelessWidget {
  const SetupProgress({super.key, required this.steps, required this.index});

  final List<SetupStep> steps;
  final int index;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final blue = colorScheme.tertiary;
    final track = colorScheme.tertiary.withValues(alpha: 0.22);
    final current = index.clamp(0, steps.length - 1);
    final percent = setupPercent(current, steps.length);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            for (var i = 0; i < steps.length; i++) ...[
              Expanded(
                child: Container(
                  height: 4,
                  decoration: BoxDecoration(
                    color: i <= current ? blue : track,
                    borderRadius: AppRadius.borderFull,
                  ),
                ),
              ),
              const SizedBox(width: 4),
              _AchievementStop(
                icon: steps[i].icon,
                reached: i <= current,
                current: i == current,
                blue: blue,
                idle: track,
                iconColor: i <= current
                    ? colorScheme.onTertiary
                    : colorScheme.onSurfaceVariant,
              ),
              if (i < steps.length - 1) const SizedBox(width: 4),
            ],
          ],
        ),
        const SizedBox(height: AppSpacing.sm),
        Text(
          '$percent%',
          style: textTheme.labelLarge?.copyWith(
            color: blue,
            fontWeight: FontWeight.w800,
            letterSpacing: 0.6,
          ),
        ),
      ],
    );
  }
}

class _AchievementStop extends StatelessWidget {
  const _AchievementStop({
    required this.icon,
    required this.reached,
    required this.current,
    required this.blue,
    required this.idle,
    required this.iconColor,
  });

  final IconData icon;
  final bool reached;
  final bool current;
  final Color blue;
  final Color idle;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 26,
      height: 26,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: reached ? blue : Theme.of(context).colorScheme.surface,
        border: Border.all(
          color: reached ? blue : idle,
          width: current ? 2 : 1.5,
        ),
        boxShadow: current
            ? [BoxShadow(color: blue.withValues(alpha: 0.28), blurRadius: 8)]
            : null,
      ),
      child: Icon(icon, size: 14, color: iconColor),
    );
  }
}
