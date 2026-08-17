import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_empty_state.dart';
import '../data/nutrition_repository.dart';
import '../domain/nutrition_models.dart';
import '../providers/nutrition_providers.dart';
import 'meal_plan_detail_screen.dart';

@RoutePage()
class HealthQuestionnaireScreen extends ConsumerStatefulWidget {
  const HealthQuestionnaireScreen({super.key, this.embeddedInTab = false});

  /// When true, completing the form refreshes the Meals tab instead of pushing
  /// a separate detail route.
  final bool embeddedInTab;

  @override
  ConsumerState<HealthQuestionnaireScreen> createState() =>
      _HealthQuestionnaireScreenState();
}

class _HealthQuestionnaireScreenState
    extends ConsumerState<HealthQuestionnaireScreen> {
  int _step = 0;
  bool _hydrated = false;
  bool _submitting = false;
  final _customAllergyController = TextEditingController();
  final _customGoalController = TextEditingController();

  static const _genders = ['Prefer not to say', 'Female', 'Male', 'Non-binary'];

  static final _lifestyles = [
    ('EVERYTHING', 'Everything', 'No restrictions', Icons.restaurant_outlined),
    ('VEGAN', 'Vegan', 'Plant-based only', Icons.eco_outlined),
    (
      'VEGETARIAN',
      'Vegetarian',
      'No meat, includes eggs/dairy',
      Icons.egg_outlined,
    ),
    ('KETO', 'Keto', 'High fat, low carb', Icons.lunch_dining_outlined),
  ];

  static final _activities = [
    (
      'SEDENTARY',
      'Sedentary',
      'Desk job, little exercise',
      Icons.chair_outlined,
    ),
    (
      'MODERATE',
      'Moderate',
      'Exercise 3-5 times a week',
      Icons.directions_walk,
    ),
    (
      'VERY_ACTIVE',
      'Very Active',
      'Hard exercise 6-7 times a week',
      Icons.fitness_center,
    ),
  ];

  @override
  void dispose() {
    _customAllergyController.dispose();
    _customGoalController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final draft = ref.read(questionnaireDraftProvider);
    if (draft.selectedGoalIds.isEmpty && draft.customGoals.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Select at least one goal')));
      return;
    }

    setState(() => _submitting = true);
    try {
      final repo = ref.read(nutritionRepositoryProvider);
      await repo.upsertProfile(draft.toRequest());
      final plan = await repo.generateMealPlan();
      ref.invalidate(healthProfileProvider);
      ref.invalidate(mealPlansProvider);
      if (!mounted) return;
      if (widget.embeddedInTab) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              plan.status == 'APPROVED' || plan.status == 'PENDING_REVIEW'
                  ? 'Recipes ready from your pantry.'
                  : 'Meal plan ready.',
            ),
          ),
        );
        return;
      }
      await Navigator.of(context).pushReplacement(
        MaterialPageRoute<void>(
          builder: (_) => MealPlanDetailScreen(mealPlanId: plan.id),
        ),
      );
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e is ApiException ? e.message : e.toString())),
      );
    } finally {
      if (mounted) setState(() => _submitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final catalogAsync = ref.watch(nutritionCatalogProvider);
    final profileAsync = ref.watch(healthProfileProvider);
    final draft = ref.watch(questionnaireDraftProvider);
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    profileAsync.whenData((profile) {
      if (!_hydrated) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!mounted || _hydrated) return;
          ref.read(questionnaireDraftProvider.notifier).hydrate(profile);
          setState(() => _hydrated = true);
        });
      }
    });

    return Scaffold(
      appBar: widget.embeddedInTab
          ? AppBar(
              title: const Text('Health Questionnaire'),
              automaticallyImplyLeading: false,
            )
          : AppBar(
              title: const Text('Health Questionnaire'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (_) => const MealPlansListScreen(),
                      ),
                    );
                  },
                  child: const Text('My plans'),
                ),
              ],
            ),
      body: catalogAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => AppEmptyState(
          icon: Icons.error_outline,
          title: 'Could not load catalog',
          message: e is ApiException ? e.message : e.toString(),
        ),
        data: (catalog) {
          final progress = (_step + 1) / 4;
          final stepTitle = switch (_step) {
            0 => 'Physical Profile',
            1 => 'Dietary Lifestyle',
            2 => 'Activity Level',
            _ => 'Primary Goals',
          };

          return SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    AppSpacing.xl,
                    AppSpacing.lg,
                    AppSpacing.xl,
                    AppSpacing.md,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'STEP ${_step + 1} OF 4',
                            style: textTheme.labelLarge?.copyWith(
                              color: colorScheme.primary,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1.1,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            stepTitle,
                            style: textTheme.labelLarge?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      ClipRRect(
                        borderRadius: AppRadius.borderFull,
                        child: LinearProgressIndicator(
                          value: progress,
                          minHeight: 8,
                          backgroundColor: colorScheme.surfaceContainerHighest,
                          color: colorScheme.secondary,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(
                      AppSpacing.xl,
                      AppSpacing.md,
                      AppSpacing.xl,
                      AppSpacing.xxl,
                    ),
                    child: switch (_step) {
                      0 => _buildPhysicalStep(draft, colorScheme, textTheme),
                      1 => _buildDietStep(
                        draft,
                        catalog,
                        colorScheme,
                        textTheme,
                      ),
                      2 => _buildActivityStep(draft, colorScheme, textTheme),
                      _ => _buildGoalsStep(
                        draft,
                        catalog,
                        colorScheme,
                        textTheme,
                      ),
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    AppSpacing.xl,
                    AppSpacing.sm,
                    AppSpacing.xl,
                    AppSpacing.lg,
                  ),
                  child: Row(
                    children: [
                      if (_step > 0)
                        Expanded(
                          child: AppButton(
                            label: 'Back',
                            variant: AppButtonVariant.outlined,
                            onPressed: _submitting
                                ? null
                                : () => setState(() => _step -= 1),
                          ),
                        ),
                      if (_step > 0) const SizedBox(width: AppSpacing.md),
                      Expanded(
                        child: AppButton(
                          label: _step == 3 ? 'Generate plan' : 'Next',
                          loading: _submitting,
                          onPressed: _submitting
                              ? null
                              : () {
                                  if (_step < 3) {
                                    setState(() => _step += 1);
                                  } else {
                                    _submit();
                                  }
                                },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildPhysicalStep(
    QuestionnaireDraft draft,
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    return _CardShell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Let's start with the basics",
            style: textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          Row(
            children: [
              Expanded(
                child: _NumberField(
                  label: 'Age',
                  value: draft.age,
                  onChanged: (v) =>
                      ref.read(questionnaireDraftProvider.notifier).setAge(v),
                ),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: _DropdownField(
                  label: 'Gender',
                  value: draft.gender,
                  items: _genders,
                  onChanged: (v) => ref
                      .read(questionnaireDraftProvider.notifier)
                      .setGender(v),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          Row(
            children: [
              Expanded(
                child: _NumberField(
                  label: 'Height (cm)',
                  value: draft.heightCm,
                  onChanged: (v) => ref
                      .read(questionnaireDraftProvider.notifier)
                      .setHeightCm(v),
                ),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: _NumberField(
                  label: 'Weight (kg)',
                  value: draft.weightKg,
                  onChanged: (v) => ref
                      .read(questionnaireDraftProvider.notifier)
                      .setWeightKg(v),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.xl),
          _InfoTiles(colorScheme: colorScheme, textTheme: textTheme),
        ],
      ),
    );
  }

  Widget _buildDietStep(
    QuestionnaireDraft draft,
    NutritionCatalog catalog,
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    return _CardShell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Dietary Lifestyle',
            style: textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            'Select your primary dietary preference and any allergies.',
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          ..._lifestyles.map((item) {
            final selected = draft.lifestyle == item.$1;
            return Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.sm),
              child: _SelectableTile(
                selected: selected,
                icon: item.$4,
                title: item.$2,
                subtitle: item.$3,
                onTap: () => ref
                    .read(questionnaireDraftProvider.notifier)
                    .setLifestyle(item.$1),
              ),
            );
          }),
          const SizedBox(height: AppSpacing.md),
          Text(
            'Allergies & Sensitivities',
            style: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: AppSpacing.sm),
          Wrap(
            spacing: AppSpacing.sm,
            runSpacing: AppSpacing.sm,
            children: [
              ...catalog.allergies.map((allergy) {
                final selected = draft.selectedAllergyIds.contains(allergy.id);
                return FilterChip(
                  label: Text(allergy.name),
                  selected: selected,
                  onSelected: (_) => ref
                      .read(questionnaireDraftProvider.notifier)
                      .toggleAllergy(allergy.id),
                );
              }),
              ...draft.customAllergies.map(
                (label) => InputChip(
                  label: Text(label),
                  onDeleted: () => ref
                      .read(questionnaireDraftProvider.notifier)
                      .removeCustomAllergy(label),
                ),
              ),
              ActionChip(
                avatar: const Icon(Icons.add, size: 18),
                label: const Text('Other'),
                onPressed: () => _promptCustom(
                  title: 'Add custom allergy',
                  controller: _customAllergyController,
                  onSubmit: (value) => ref
                      .read(questionnaireDraftProvider.notifier)
                      .addCustomAllergy(value),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActivityStep(
    QuestionnaireDraft draft,
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    return _CardShell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'How active are you?',
            style: textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          ..._activities.map((item) {
            final selected = draft.activityLevel == item.$1;
            return Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.sm),
              child: _SelectableTile(
                selected: selected,
                icon: item.$4,
                title: item.$2,
                subtitle: item.$3,
                showRadio: true,
                onTap: () => ref
                    .read(questionnaireDraftProvider.notifier)
                    .setActivityLevel(item.$1),
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildGoalsStep(
    QuestionnaireDraft draft,
    NutritionCatalog catalog,
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    return _CardShell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What are your primary goals?',
            style: textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: catalog.goals.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: AppSpacing.md,
              crossAxisSpacing: AppSpacing.md,
              childAspectRatio: 0.95,
            ),
            itemBuilder: (context, index) {
              final goal = catalog.goals[index];
              final selected = draft.selectedGoalIds.contains(goal.id);
              return InkWell(
                borderRadius: AppRadius.borderLg,
                onTap: () => ref
                    .read(questionnaireDraftProvider.notifier)
                    .toggleGoal(goal.id),
                child: Container(
                  padding: const EdgeInsets.all(AppSpacing.lg),
                  decoration: BoxDecoration(
                    color: selected
                        ? colorScheme.primaryContainer.withValues(alpha: 0.35)
                        : colorScheme.surfaceContainerLow,
                    borderRadius: AppRadius.borderLg,
                    border: Border.all(
                      color: selected
                          ? colorScheme.primary
                          : colorScheme.outlineVariant,
                      width: selected ? 2 : 1,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        _iconForGoal(goal.iconKey),
                        size: 32,
                        color: selected
                            ? colorScheme.primary
                            : colorScheme.onSurfaceVariant,
                      ),
                      const Spacer(),
                      Text(
                        goal.name,
                        style: textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: selected ? colorScheme.primary : null,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.xs),
                      Text(
                        goal.description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: AppSpacing.lg),
          Wrap(
            spacing: AppSpacing.sm,
            runSpacing: AppSpacing.sm,
            children: [
              ...draft.customGoals.map(
                (label) => InputChip(
                  label: Text(label),
                  onDeleted: () => ref
                      .read(questionnaireDraftProvider.notifier)
                      .removeCustomGoal(label),
                ),
              ),
              ActionChip(
                avatar: const Icon(Icons.add, size: 18),
                label: const Text('Other'),
                onPressed: () => _promptCustom(
                  title: 'Add custom goal',
                  controller: _customGoalController,
                  onSubmit: (value) => ref
                      .read(questionnaireDraftProvider.notifier)
                      .addCustomGoal(value),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _promptCustom({
    required String title,
    required TextEditingController controller,
    required void Function(String) onSubmit,
  }) async {
    controller.clear();
    final value = await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: TextField(
          controller: controller,
          autofocus: true,
          decoration: const InputDecoration(hintText: 'Type here'),
          onSubmitted: (v) => Navigator.of(context).pop(v),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(controller.text),
            child: const Text('Add'),
          ),
        ],
      ),
    );
    if (value != null) onSubmit(value);
  }

  IconData _iconForGoal(String key) {
    return switch (key) {
      'monitoring' => Icons.show_chart,
      'exercise' => Icons.fitness_center,
      'bolt' => Icons.bolt,
      'verified' => Icons.verified,
      _ => Icons.flag_outlined,
    };
  }
}

class MealPlansListScreen extends ConsumerWidget {
  const MealPlansListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final plansAsync = ref.watch(mealPlansProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('My meal plans')),
      body: plansAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => AppEmptyState(
          icon: Icons.error_outline,
          title: 'Could not load plans',
          message: e is ApiException ? e.message : e.toString(),
        ),
        data: (plans) {
          if (plans.isEmpty) {
            return const AppEmptyState(
              icon: Icons.restaurant_menu_outlined,
              title: 'No meal plans yet',
              message:
                  'Complete the questionnaire to generate your first plan.',
            );
          }
          return ListView.separated(
            padding: const EdgeInsets.all(AppSpacing.xl),
            itemCount: plans.length,
            separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.md),
            itemBuilder: (context, index) {
              final plan = plans[index];
              return ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: AppRadius.borderMd,
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.outlineVariant,
                  ),
                ),
                title: Text(plan.title),
                subtitle: Text(plan.status.replaceAll('_', ' ')),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (_) => MealPlanDetailScreen(mealPlanId: plan.id),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

class _CardShell extends StatelessWidget {
  const _CardShell({required this.child});

  final Widget child;

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
          color: colorScheme.outlineVariant.withValues(alpha: 0.4),
        ),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withValues(alpha: 0.04),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: child,
    );
  }
}

class _NumberField extends StatelessWidget {
  const _NumberField({
    required this.label,
    required this.value,
    required this.onChanged,
  });

  final String label;
  final int value;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(height: AppSpacing.xs),
        TextFormField(
          initialValue: '$value',
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            filled: true,
            fillColor: Theme.of(context).colorScheme.surfaceContainerLow,
            border: OutlineInputBorder(
              borderRadius: AppRadius.borderMd,
              borderSide: BorderSide.none,
            ),
          ),
          onChanged: (raw) {
            final parsed = int.tryParse(raw);
            if (parsed != null) onChanged(parsed);
          },
        ),
      ],
    );
  }
}

class _DropdownField extends StatelessWidget {
  const _DropdownField({
    required this.label,
    required this.value,
    required this.items,
    required this.onChanged,
  });

  final String label;
  final String value;
  final List<String> items;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(height: AppSpacing.xs),
        DropdownButtonFormField<String>(
          initialValue: value,
          items: items
              .map((item) => DropdownMenuItem(value: item, child: Text(item)))
              .toList(),
          onChanged: (v) {
            if (v != null) onChanged(v);
          },
          decoration: InputDecoration(
            filled: true,
            fillColor: Theme.of(context).colorScheme.surfaceContainerLow,
            border: OutlineInputBorder(
              borderRadius: AppRadius.borderMd,
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}

class _SelectableTile extends StatelessWidget {
  const _SelectableTile({
    required this.selected,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.showRadio = false,
  });

  final bool selected;
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final bool showRadio;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return InkWell(
      onTap: onTap,
      borderRadius: AppRadius.borderMd,
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.md),
        decoration: BoxDecoration(
          borderRadius: AppRadius.borderMd,
          border: Border.all(
            color: selected ? colorScheme.primary : colorScheme.outlineVariant,
            width: selected ? 2 : 1,
          ),
          color: selected
              ? colorScheme.primaryContainer.withValues(alpha: 0.15)
              : null,
        ),
        child: Row(
          children: [
            Icon(icon, color: selected ? colorScheme.primary : null),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: selected ? colorScheme.primary : null,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            if (showRadio)
              Icon(
                selected ? Icons.radio_button_checked : Icons.radio_button_off,
                color: selected ? colorScheme.primary : colorScheme.outline,
              ),
          ],
        ),
      ),
    );
  }
}

class _InfoTiles extends StatelessWidget {
  const _InfoTiles({required this.colorScheme, required this.textTheme});

  final ColorScheme colorScheme;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _infoCard(
          icon: Icons.health_and_safety_outlined,
          title: 'Data Privacy',
          body:
              'Your health metrics are only used to personalize your nutrition plan.',
          background: colorScheme.secondaryContainer.withValues(alpha: 0.25),
          foreground: colorScheme.secondary,
        ),
        const SizedBox(height: AppSpacing.md),
        _infoCard(
          icon: Icons.auto_awesome,
          title: 'AI Precision',
          body:
              'We match meals to catalog products and suggest alternatives when needed.',
          background: colorScheme.tertiaryContainer.withValues(alpha: 0.35),
          foreground: colorScheme.onTertiaryContainer,
        ),
      ],
    );
  }

  Widget _infoCard({
    required IconData icon,
    required String title,
    required String body,
    required Color background,
    required Color foreground,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: foreground),
          const SizedBox(height: AppSpacing.sm),
          Text(
            title,
            style: textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w700,
              color: foreground,
            ),
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(body, style: textTheme.bodySmall?.copyWith(color: foreground)),
        ],
      ),
    );
  }
}
