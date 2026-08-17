import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_empty_state.dart';
import '../domain/nutrition_models.dart';
import '../providers/nutrition_providers.dart';
import 'widgets/nutrition_share_card.dart';

class ProgressReportScreen extends ConsumerStatefulWidget {
  const ProgressReportScreen({super.key});

  @override
  ConsumerState<ProgressReportScreen> createState() =>
      _ProgressReportScreenState();
}

class _ProgressReportScreenState extends ConsumerState<ProgressReportScreen> {
  String _range = 'today';
  final _shareCardKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final reportAsync = ref.watch(nutritionProgressProvider(_range));
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nutrition progress'),
        actions: [
          IconButton(
            tooltip: 'Share',
            onPressed: () async {
              final report = reportAsync.asData?.value;
              if (report == null) return;
              await shareNutritionCard(
                _shareCardKey,
                fileName: 'pantri-nutrition-progress',
                subject: 'My Pantri nutrition progress',
              );
            },
            icon: const Icon(Icons.ios_share_outlined),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(nutritionProgressProvider(_range));
          await ref.read(nutritionProgressProvider(_range).future);
        },
        child: ListView(
          padding: const EdgeInsets.all(AppSpacing.xl),
          children: [
            SegmentedButton<String>(
              segments: const [
                ButtonSegment(value: 'today', label: Text('Today')),
                ButtonSegment(value: 'week', label: Text('This week')),
              ],
              selected: {_range},
              onSelectionChanged: (value) {
                setState(() => _range = value.first);
              },
            ),
            const SizedBox(height: AppSpacing.xl),
            reportAsync.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => AppEmptyState(
                icon: Icons.error_outline,
                title: 'Could not load progress',
                message: e is ApiException ? e.message : e.toString(),
              ),
              data: (report) => Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  RepaintBoundary(
                    key: _shareCardKey,
                    child: NutritionShareCard(
                      title: _range == 'today'
                          ? "Today's progress"
                          : 'My weekly progress',
                      subtitle:
                          '${report.meals.length} meal${report.meals.length == 1 ? '' : 's'} cooked',
                      highlight:
                          '${report.totals.energyKcal.percent}% of calorie goal',
                      metrics: {
                        'Protein': '${report.totals.proteinMg.percent}%',
                        'Fiber': '${report.totals.fiberMg.percent}%',
                        'Iron': '${report.totals.ironUg.percent}%',
                      },
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xl),
                  _ProgressBar(
                    label: 'Calories',
                    progress: report.totals.energyKcal,
                    unit: 'kcal',
                  ),
                  _ProgressBar(
                    label: 'Protein',
                    progress: report.totals.proteinMg,
                    unit: 'mg',
                    asGrams: true,
                  ),
                  _ProgressBar(
                    label: 'Carbs',
                    progress: report.totals.carbsMg,
                    unit: 'mg',
                    asGrams: true,
                  ),
                  _ProgressBar(
                    label: 'Fat',
                    progress: report.totals.fatMg,
                    unit: 'mg',
                    asGrams: true,
                  ),
                  _ProgressBar(
                    label: 'Fiber',
                    progress: report.totals.fiberMg,
                    unit: 'mg',
                    asGrams: true,
                  ),
                  _ProgressBar(
                    label: 'Sugar',
                    progress: report.totals.sugarMg,
                    unit: 'mg',
                    asGrams: true,
                  ),
                  _ProgressBar(
                    label: 'Sodium',
                    progress: report.totals.sodiumMg,
                    unit: 'mg',
                  ),
                  _ProgressBar(
                    label: 'Iron',
                    progress: report.totals.ironUg,
                    unit: 'µg',
                  ),
                  const SizedBox(height: AppSpacing.xl),
                  Text(
                    'Cooked meals',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.md),
                  if (report.meals.isEmpty)
                    Text(
                      'No cooked meals in this period yet.',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    )
                  else
                    for (final meal in report.meals)
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(meal.title),
                        subtitle: Text(
                          '${meal.mealSlot} • ${DateFormat.MMMd().add_jm().format(DateTime.parse(meal.cookedAt).toLocal())}',
                        ),
                        trailing: Text('${meal.nutrition.energyKcal} kcal'),
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProgressBar extends StatelessWidget {
  const _ProgressBar({
    required this.label,
    required this.progress,
    required this.unit,
    this.asGrams = false,
  });

  final String label;
  final NutrientProgress progress;
  final String unit;
  final bool asGrams;

  @override
  Widget build(BuildContext context) {
    final consumed = asGrams
        ? (progress.consumed / 1000).round()
        : progress.consumed;
    final target = asGrams ? (progress.target / 1000).round() : progress.target;
    final displayUnit = asGrams ? 'g' : unit;
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  label,
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
                ),
              ),
              Text('$consumed / $target $displayUnit • ${progress.percent}%'),
            ],
          ),
          const SizedBox(height: AppSpacing.xs),
          LinearProgressIndicator(value: (progress.percent / 100).clamp(0, 1)),
        ],
      ),
    );
  }
}
