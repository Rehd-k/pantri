import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/network/api_exception.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../nutrition/domain/nutrition_models.dart';
import '../../../nutrition/providers/nutrition_providers.dart';

class NutritionSnapshotCard extends ConsumerWidget {
  const NutritionSnapshotCard({
    super.key,
    required this.onTap,
    this.onOpenProgress,
  });

  final VoidCallback onTap;
  final VoidCallback? onOpenProgress;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileAsync = ref.watch(healthProfileProvider);
    final progressAsync = ref.watch(nutritionProgressProvider('today'));
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Nutrition today',
              style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w800),
            ),
            const Spacer(),
            if (onOpenProgress != null)
              TextButton(
                onPressed: onOpenProgress,
                child: const Text('Details'),
              ),
          ],
        ),
        const SizedBox(height: AppSpacing.md),
        profileAsync.when(
          loading: () => const _NutritionSkeleton(),
          error: (e, _) => _NutritionEmptyCard(
            icon: Icons.error_outline,
            title: 'Could not load nutrition',
            subtitle: e is ApiException ? e.message : e.toString(),
            onTap: onTap,
          ),
          data: (profile) {
            if (profile == null) {
              return _NutritionEmptyCard(
                icon: Icons.monitor_heart_outlined,
                title: 'Complete your nutrition profile',
                subtitle:
                    'Set your goals to track calories and macros throughout the day.',
                onTap: onTap,
              );
            }

            return progressAsync.when(
              loading: () => const _NutritionSkeleton(),
              error: (e, _) => _NutritionEmptyCard(
                icon: Icons.error_outline,
                title: 'Could not load progress',
                subtitle: e is ApiException ? e.message : e.toString(),
                onTap: onTap,
              ),
              data: (report) => _NutritionSnapshotBody(
                report: report,
                onTap: onOpenProgress ?? onTap,
              ),
            );
          },
        ),
      ],
    );
  }
}

class _NutritionSnapshotBody extends StatelessWidget {
  const _NutritionSnapshotBody({
    required this.report,
    required this.onTap,
  });

  final NutritionProgressReport report;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final energy = report.totals.energyKcal;
    final protein = report.totals.proteinMg;
    final carbs = report.totals.carbsMg;
    final fat = report.totals.fatMg;
    final cookedCount = report.meals.length;
    final onTrack = energy.percent >= 50 && energy.percent <= 110;

    return Material(
      color: colorScheme.surface,
      borderRadius: BorderRadius.circular(24),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: colorScheme.outlineVariant.withValues(alpha: 0.25),
            ),
          ),
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Text(
                    '${energy.percent}% of calorie goal',
                    style: textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w800,
                      color: colorScheme.primary,
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    onTrack ? Icons.check_circle : Icons.trending_up,
                    size: 18,
                    color: colorScheme.secondary,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    onTrack ? 'On track' : 'In progress',
                    style: textTheme.labelLarge?.copyWith(
                      color: colorScheme.secondary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.sm),
              ClipRRect(
                borderRadius: AppRadius.borderFull,
                child: LinearProgressIndicator(
                  value: (energy.percent / 100).clamp(0.0, 1.0),
                  minHeight: 10,
                  backgroundColor: colorScheme.surfaceContainerHigh,
                  color: colorScheme.secondary,
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              Row(
                children: [
                  Expanded(
                    child: _MacroChip(
                      label: 'Protein',
                      percent: protein.percent,
                    ),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Expanded(
                    child: _MacroChip(label: 'Carbs', percent: carbs.percent),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Expanded(
                    child: _MacroChip(label: 'Fat', percent: fat.percent),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.md),
              Text(
                cookedCount == 0
                    ? 'No meals cooked yet today'
                    : '$cookedCount meal${cookedCount == 1 ? '' : 's'} cooked today',
                style: textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MacroChip extends StatelessWidget {
  const _MacroChip({required this.label, required this.percent});

  final String label;
  final int percent;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.md,
      ),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLow,
        borderRadius: AppRadius.borderMd,
      ),
      child: Column(
        children: [
          Text(
            label,
            style: textTheme.labelSmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            '$percent%',
            style: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w800),
          ),
        ],
      ),
    );
  }
}

class _NutritionSkeleton extends StatelessWidget {
  const _NutritionSkeleton();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      height: 160,
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(24),
      ),
      alignment: Alignment.center,
      child: const CircularProgressIndicator(),
    );
  }
}

class _NutritionEmptyCard extends StatelessWidget {
  const _NutritionEmptyCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Material(
      color: colorScheme.surfaceContainerLow,
      borderRadius: BorderRadius.circular(24),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, color: colorScheme.primary, size: 28),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    Text(
                      subtitle,
                      style: textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.chevron_right,
                color: colorScheme.onSurface.withValues(alpha: 0.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
