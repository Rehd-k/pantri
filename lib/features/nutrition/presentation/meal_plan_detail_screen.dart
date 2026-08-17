import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_empty_state.dart';
import '../../packages/presentation/package_details_screen.dart';
import '../providers/nutrition_providers.dart';
import 'detailed_analysis_screen.dart';

class MealPlanDetailScreen extends ConsumerWidget {
  const MealPlanDetailScreen({super.key, required this.mealPlanId});

  final String mealPlanId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final planAsync = ref.watch(mealPlanDetailProvider(mealPlanId));
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Meal plan')),
      body: planAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => AppEmptyState(
          icon: Icons.error_outline,
          title: 'Could not load meal plan',
          message: e is ApiException ? e.message : e.toString(),
        ),
        data: (plan) {
          return ListView(
            padding: const EdgeInsets.all(AppSpacing.xl),
            children: [
              Text(
                plan.title,
                style: textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              Align(
                alignment: Alignment.centerLeft,
                child: Chip(
                  label: Text(plan.status.replaceAll('_', ' ')),
                  backgroundColor: switch (plan.status) {
                    'APPROVED' => colorScheme.secondaryContainer,
                    'PENDING_REVIEW' ||
                    'GENERATING' => colorScheme.tertiaryContainer,
                    'REJECTED' || 'FAILED' => colorScheme.errorContainer,
                    _ => colorScheme.surfaceContainerHighest,
                  },
                ),
              ),
              if (plan.status == 'PENDING_REVIEW') ...[
                const SizedBox(height: AppSpacing.md),
                Text(
                  'Your plan is waiting for admin review. You will be able to open the pantry package once it is approved.',
                  style: textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
              if (plan.failureReason != null) ...[
                const SizedBox(height: AppSpacing.md),
                Text(
                  plan.failureReason!,
                  style: textTheme.bodyMedium?.copyWith(
                    color: colorScheme.error,
                  ),
                ),
              ],
              if (plan.status == 'APPROVED' && plan.packageId != null) ...[
                const SizedBox(height: AppSpacing.lg),
                AppButton(
                  label: 'Open pantry package',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (_) =>
                            PackageDetailsScreen(packageId: plan.packageId!),
                      ),
                    );
                  },
                ),
              ],
              const SizedBox(height: AppSpacing.xl),
              ...plan.days.map((day) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: AppSpacing.lg),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        day.label.isEmpty ? 'Day ${day.dayIndex}' : day.label,
                        style: textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      ...day.items.map((item) {
                        final isAlt = item.matchType == 'ALTERNATIVE';
                        return Padding(
                          padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                          child: Material(
                            color: colorScheme.surfaceContainerLowest,
                            borderRadius: AppRadius.borderMd,
                            child: InkWell(
                              borderRadius: AppRadius.borderMd,
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute<void>(
                                    builder: (_) => DetailedAnalysisScreen(
                                      mealPlanId: plan.id,
                                      itemId: item.id,
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(AppSpacing.md),
                                decoration: BoxDecoration(
                                  borderRadius: AppRadius.borderMd,
                                  border: Border.all(
                                    color: colorScheme.outlineVariant,
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            item.title,
                                            style: textTheme.titleSmall
                                                ?.copyWith(
                                                  fontWeight: FontWeight.w700,
                                                ),
                                          ),
                                        ),
                                        Chip(
                                          label: Text(item.matchType),
                                          visualDensity: VisualDensity.compact,
                                          backgroundColor: isAlt
                                              ? colorScheme.tertiaryContainer
                                              : colorScheme.secondaryContainer,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      item.mealSlot.toUpperCase(),
                                      style: textTheme.labelSmall?.copyWith(
                                        color: colorScheme.onSurfaceVariant,
                                        letterSpacing: 0.8,
                                      ),
                                    ),
                                    const SizedBox(height: AppSpacing.xs),
                                    Text(
                                      item.productName != null
                                          ? '${item.productName} × ${item.quantity}'
                                          : item.requestedProductName.isEmpty
                                          ? 'No catalog match'
                                          : '${item.requestedProductName} (unmatched)',
                                      style: textTheme.bodyMedium,
                                    ),
                                    if (item.rationale.isNotEmpty) ...[
                                      const SizedBox(height: AppSpacing.xs),
                                      Text(
                                        item.rationale,
                                        style: textTheme.bodySmall?.copyWith(
                                          color: colorScheme.onSurfaceVariant,
                                        ),
                                      ),
                                    ],
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                    ],
                  ),
                );
              }),
            ],
          );
        },
      ),
    );
  }
}
