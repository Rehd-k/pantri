import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/utils/money_kobo.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_empty_state.dart';
import '../../home/providers/home_providers.dart';
import '../domain/meal_analysis.dart';
import '../domain/nutrition_models.dart';
import '../providers/nutrition_providers.dart';

class DetailedAnalysisScreen extends ConsumerWidget {
  const DetailedAnalysisScreen({
    super.key,
    required this.mealPlanId,
    required this.itemId,
    this.showBackButton = true,
  });

  final String mealPlanId;
  final String itemId;
  final bool showBackButton;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final planAsync = ref.watch(mealPlanDetailProvider(mealPlanId));
    final profileAsync = ref.watch(healthProfileProvider);
    final dashAsync = ref.watch(employeeDashboardProvider);
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: showBackButton,
        title: const Text('Analyze'),
        actions: [
          planAsync.maybeWhen(
            data: (plan) {
              final item = _findItem(plan, itemId);
              if (item == null) return const SizedBox.shrink();
              return IconButton(
                icon: const Icon(Icons.share_outlined),
                onPressed: () {
                  Share.share(
                    '${item.title}\n${item.rationale}'.trim(),
                    subject: 'Pantri meal analysis',
                  );
                },
              );
            },
            orElse: () => const SizedBox.shrink(),
          ),
        ],
      ),
      body: planAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => AppEmptyState(
          icon: Icons.error_outline,
          title: 'Could not load analysis',
          message: e is ApiException ? e.message : e.toString(),
        ),
        data: (plan) {
          final item = _findItem(plan, itemId);
          final day = _findDay(plan, itemId);
          if (item == null || day == null) {
            return const AppEmptyState(
              icon: Icons.query_stats,
              title: 'Meal not found',
              message: 'This meal is no longer on your plan.',
            );
          }

          final profile = profileAsync.asData?.value;
          final credit = dashAsync.asData?.value.credit;

          final analysis = MealAnalysis.from(
            item: item,
            day: day,
            plan: plan,
            profile: profile,
            credit: credit,
          );

          return RefreshIndicator(
            onRefresh: () async {
              ref.invalidate(mealPlanDetailProvider(mealPlanId));
              ref.invalidate(healthProfileProvider);
              ref.invalidate(employeeDashboardProvider);
              await Future.wait([
                ref.read(mealPlanDetailProvider(mealPlanId).future),
                ref.read(healthProfileProvider.future),
                ref.read(employeeDashboardProvider.future),
              ]);
            },
            child: ListView(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.xl,
                AppSpacing.md,
                AppSpacing.xl,
                AppSpacing.xxxl,
              ),
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today_outlined,
                      size: 16,
                      color: colorScheme.secondary,
                    ),
                    const SizedBox(width: AppSpacing.xs),
                    Text(
                      analysis.dateLabel,
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: colorScheme.secondary,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  analysis.title,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w800,
                        color: colorScheme.primary,
                      ),
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  analysis.description,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                ),
                const SizedBox(height: AppSpacing.md),
                Wrap(
                  spacing: AppSpacing.sm,
                  runSpacing: AppSpacing.sm,
                  children: [
                    for (final tag in analysis.tags)
                      Chip(
                        label: Text(tag),
                        backgroundColor:
                            colorScheme.secondaryContainer.withValues(alpha: 0.35),
                        labelStyle: TextStyle(
                          color: colorScheme.onSecondaryContainer,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                        visualDensity: VisualDensity.compact,
                      ),
                  ],
                ),
                const SizedBox(height: AppSpacing.lg),
                _GradeCard(analysis: analysis),
                const SizedBox(height: AppSpacing.lg),
                _MicrosCard(analysis: analysis),
                const SizedBox(height: AppSpacing.lg),
                _AiCard(analysis: analysis),
                const SizedBox(height: AppSpacing.lg),
                _MacrosCard(analysis: analysis),
                const SizedBox(height: AppSpacing.lg),
                _CreditCard(analysis: analysis),
                const SizedBox(height: AppSpacing.lg),
                _PersonalizeCard(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Personalize coming soon'),
                      ),
                    );
                  },
                ),
                const SizedBox(height: AppSpacing.lg),
                _IngredientsCard(analysis: analysis),
              ],
            ),
          );
        },
      ),
    );
  }

  MealPlanItem? _findItem(MealPlanDetail plan, String id) {
    for (final day in plan.days) {
      for (final item in day.items) {
        if (item.id == id) return item;
      }
    }
    return null;
  }

  MealPlanDay? _findDay(MealPlanDetail plan, String id) {
    for (final day in plan.days) {
      if (day.items.any((item) => item.id == id)) return day;
    }
    return null;
  }
}

class _GradeCard extends StatelessWidget {
  const _GradeCard({required this.analysis});

  final MealAnalysis analysis;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.xl),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: colorScheme.outlineVariant.withValues(alpha: 0.25),
        ),
        boxShadow: [
          BoxShadow(
            color: colorScheme.secondary.withValues(alpha: 0.12),
            blurRadius: 24,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            'HEALTH GRADE',
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                  letterSpacing: 1.2,
                ),
          ),
          Text(
            analysis.healthGrade,
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontWeight: FontWeight.w900,
                  color: colorScheme.secondary,
                  height: 1,
                ),
          ),
          const SizedBox(height: AppSpacing.sm),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, size: 16, color: colorScheme.secondary),
              const SizedBox(width: 4),
              Text(
                analysis.gradeCaption,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: colorScheme.secondary,
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _MicrosCard extends StatelessWidget {
  const _MicrosCard({required this.analysis});

  final MealAnalysis analysis;

  @override
  Widget build(BuildContext context) {
    return _SectionCard(
      title: 'Micronutrient Breakdown',
      child: Column(
        children: [
          for (final micro in analysis.micros) ...[
            _MicroRow(micro: micro),
            if (micro != analysis.micros.last)
              const SizedBox(height: AppSpacing.lg),
          ],
        ],
      ),
    );
  }
}

class _MicroRow extends StatelessWidget {
  const _MicroRow({required this.micro});

  final MealMicroNutrient micro;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final color = switch (micro.tone) {
      MealMicroTone.secondary => colorScheme.secondary,
      MealMicroTone.tertiary => colorScheme.tertiary,
      MealMicroTone.primary => colorScheme.primary,
      MealMicroTone.error => colorScheme.error,
    };
    final icon = switch (micro.icon) {
      'eco' => Icons.eco_outlined,
      'water_drop' => Icons.water_drop_outlined,
      'icecream' => Icons.icecream_outlined,
      'fitness_center' => Icons.fitness_center,
      _ => Icons.circle_outlined,
    };

    return Column(
      children: [
        Row(
          children: [
            Icon(icon, size: 18, color: color),
            const SizedBox(width: AppSpacing.sm),
            Expanded(
              child: Text(
                micro.label,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: micro.amountLabel,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  TextSpan(
                    text: ' / ${micro.dvPercent.round()}% DV',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: color,
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.sm),
        ClipRRect(
          borderRadius: AppRadius.borderFull,
          child: LinearProgressIndicator(
            value: (micro.dvPercent / 100).clamp(0.0, 1.0),
            minHeight: 10,
            backgroundColor: colorScheme.surfaceContainerHigh,
            color: color,
          ),
        ),
      ],
    );
  }
}

class _AiCard extends StatelessWidget {
  const _AiCard({required this.analysis});

  final MealAnalysis analysis;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.bolt, color: colorScheme.onPrimaryContainer),
              const SizedBox(width: AppSpacing.sm),
              Text(
                'AI Optimization',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w800,
                      color: colorScheme.onPrimaryContainer,
                    ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          for (final tip in analysis.tips) ...[
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: AppSpacing.sm),
              padding: const EdgeInsets.all(AppSpacing.md),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.1),
                borderRadius: AppRadius.borderMd,
                border: Border.all(color: Colors.white.withValues(alpha: 0.12)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    tip.icon == 'add_circle'
                        ? Icons.add_circle_outline
                        : tip.icon == 'eco'
                            ? Icons.eco_outlined
                            : Icons.verified_outlined,
                    color: colorScheme.secondaryContainer,
                  ),
                  const SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tip.title,
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                color: colorScheme.onPrimary,
                                fontWeight: FontWeight.w700,
                              ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          tip.body,
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: colorScheme.onPrimaryContainer
                                    .withValues(alpha: 0.85),
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _MacrosCard extends StatelessWidget {
  const _MacrosCard({required this.analysis});

  final MealAnalysis analysis;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return _SectionCard(
      title: 'Macronutrients',
      child: Column(
        children: [
          SizedBox(
            height: 160,
            child: CustomPaint(
              painter: _DonutPainter(
                protein: analysis.proteinPercent / 100,
                carbs: analysis.carbsPercent / 100,
                fat: analysis.fatPercent / 100,
                proteinColor: colorScheme.primary,
                carbsColor: colorScheme.tertiary,
                fatColor: colorScheme.secondary,
              ),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '${analysis.calories}',
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.w900,
                            color: colorScheme.primary,
                          ),
                    ),
                    Text(
                      'KCAL',
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          _MacroLegendRow(
            color: colorScheme.primary,
            label: 'Protein',
            value: '${analysis.proteinG}g (${analysis.proteinPercent}%)',
          ),
          const SizedBox(height: AppSpacing.sm),
          _MacroLegendRow(
            color: colorScheme.tertiary,
            label: 'Carbs',
            value: '${analysis.carbsG}g (${analysis.carbsPercent}%)',
          ),
          const SizedBox(height: AppSpacing.sm),
          _MacroLegendRow(
            color: colorScheme.secondary,
            label: 'Fats',
            value: '${analysis.fatG}g (${analysis.fatPercent}%)',
          ),
        ],
      ),
    );
  }
}

class _MacroLegendRow extends StatelessWidget {
  const _MacroLegendRow({
    required this.color,
    required this.label,
    required this.value,
  });

  final Color color;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: AppSpacing.sm),
        Expanded(
          child: Text(
            label,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
          ),
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
      ],
    );
  }
}

class _CreditCard extends StatelessWidget {
  const _CreditCard({required this.analysis});

  final MealAnalysis analysis;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final pct = (analysis.creditUtilization * 100).round();
    return _SectionCard(
      title: 'Pantry Credit',
      trailing: Text(
        '$pct% used',
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: colorScheme.secondary,
              fontWeight: FontWeight.w800,
            ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: AppRadius.borderFull,
            child: LinearProgressIndicator(
              value: analysis.creditUtilization,
              minHeight: 10,
              backgroundColor: colorScheme.surfaceContainerHigh,
              color: colorScheme.secondary,
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          Row(
            children: [
              Text(
                'AVAILABLE',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                      fontWeight: FontWeight.w800,
                    ),
              ),
              const Spacer(),
              Text(
                '${MoneyKobo.formatNaira(analysis.creditAvailableKobo)} / ${MoneyKobo.formatNaira(analysis.creditLimitKobo)}',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            'Payroll-backed revolving credit for nutrient-dense pantry stocking.',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                  fontStyle: FontStyle.italic,
                ),
          ),
        ],
      ),
    );
  }
}

class _PersonalizeCard extends StatelessWidget {
  const _PersonalizeCard({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
          colors: [
            colorScheme.primary.withValues(alpha: 0.85),
            colorScheme.secondary.withValues(alpha: 0.75),
          ],
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Positioned(
            right: -20,
            bottom: -20,
            child: Icon(
              Icons.restaurant,
              size: 120,
              color: Colors.white.withValues(alpha: 0.12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Complete your meal',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                ),
                const Spacer(),
                AppButton(
                  label: 'Personalize',
                  icon: Icons.tune,
                  variant: AppButtonVariant.outlined,
                  onPressed: onTap,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _IngredientsCard extends StatelessWidget {
  const _IngredientsCard({required this.analysis});

  final MealAnalysis analysis;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return _SectionCard(
      title: 'Ingredients & Sourcing',
      trailing: TextButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Full report coming soon')),
          );
        },
        child: const Text('Full Report'),
      ),
      child: Column(
        children: [
          if (analysis.ingredients.isEmpty)
            Text(
              'No linked catalog ingredients for this meal yet.',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
            )
          else
            for (final row in analysis.ingredients) ...[
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: AppSpacing.sm),
                padding: const EdgeInsets.all(AppSpacing.md),
                decoration: BoxDecoration(
                  color: colorScheme.surfaceContainerLow,
                  borderRadius: AppRadius.borderMd,
                ),
                child: Row(
                  children: [
                    Icon(
                      row.isPrimary ? Icons.check_circle : Icons.info,
                      color: row.isPrimary
                          ? colorScheme.secondary
                          : colorScheme.tertiary,
                    ),
                    const SizedBox(width: AppSpacing.md),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            row.name,
                            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                          Text(
                            row.subtitle,
                            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                  color: colorScheme.onSurfaceVariant,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.4,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      row.badge,
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: row.isPrimary
                                ? colorScheme.secondary
                                : colorScheme.tertiary,
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                  ],
                ),
              ),
            ],
        ],
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  const _SectionCard({
    required this.title,
    required this.child,
    this.trailing,
  });

  final String title;
  final Widget child;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: colorScheme.outlineVariant.withValues(alpha: 0.25),
        ),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withValues(alpha: 0.04),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                        color: colorScheme.primary,
                      ),
                ),
              ),
              if (trailing != null) trailing!,
            ],
          ),
          const SizedBox(height: AppSpacing.lg),
          child,
        ],
      ),
    );
  }
}

class _DonutPainter extends CustomPainter {
  _DonutPainter({
    required this.protein,
    required this.carbs,
    required this.fat,
    required this.proteinColor,
    required this.carbsColor,
    required this.fatColor,
  });

  final double protein;
  final double carbs;
  final double fat;
  final Color proteinColor;
  final Color carbsColor;
  final Color fatColor;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = math.min(size.width, size.height) / 2;
    final stroke = radius * 0.22;
    final rect = Rect.fromCircle(center: center, radius: radius - stroke / 2);
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = stroke
      ..strokeCap = StrokeCap.butt;

    var start = -math.pi / 2;
    void draw(double portion, Color color) {
      final sweep = portion.clamp(0.0, 1.0) * 2 * math.pi;
      paint.color = color;
      canvas.drawArc(rect, start, sweep, false, paint);
      start += sweep;
    }

    draw(protein, proteinColor);
    draw(carbs, carbsColor);
    draw(fat, fatColor);
  }

  @override
  bool shouldRepaint(covariant _DonutPainter oldDelegate) {
    return oldDelegate.protein != protein ||
        oldDelegate.carbs != carbs ||
        oldDelegate.fat != fat;
  }
}
