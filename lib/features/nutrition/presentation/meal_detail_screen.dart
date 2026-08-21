import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_empty_state.dart';
import '../../inventory/presentation/restock_sheet.dart';
import '../../inventory/providers/inventory_providers.dart';
import '../data/nutrition_repository.dart';
import '../domain/nutrition_models.dart';
import '../providers/nutrition_providers.dart';
import 'detailed_analysis_screen.dart';

List<String> recipeSteps(RecipeDetail? recipe) {
  if (recipe == null) return const [];
  if (recipe.instructionSteps.isNotEmpty) {
    return recipe.instructionSteps
        .map((step) => step.trim())
        .where((step) => step.isNotEmpty)
        .toList();
  }
  return recipe.instructions
      .split(RegExp(r'\n+'))
      .map((line) => line.replaceFirst(RegExp(r'^\s*\d+[\.)]\s*'), '').trim())
      .where((line) => line.isNotEmpty)
      .toList();
}

class MealDetailScreen extends ConsumerWidget {
  const MealDetailScreen({
    super.key,
    required this.mealPlanId,
    required this.itemId,
  });

  final String mealPlanId;
  final String itemId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final planAsync = ref.watch(mealPlanDetailProvider(mealPlanId));
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return planAsync.when(
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (e, _) => Scaffold(
        appBar: AppBar(),
        body: AppEmptyState(
          icon: Icons.error_outline,
          title: 'Could not load this meal',
          message: e is ApiException ? e.message : e.toString(),
        ),
      ),
      data: (plan) {
        MealPlanItem? item;
        MealPlanDay? day;
        for (final planDay in plan.days) {
          for (final row in planDay.items) {
            if (row.id == itemId) {
              item = row;
              day = planDay;
            }
          }
        }
        if (item == null || day == null) {
          return Scaffold(
            appBar: AppBar(),
            body: const AppEmptyState(
              icon: Icons.no_meals_outlined,
              title: 'Meal not found',
              message: 'This meal is no longer on your plan.',
            ),
          );
        }

        final steps = recipeSteps(item.recipe);
        final cooked = item.cookedAt != null;
        final recipe = item.recipe;

        return Scaffold(
          appBar: AppBar(
            title: Text(item.mealSlot.toUpperCase()),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (_) => DetailedAnalysisScreen(
                        mealPlanId: mealPlanId,
                        itemId: itemId,
                      ),
                    ),
                  );
                },
                child: const Text('Analyze'),
              ),
            ],
          ),
          body: ListView(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.xl,
              AppSpacing.md,
              AppSpacing.xl,
              120,
            ),
            children: [
              if (cooked)
                Container(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  decoration: BoxDecoration(
                    color: colorScheme.secondaryContainer,
                    borderRadius: AppRadius.borderLg,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: colorScheme.onSecondaryContainer,
                      ),
                      const SizedBox(width: AppSpacing.sm),
                      Text(
                        'You cooked this',
                        style: textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
              if (cooked) const SizedBox(height: AppSpacing.lg),
              Text(
                item.title,
                style: textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w900,
                ),
              ),
              if (item.rationale.isNotEmpty) ...[
                const SizedBox(height: AppSpacing.sm),
                Text(
                  item.rationale,
                  style: textTheme.bodyLarge?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
              const SizedBox(height: AppSpacing.xl),
              Text(
                'How to prepare',
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: AppSpacing.md),
              if (steps.isEmpty)
                Text(
                  'Your nutritionist has not added cooking directions yet.',
                  style: textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                )
              else
                for (var i = 0; i < steps.length; i++)
                  Padding(
                    padding: const EdgeInsets.only(bottom: AppSpacing.md),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 14,
                          backgroundColor: colorScheme.primaryContainer,
                          foregroundColor: colorScheme.onPrimaryContainer,
                          child: Text(
                            '${i + 1}',
                            style: textTheme.labelLarge?.copyWith(
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        const SizedBox(width: AppSpacing.md),
                        Expanded(
                          child: Text(steps[i], style: textTheme.bodyLarge),
                        ),
                      ],
                    ),
                  ),
              const SizedBox(height: AppSpacing.lg),
              Text(
                'Ingredients',
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: AppSpacing.md),
              if (recipe == null || recipe.ingredients.isEmpty)
                Text(
                  item.productName ?? 'No catalog ingredients listed.',
                  style: textTheme.bodyMedium,
                )
              else
                for (final ingredient in recipe.ingredients)
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      backgroundImage: ingredient.productImageUrl.isNotEmpty
                          ? NetworkImage(ingredient.productImageUrl)
                          : null,
                      child: ingredient.productImageUrl.isEmpty
                          ? const Icon(Icons.kitchen_outlined)
                          : null,
                    ),
                    title: Text(ingredient.productName),
                    subtitle: Text(
                      '${ingredient.quantity} ${ingredient.measureUnitLabel ?? 'unit'}'
                      '${ingredient.isShort ? ' · need more in pantry' : ''}',
                    ),
                    trailing: Icon(
                      ingredient.isShort
                          ? Icons.shopping_basket_outlined
                          : Icons.check_circle_outline,
                      color: ingredient.isShort
                          ? colorScheme.tertiary
                          : colorScheme.secondary,
                    ),
                  ),
            ],
          ),
          bottomNavigationBar: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.xl,
                AppSpacing.sm,
                AppSpacing.xl,
                AppSpacing.lg,
              ),
              child: cooked
                  ? AppButton(
                      label: 'Already cooked',
                      icon: Icons.check,
                      onPressed: null,
                    )
                  : AppButton(
                      label: recipe?.cookability == 'ready'
                          ? 'Cooked it'
                          : 'Stock up missing',
                      icon: recipe?.cookability == 'ready'
                          ? Icons.restaurant_outlined
                          : Icons.shopping_basket_outlined,
                      onPressed: () =>
                          _cook(context, ref, mealPlanId, item!),
                    ),
            ),
          ),
        );
      },
    );
  }

  Future<void> _cook(
    BuildContext context,
    WidgetRef ref,
    String mealPlanId,
    MealPlanItem item,
  ) async {
    final recipe = item.recipe;
    if (recipe == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('This meal has no recipe yet.')),
      );
      return;
    }
    if (recipe.cookability != 'ready') {
      await showRestockSheet(context, ref);
      return;
    }
    try {
      final result = await ref
          .read(nutritionRepositoryProvider)
          .cookMealItem(item.id);
      ref.invalidate(mealPlansProvider);
      ref.invalidate(mealPlanDetailProvider(mealPlanId));
      ref.invalidate(nutritionProgressProvider('today'));
      ref.invalidate(householdStockProvider);
      ref.invalidate(restockAlertsProvider);
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Nice — this meal is marked cooked.')),
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
}
