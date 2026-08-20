import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/network/api_exception.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../nutrition/domain/nutrition_models.dart';
import '../../../nutrition/providers/nutrition_providers.dart';

/// Maps the current hour to the active meal slot for the dashboard card.
String mealSlotForHour(int hour) {
  if (hour < 12) return 'breakfast';
  if (hour < 17) return 'lunch';
  return 'dinner';
}

/// Human-readable period prefix for the current meal card headline.
String mealPeriodLabelForHour(int hour) {
  if (hour < 12) return 'This morning';
  if (hour < 17) return 'This afternoon';
  return 'This evening';
}

MealPlanSummary? pickActiveMealPlan(List<MealPlanSummary> plans) {
  for (final plan in plans) {
    if (plan.status == 'APPROVED') {
      return plan;
    }
  }
  return null;
}

MealPlanDay? mealPlanDayForToday(MealPlanDetail detail) {
  final now = DateTime.now();
  for (final day in detail.days) {
    final raw = day.planDate;
    if (raw == null || raw.isEmpty) continue;
    final parsed = DateTime.tryParse(raw);
    if (parsed == null) continue;
    if (parsed.year == now.year &&
        parsed.month == now.month &&
        parsed.day == now.day) {
      return day;
    }
  }
  if (detail.days.isEmpty) return null;
  return detail.days.first;
}

MealPlanItem? primaryItemForSlot(MealPlanDay day, String slot) {
  for (final item in day.items) {
    if (item.matchType != 'PRIMARY') continue;
    if (item.mealSlot.toLowerCase() == slot.toLowerCase()) {
      return item;
    }
  }
  return null;
}

IconData mealSlotIcon(String slot) {
  return switch (slot.toLowerCase()) {
    'breakfast' => Icons.free_breakfast_outlined,
    'lunch' => Icons.lunch_dining_outlined,
    'snack' => Icons.cookie_outlined,
    'dinner' => Icons.dinner_dining_outlined,
    _ => Icons.restaurant_outlined,
  };
}

class CurrentMealCard extends ConsumerWidget {
  const CurrentMealCard({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileAsync = ref.watch(healthProfileProvider);
    final plansAsync = ref.watch(mealPlansProvider);
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final now = DateTime.now();
    final slot = mealSlotForHour(now.hour);
    final periodLabel = mealPeriodLabelForHour(now.hour);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Current meal',
          style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: AppSpacing.md),
        profileAsync.when(
          loading: () => const _MealCardSkeleton(),
          error: (e, _) => _MealEmptyCard(
            icon: Icons.error_outline,
            title: 'Could not load meal plan',
            subtitle: e is ApiException ? e.message : e.toString(),
            onTap: onTap,
          ),
          data: (profile) {
            if (profile == null) {
              return _MealEmptyCard(
                icon: Icons.restaurant_menu_outlined,
                title: 'Set up your meal plan',
                subtitle:
                    'Complete your nutrition profile to get personalized meals.',
                onTap: onTap,
              );
            }

            return plansAsync.when(
              loading: () => const _MealCardSkeleton(),
              error: (e, _) => _MealEmptyCard(
                icon: Icons.error_outline,
                title: 'Could not load meals',
                subtitle: e is ApiException ? e.message : e.toString(),
                onTap: onTap,
              ),
              data: (plans) {
                final active = pickActiveMealPlan(plans);
                if (active == null) {
                  return _MealEmptyCard(
                    icon: Icons.restaurant_menu_outlined,
                    title: 'No active meal plan',
                    subtitle:
                        'Generate a meal plan to see your $slot for today.',
                    onTap: onTap,
                  );
                }

                final detailAsync = ref.watch(mealPlanDetailProvider(active.id));
                return detailAsync.when(
                  loading: () => const _MealCardSkeleton(),
                  error: (e, _) => _MealEmptyCard(
                    icon: Icons.error_outline,
                    title: 'Could not load today\'s meals',
                    subtitle: e is ApiException ? e.message : e.toString(),
                    onTap: onTap,
                  ),
                  data: (detail) {
                    final today = mealPlanDayForToday(detail);
                    final item =
                        today == null ? null : primaryItemForSlot(today, slot);

                    if (item == null) {
                      return _MealEmptyCard(
                        icon: mealSlotIcon(slot),
                        title: 'No $slot planned today',
                        subtitle: 'Open Meals to view your full plan.',
                        onTap: onTap,
                      );
                    }

                    final tagColor = switch (slot) {
                      'lunch' => colorScheme.secondary,
                      'dinner' => colorScheme.tertiary,
                      _ => colorScheme.primary,
                    };

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
                              color: colorScheme.outlineVariant
                                  .withValues(alpha: 0.25),
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
                              _MealHero(
                                slot: slot,
                                imageUrl: item.productImageUrl,
                                tagColor: tagColor,
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
                                        '$periodLabel\'s $slot',
                                        style: textTheme.labelSmall?.copyWith(
                                          color: tagColor,
                                          fontWeight: FontWeight.w800,
                                          letterSpacing: 0.4,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: AppSpacing.sm),
                                    Text(
                                      item.title,
                                      style: textTheme.titleMedium?.copyWith(
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    if (item.rationale.isNotEmpty) ...[
                                      const SizedBox(height: AppSpacing.xs),
                                      Text(
                                        item.rationale,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: textTheme.bodyMedium?.copyWith(
                                          color: colorScheme.onSurfaceVariant,
                                        ),
                                      ),
                                    ],
                                    const SizedBox(height: AppSpacing.md),
                                    Row(
                                      children: [
                                        Text(
                                          'View in Meals',
                                          style: textTheme.labelLarge?.copyWith(
                                            color: colorScheme.primary,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Icon(
                                          Icons.chevron_right,
                                          size: 20,
                                          color: colorScheme.primary,
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
                  },
                );
              },
            );
          },
        ),
      ],
    );
  }
}

class _MealHero extends StatelessWidget {
  const _MealHero({
    required this.slot,
    required this.imageUrl,
    required this.tagColor,
  });

  final String slot;
  final String? imageUrl;
  final Color tagColor;

  @override
  Widget build(BuildContext context) {
    final url = imageUrl;
    if (url != null && url.isNotEmpty) {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        child: Image.network(
          url,
          height: 140,
          width: double.infinity,
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) => _FallbackHero(slot: slot, tagColor: tagColor),
        ),
      );
    }
    return _FallbackHero(slot: slot, tagColor: tagColor);
  }
}

class _FallbackHero extends StatelessWidget {
  const _FallbackHero({required this.slot, required this.tagColor});

  final String slot;
  final Color tagColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      color: tagColor.withValues(alpha: 0.12),
      child: Center(
        child: Icon(mealSlotIcon(slot), size: 56, color: tagColor),
      ),
    );
  }
}

class _MealCardSkeleton extends StatelessWidget {
  const _MealCardSkeleton();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      height: 220,
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(24),
      ),
      alignment: Alignment.center,
      child: const CircularProgressIndicator(),
    );
  }
}

class _MealEmptyCard extends StatelessWidget {
  const _MealEmptyCard({
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
