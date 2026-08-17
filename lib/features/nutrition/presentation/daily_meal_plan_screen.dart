import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_empty_state.dart';
import '../../auth/providers/auth_notifier.dart';
import '../../auth/providers/auth_state.dart';
import '../../inventory/presentation/pantry_screen.dart';
import '../../inventory/presentation/restock_sheet.dart';
import '../../inventory/providers/inventory_providers.dart';
import '../data/nutrition_repository.dart';
import '../domain/nutrition_models.dart';
import '../providers/nutrition_providers.dart';
import 'detailed_analysis_screen.dart';
import 'health_questionnaire_screen.dart';
import 'progress_report_screen.dart';

/// Meals tab: questionnaire if no profile, otherwise the daily meal plan.
class MealsTab extends ConsumerWidget {
  const MealsTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileAsync = ref.watch(healthProfileProvider);

    return profileAsync.when(
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (e, _) => Scaffold(
        body: AppEmptyState(
          icon: Icons.error_outline,
          title: 'Could not load nutrition profile',
          message: e is ApiException ? e.message : e.toString(),
        ),
      ),
      data: (profile) {
        if (profile == null) {
          return const HealthQuestionnaireScreen(embeddedInTab: true);
        }
        return const DailyMealPlanScreen();
      },
    );
  }
}

class DailyMealPlanScreen extends ConsumerStatefulWidget {
  const DailyMealPlanScreen({super.key});

  @override
  ConsumerState<DailyMealPlanScreen> createState() =>
      _DailyMealPlanScreenState();
}

class _DailyMealPlanScreenState extends ConsumerState<DailyMealPlanScreen> {
  late int _selectedDayOffset;

  @override
  void initState() {
    super.initState();
    _selectedDayOffset = 0;
  }

  @override
  Widget build(BuildContext context) {
    final plansAsync = ref.watch(mealPlansProvider);
    final profileAsync = ref.watch(healthProfileProvider);
    final auth = ref.watch(authNotifierProvider);
    final user = auth is AuthAuthenticated ? auth.user : null;
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: plansAsync.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e, _) => AppEmptyState(
            icon: Icons.error_outline,
            title: 'Could not load meal plans',
            message: e is ApiException ? e.message : e.toString(),
          ),
          data: (plans) {
            final active = _pickActivePlan(plans);
            final latest = plans.isEmpty ? null : plans.first;
            final profile = switch (profileAsync) {
              AsyncData(:final value) => value,
              _ => null,
            };
            if (latest == null ||
                latest.status == 'GENERATING' ||
                latest.status == 'PENDING_REVIEW' ||
                active == null) {
              final generating = latest?.status == 'GENERATING';
              return RefreshIndicator(
                onRefresh: () async {
                  ref.invalidate(mealPlansProvider);
                  await ref.read(mealPlansProvider.future);
                },
                child: ListView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(AppSpacing.xl),
                  children: [
                    const SizedBox(height: AppSpacing.xxxl),
                    Icon(
                      generating
                          ? Icons.auto_awesome_outlined
                          : Icons.hourglass_top_rounded,
                      size: 64,
                      color: colorScheme.tertiary,
                    ),
                    const SizedBox(height: AppSpacing.xl),
                    Text(
                      generating
                          ? 'Your meal plan is being created'
                          : 'Your meal plan is almost ready',
                      textAlign: TextAlign.center,
                      style: textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.md),
                    Text(
                      generating
                          ? 'Pantri is matching your nutrition goals with '
                                'available pantry products and practical recipes.'
                          : 'Our nutrition team is reviewing your personalized '
                                'plan. It will appear here as soon as it is approved.',
                      textAlign: TextAlign.center,
                      style: textTheme.bodyLarge?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.xl),
                    const Center(child: LinearProgressIndicator()),
                  ],
                ),
              );
            }
            return RefreshIndicator(
              onRefresh: () async {
                ref.invalidate(mealPlansProvider);
                ref.invalidate(healthProfileProvider);
                await Future.wait([
                  ref.read(mealPlansProvider.future),
                  ref.read(healthProfileProvider.future),
                ]);
              },
              child: CustomScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                        AppSpacing.xl,
                        AppSpacing.md,
                        AppSpacing.xl,
                        AppSpacing.sm,
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: colorScheme.primaryContainer,
                            foregroundColor: colorScheme.onPrimaryContainer,
                            child: Text(
                              _initials(user?.firstName, user?.lastName),
                              style: textTheme.labelLarge?.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const SizedBox(width: AppSpacing.md),
                          Expanded(
                            child: Text(
                              'PantryPay Nutrition',
                              style: textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w800,
                                color: colorScheme.primary,
                              ),
                            ),
                          ),
                          IconButton(
                            tooltip: 'My pantry',
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute<void>(
                                  builder: (_) => const PantryScreen(),
                                ),
                              );
                            },
                            icon: const Icon(Icons.kitchen_outlined),
                          ),
                          IconButton(
                            tooltip: 'Progress',
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute<void>(
                                  builder: (_) => const ProgressReportScreen(),
                                ),
                              );
                            },
                            icon: const Icon(Icons.insights_outlined),
                          ),
                          IconButton(
                            tooltip: 'Edit goals',
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute<void>(
                                  builder: (_) =>
                                      const HealthQuestionnaireScreen(),
                                ),
                              );
                            },
                            icon: const Icon(Icons.flag_outlined),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.xl,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Daily Plan',
                            style: textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.w800,
                              color: colorScheme.primary,
                            ),
                          ),
                          const Spacer(),
                          TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.calendar_month, size: 18),
                            label: const Text('This Week'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ..._planBody(context, ref, active, profile),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  List<Widget> _planBody(
    BuildContext context,
    WidgetRef ref,
    MealPlanSummary summary,
    HealthProfile? profile,
  ) {
    final detailAsync = ref.watch(mealPlanDetailProvider(summary.id));
    final colorScheme = Theme.of(context).colorScheme;
    final targets = _DailyTargets.fromReport(
      ref.watch(nutritionProgressProvider('today')).asData?.value,
      profile,
    );

    return [
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Chip(
              label: Text(summary.status.replaceAll('_', ' ')),
              backgroundColor: switch (summary.status) {
                'APPROVED' => colorScheme.secondaryContainer,
                'PENDING_REVIEW' ||
                'GENERATING' => colorScheme.tertiaryContainer,
                'REJECTED' || 'FAILED' => colorScheme.errorContainer,
                _ => colorScheme.surfaceContainerHighest,
              },
            ),
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.xl,
            AppSpacing.md,
            AppSpacing.xl,
            AppSpacing.lg,
          ),
          child: _TargetsCard(targets: targets),
        ),
      ),
      detailAsync.when(
        loading: () => const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(AppSpacing.xxl),
            child: Center(child: CircularProgressIndicator()),
          ),
        ),
        error: (e, _) => SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.xl),
            child: Text(
              e is ApiException ? e.message : e.toString(),
              style: TextStyle(color: colorScheme.error),
            ),
          ),
        ),
        data: (detail) {
          final day = _dayForSelection(detail);
          final meals = _groupPrimaryMeals(day);

          return SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.xl,
                AppSpacing.md,
                AppSpacing.xl,
                AppSpacing.xxxl,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 72,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: detail.days.length,
                      separatorBuilder: (_, __) =>
                          const SizedBox(width: AppSpacing.sm),
                      itemBuilder: (context, index) {
                        final planDay = detail.days[index];
                        final selectedIndex = _selectedDayOffset.clamp(
                          0,
                          detail.days.length - 1,
                        );
                        final dateLabel = _formatPlanDay(planDay);
                        return _DayChip(
                          weekday: planDay.label.isNotEmpty
                              ? planDay.label
                              : dateLabel.$1,
                          day: dateLabel.$2,
                          selected: index == selectedIndex,
                          onTap: () =>
                              setState(() => _selectedDayOffset = index),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  if (meals.isEmpty)
                    const AppEmptyState(
                      icon: Icons.no_meals_outlined,
                      title: 'No meals for this day',
                      message: 'Try another day in your plan.',
                    )
                  else
                    for (final meal in meals) ...[
                      if (meal.slot.toLowerCase() == 'snack')
                        _SnackCard(
                          meal: meal,
                          onCook: () =>
                              _cookMeal(context, ref, detail.id, meal),
                          onAnalyze: () =>
                              _openAnalysis(context, detail.id, meal.id),
                        )
                      else
                        _MealCard(
                          meal: meal,
                          onCook: () =>
                              _cookMeal(context, ref, detail.id, meal),
                          onAnalyze: () =>
                              _openAnalysis(context, detail.id, meal.id),
                        ),
                      const SizedBox(height: AppSpacing.lg),
                    ],
                ],
              ),
            ),
          );
        },
      ),
    ];
  }

  Future<void> _cookMeal(
    BuildContext context,
    WidgetRef ref,
    String mealPlanId,
    _MealView meal,
  ) async {
    final recipe = meal.recipe;
    if (recipe == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('This meal has no recipe yet.')),
      );
      return;
    }
    if (recipe.cookability != 'ready') {
      final short = recipe.ingredients.where((i) => i.isShort).toList();
      await showRestockSheet(context, ref);
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            short.isEmpty
                ? 'Stock up the missing ingredients first.'
                : 'Need more ${short.map((e) => e.productName).join(', ')}.',
          ),
        ),
      );
      return;
    }
    try {
      final result = await ref
          .read(nutritionRepositoryProvider)
          .cookRecipe(recipe.id);
      ref.invalidate(mealPlansProvider);
      ref.invalidate(mealPlanDetailProvider(mealPlanId));
      ref.invalidate(nutritionProgressProvider('today'));
      ref.invalidate(householdStockProvider);
      ref.invalidate(restockAlertsProvider);
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Meal logged toward your goals.')),
      );
      if (result.restockAlerts.isNotEmpty) {
        await showRestockSheet(context, ref, alerts: result.restockAlerts);
      }
    } catch (e) {
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e is ApiException ? e.message : e.toString())),
      );
    }
  }

  void _openAnalysis(BuildContext context, String mealPlanId, String itemId) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) =>
            DetailedAnalysisScreen(mealPlanId: mealPlanId, itemId: itemId),
      ),
    );
  }

  MealPlanSummary? _pickActivePlan(List<MealPlanSummary> plans) {
    for (final plan in plans) {
      if (plan.status == 'APPROVED') {
        return plan;
      }
    }
    return null;
  }

  MealPlanDay? _dayForSelection(MealPlanDetail detail) {
    if (detail.days.isEmpty) return null;
    return detail.days[_selectedDayOffset.clamp(0, detail.days.length - 1)];
  }

  (String, String) _formatPlanDay(MealPlanDay planDay) {
    final raw = planDay.planDate;
    if (raw == null || raw.isEmpty) {
      return ('Day', '${planDay.dayIndex}');
    }
    final parsed = DateTime.tryParse(raw);
    if (parsed == null) {
      return ('Day', '${planDay.dayIndex}');
    }
    const weekdays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    return (weekdays[parsed.weekday - 1], '${parsed.day}');
  }

  List<_MealView> _groupPrimaryMeals(MealPlanDay? day) {
    if (day == null) return const [];
    final bySlot = <String, MealPlanItem>{};
    for (final item in day.items) {
      if (item.matchType != 'PRIMARY') continue;
      final key = item.mealSlot.toLowerCase();
      bySlot.putIfAbsent(key, () => item);
    }
    const order = ['breakfast', 'lunch', 'snack', 'dinner'];
    final result = <_MealView>[];
    for (final slot in order) {
      final item = bySlot.remove(slot);
      if (item != null) {
        result.add(_MealView.fromItem(item));
      }
    }
    for (final item in bySlot.values) {
      result.add(_MealView.fromItem(item));
    }
    return result;
  }

  String _initials(String? first, String? last) {
    final a = (first != null && first.isNotEmpty) ? first[0] : '';
    final b = (last != null && last.isNotEmpty) ? last[0] : '';
    final value = '$a$b'.toUpperCase();
    return value.isEmpty ? '?' : value;
  }
}

class _DayChip extends StatelessWidget {
  const _DayChip({
    required this.weekday,
    required this.day,
    required this.selected,
    required this.onTap,
  });

  final String weekday;
  final String day;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 56,
        decoration: BoxDecoration(
          color: selected
              ? colorScheme.primaryContainer
              : colorScheme.surfaceContainerHigh,
          borderRadius: BorderRadius.circular(16),
          border: selected
              ? Border.all(color: colorScheme.primary, width: 2)
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              weekday.length >= 3 ? weekday.substring(0, 3) : weekday,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: selected
                    ? colorScheme.onPrimaryContainer
                    : colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              day,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w800,
                color: selected
                    ? colorScheme.onPrimaryContainer
                    : colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DailyTargets {
  const _DailyTargets({
    required this.calories,
    required this.caloriesTarget,
    required this.proteinG,
    required this.proteinTarget,
    required this.carbsG,
    required this.carbsTarget,
    required this.fatG,
    required this.fatTarget,
  });

  final int calories;
  final int caloriesTarget;
  final int proteinG;
  final int proteinTarget;
  final int carbsG;
  final int carbsTarget;
  final int fatG;
  final int fatTarget;

  double get energySpent {
    if (caloriesTarget <= 0) return 0;
    return (calories / caloriesTarget).clamp(0.0, 1.0);
  }

  factory _DailyTargets.fromReport(
    NutritionProgressReport? report,
    HealthProfile? profile,
  ) {
    if (report != null && report.targets.energyKcal > 0) {
      return _DailyTargets(
        calories: (report.totals.energyKcal.consumed).round(),
        caloriesTarget: report.totals.energyKcal.target,
        proteinG: (report.totals.proteinMg.consumed / 1000).round(),
        proteinTarget: (report.totals.proteinMg.target / 1000).round(),
        carbsG: (report.totals.carbsMg.consumed / 1000).round(),
        carbsTarget: (report.totals.carbsMg.target / 1000).round(),
        fatG: (report.totals.fatMg.consumed / 1000).round(),
        fatTarget: (report.totals.fatMg.target / 1000).round(),
      );
    }
    final weight = profile?.weightKg ?? 70;
    final height = profile?.heightCm ?? 170;
    final age = profile?.age ?? 30;
    final activity = switch (profile?.activityLevel) {
      'SEDENTARY' => 1.2,
      'VERY_ACTIVE' => 1.725,
      _ => 1.55,
    };
    final bmr = (10 * weight) + (6.25 * height) - (5 * age) + 5;
    final target = profile != null && profile.targetEnergyKcal > 0
        ? profile.targetEnergyKcal
        : (bmr * activity).round();
    final proteinTarget = profile != null && profile.targetProteinMg > 0
        ? (profile.targetProteinMg / 1000).round()
        : (weight * 1.6).round();
    final fatTarget = profile != null && profile.targetFatMg > 0
        ? (profile.targetFatMg / 1000).round()
        : (weight * 0.8).round();
    final carbsTarget = profile != null && profile.targetCarbsMg > 0
        ? (profile.targetCarbsMg / 1000).round()
        : ((target - (proteinTarget * 4) - (fatTarget * 9)) / 4).round().clamp(
            80,
            400,
          );
    return _DailyTargets(
      calories: 0,
      caloriesTarget: target,
      proteinG: 0,
      proteinTarget: proteinTarget,
      carbsG: 0,
      carbsTarget: carbsTarget,
      fatG: 0,
      fatTarget: fatTarget,
    );
  }
}

class _TargetsCard extends StatelessWidget {
  const _TargetsCard({required this.targets});

  final _DailyTargets targets;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final pct = (targets.energySpent * 100).round();

    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: colorScheme.outlineVariant.withValues(alpha: 0.3),
        ),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withValues(alpha: 0.04),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Today's Target",
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w800,
                  color: colorScheme.primary,
                ),
              ),
              const Spacer(),
              Icon(Icons.check_circle, color: colorScheme.secondary, size: 18),
              const SizedBox(width: 4),
              Text(
                'On Track',
                style: textTheme.labelLarge?.copyWith(
                  color: colorScheme.secondary,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            mainAxisSpacing: AppSpacing.sm,
            crossAxisSpacing: AppSpacing.sm,
            childAspectRatio: 2.1,
            children: [
              _MetricTile(
                label: 'Calories',
                value: NumberFormat('#,###').format(targets.calories),
                suffix:
                    '/ ${NumberFormat('#,###').format(targets.caloriesTarget)}',
              ),
              _MetricTile(
                label: 'Protein',
                value: '${targets.proteinG}g',
                suffix: '/ ${targets.proteinTarget}g',
              ),
              _MetricTile(
                label: 'Carbs',
                value: '${targets.carbsG}g',
                suffix: '/ ${targets.carbsTarget}g',
              ),
              _MetricTile(
                label: 'Fat',
                value: '${targets.fatG}g',
                suffix: '/ ${targets.fatTarget}g',
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.lg),
          Row(
            children: [
              Text(
                'Daily Energy Spent',
                style: textTheme.labelMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
              const Spacer(),
              Text(
                '$pct%',
                style: textTheme.labelLarge?.copyWith(
                  color: colorScheme.secondary,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.sm),
          ClipRRect(
            borderRadius: AppRadius.borderFull,
            child: LinearProgressIndicator(
              value: targets.energySpent,
              minHeight: 12,
              backgroundColor: colorScheme.surfaceContainerHigh,
              color: colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }
}

class _MetricTile extends StatelessWidget {
  const _MetricTile({
    required this.label,
    required this.value,
    required this.suffix,
  });

  final String label;
  final String value;
  final String suffix;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLow,
        borderRadius: AppRadius.borderMd,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label.toUpperCase(),
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
              letterSpacing: 0.6,
            ),
          ),
          const SizedBox(height: 2),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: value,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                TextSpan(
                  text: ' $suffix',
                  style: Theme.of(
                    context,
                  ).textTheme.labelSmall?.copyWith(color: colorScheme.outline),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MealView {
  const _MealView({
    required this.id,
    required this.slot,
    required this.title,
    required this.rationale,
    required this.productName,
    required this.timeLabel,
    this.recipe,
  });

  final String id;
  final String slot;
  final String title;
  final String rationale;
  final String? productName;
  final String timeLabel;
  final RecipeDetail? recipe;

  factory _MealView.fromItem(MealPlanItem item) {
    final slot = item.mealSlot;
    return _MealView(
      id: item.id,
      slot: slot,
      title: item.title,
      rationale: item.rationale,
      productName: item.recipe?.ingredients.isNotEmpty == true
          ? item.recipe!.ingredients.map((e) => e.productName).join(', ')
          : item.productName,
      timeLabel: _defaultTime(slot),
      recipe: item.recipe,
    );
  }

  static String _defaultTime(String slot) {
    return switch (slot.toLowerCase()) {
      'breakfast' => '08:30 AM',
      'lunch' => '01:00 PM',
      'snack' => '04:00 PM',
      'dinner' => '07:30 PM',
      _ => '',
    };
  }

  IconData get icon => switch (slot.toLowerCase()) {
    'breakfast' => Icons.free_breakfast_outlined,
    'lunch' => Icons.lunch_dining_outlined,
    'snack' => Icons.cookie_outlined,
    'dinner' => Icons.dinner_dining_outlined,
    _ => Icons.restaurant_outlined,
  };
}

class _MealCard extends StatelessWidget {
  const _MealCard({
    required this.meal,
    required this.onCook,
    required this.onAnalyze,
  });

  final _MealView meal;
  final VoidCallback onCook;
  final VoidCallback onAnalyze;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final tagColor = switch (meal.slot.toLowerCase()) {
      'lunch' => colorScheme.secondary,
      'dinner' => colorScheme.tertiary,
      _ => colorScheme.primary,
    };

    return Material(
      color: colorScheme.surface,
      borderRadius: BorderRadius.circular(24),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onAnalyze,
        child: Ink(
          decoration: BoxDecoration(
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 160,
                color: tagColor.withValues(alpha: 0.12),
                child: Icon(meal.icon, size: 56, color: tagColor),
              ),
              Padding(
                padding: const EdgeInsets.all(AppSpacing.lg),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.md,
                        vertical: AppSpacing.xs,
                      ),
                      decoration: BoxDecoration(
                        color: tagColor.withValues(alpha: 0.12),
                        borderRadius: AppRadius.borderFull,
                      ),
                      child: Text(
                        '${meal.slot.toUpperCase()}${meal.timeLabel.isEmpty ? '' : ' • ${meal.timeLabel}'}',
                        style: textTheme.labelSmall?.copyWith(
                          color: tagColor,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.4,
                        ),
                      ),
                    ),
                    const SizedBox(height: AppSpacing.sm),
                    Text(
                      meal.title,
                      style: textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    if (meal.rationale.isNotEmpty) ...[
                      const SizedBox(height: AppSpacing.xs),
                      Text(
                        meal.rationale,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: textTheme.bodyMedium?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                    if (meal.productName != null) ...[
                      const SizedBox(height: AppSpacing.sm),
                      Row(
                        children: [
                          Icon(
                            Icons.kitchen_outlined,
                            size: 16,
                            color: colorScheme.onSurfaceVariant,
                          ),
                          const SizedBox(width: 4),
                          Expanded(
                            child: Text(
                              meal.productName!,
                              style: textTheme.labelLarge,
                            ),
                          ),
                        ],
                      ),
                    ],
                    const SizedBox(height: AppSpacing.lg),
                    Row(
                      children: [
                        Expanded(
                          child: AppButton(
                            label: meal.recipe?.cookability == 'ready'
                                ? 'Cooked it'
                                : 'Stock up missing',
                            icon: meal.recipe?.cookability == 'ready'
                                ? Icons.restaurant_outlined
                                : Icons.shopping_basket_outlined,
                            onPressed: onCook,
                          ),
                        ),
                        const SizedBox(width: AppSpacing.sm),
                        Expanded(
                          child: AppButton(
                            label: 'Analyze',
                            variant: AppButtonVariant.outlined,
                            icon: Icons.query_stats,
                            onPressed: onAnalyze,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SnackCard extends StatelessWidget {
  const _SnackCard({
    required this.meal,
    required this.onCook,
    required this.onAnalyze,
  });

  final _MealView meal;
  final VoidCallback onCook;
  final VoidCallback onAnalyze;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Material(
      color: colorScheme.surfaceContainerLow,
      borderRadius: BorderRadius.circular(24),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onAnalyze,
        child: Ink(
          padding: const EdgeInsets.all(AppSpacing.md),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: colorScheme.outlineVariant.withValues(alpha: 0.3),
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  color: colorScheme.tertiaryContainer.withValues(alpha: 0.35),
                  borderRadius: AppRadius.borderMd,
                ),
                child: Icon(meal.icon, color: colorScheme.tertiary),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${meal.slot.toUpperCase()}${meal.timeLabel.isEmpty ? '' : ' • ${meal.timeLabel}'}',
                      style: textTheme.labelSmall?.copyWith(
                        color: colorScheme.tertiary,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.8,
                      ),
                    ),
                    Text(
                      meal.title,
                      style: textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    if (meal.rationale.isNotEmpty)
                      Text(
                        meal.rationale,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                  ],
                ),
              ),
              IconButton.filledTonal(
                onPressed: onCook,
                icon: Icon(
                  meal.recipe?.cookability == 'ready'
                      ? Icons.restaurant_outlined
                      : Icons.shopping_basket_outlined,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
