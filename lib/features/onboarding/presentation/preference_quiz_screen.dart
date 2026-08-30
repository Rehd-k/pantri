import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/router/app_router.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_button.dart';
import '../../nutrition/domain/household_sizing.dart';
import '../../nutrition/domain/lifestyle_options.dart';
import '../../nutrition/domain/nutrition_models.dart';
import '../../nutrition/providers/nutrition_providers.dart';
import '../domain/onboarding_prefs_draft.dart';
import '../providers/first_launch_provider.dart';

enum _QuizStep { household, kids, lifestyle, allergies, aboutYou, goals }

@RoutePage()
class PreferenceQuizScreen extends ConsumerStatefulWidget {
  const PreferenceQuizScreen({super.key});

  @override
  ConsumerState<PreferenceQuizScreen> createState() =>
      _PreferenceQuizScreenState();
}

class _PreferenceQuizScreenState extends ConsumerState<PreferenceQuizScreen> {
  var _stepIndex = 0;
  var _busy = false;
  var _hydrated = false;
  final _customAllergyController = TextEditingController();
  final _customGoalController = TextEditingController();

  static const _genders = ['Prefer not to say', 'Female', 'Male', 'Non-binary'];

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
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.read(onboardingPrefsDraftProvider.notifier).hydrateFromStorage();
      if (!mounted) return;
      final draft = ref.read(onboardingPrefsDraftProvider);
      setState(() {
        _stepIndex = draft.step.clamp(0, 8);
        _hydrated = true;
      });
    });
  }

  @override
  void dispose() {
    _customAllergyController.dispose();
    _customGoalController.dispose();
    super.dispose();
  }

  List<_QuizStep> _stepsFor(OnboardingPrefsDraft draft) {
    return [
      _QuizStep.household,
      if (draft.householdSize > 1) _QuizStep.kids,
      _QuizStep.lifestyle,
      _QuizStep.allergies,
      _QuizStep.aboutYou,
      _QuizStep.goals,
    ];
  }

  Future<void> _persist(OnboardingPrefsDraft draft, {int? step}) {
    return ref.read(onboardingPrefsDraftProvider.notifier).persist(
          draft.copyWith(step: step ?? _stepIndex),
        );
  }

  Future<void> _skip() async {
    if (_busy) return;
    setState(() => _busy = true);
    await ref.read(onboardingPrefsDraftProvider.notifier).skip();
    await ref.read(firstLaunchProvider.notifier).markQuizFinished();
    if (!mounted) return;
    await context.router.replace(const WelcomeRoute());
  }

  Future<void> _finish(OnboardingPrefsDraft draft) async {
    if (!draft.canComplete) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Select at least one goal')),
      );
      return;
    }
    if (_busy) return;
    setState(() => _busy = true);
    await ref.read(onboardingPrefsDraftProvider.notifier).completeAndPersist(draft);
    await ref.read(firstLaunchProvider.notifier).markQuizFinished();
    if (!mounted) return;
    await context.router.replace(const WelcomeRoute());
  }

  Future<void> _next(OnboardingPrefsDraft draft) async {
    final steps = _stepsFor(draft);
    if (_stepIndex >= steps.length - 1) {
      await _finish(draft);
      return;
    }
    setState(() => _stepIndex += 1);
    await _persist(draft, step: _stepIndex);
  }

  Future<void> _back(OnboardingPrefsDraft draft) async {
    if (_stepIndex == 0) return;
    setState(() => _stepIndex -= 1);
    await _persist(draft, step: _stepIndex);
  }

  @override
  Widget build(BuildContext context) {
    final draft = ref.watch(onboardingPrefsDraftProvider);
    final catalogAsync = ref.watch(publicNutritionCatalogProvider);
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final steps = _stepsFor(draft);
    final index = _stepIndex.clamp(0, steps.length - 1);
    final step = steps[index];
    final isLast = index >= steps.length - 1;
    final overlay = colorScheme.brightness == Brightness.dark
        ? SystemUiOverlayStyle.light
        : SystemUiOverlayStyle.dark;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: overlay,
      child: Scaffold(
        body: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                colorScheme.primaryContainer,
                colorScheme.surface,
              ],
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
              child: Column(
                children: [
                  SizedBox(
                    height: 56,
                    child: Row(
                      children: [
                        Text(
                          'Pantri',
                          style: textTheme.titleLarge?.copyWith(
                            color: colorScheme.primary,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const Spacer(),
                        AppButton(
                          label: 'Skip',
                          variant: AppButtonVariant.text,
                          size: AppButtonSize.compact,
                          onPressed: _busy ? null : _skip,
                        ),
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: AppRadius.borderFull,
                    child: LinearProgressIndicator(
                      value: (index + 1) / steps.length,
                      minHeight: 8,
                      backgroundColor: colorScheme.surfaceContainerHighest,
                      color: colorScheme.secondary,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.md),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'STEP ${index + 1} OF ${steps.length}',
                      style: textTheme.labelLarge?.copyWith(
                        color: colorScheme.primary,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1.1,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  Expanded(
                    child: !_hydrated
                        ? const Center(child: CircularProgressIndicator())
                        : SingleChildScrollView(
                            child: switch (step) {
                              _QuizStep.household => _buildHousehold(
                                draft,
                                colorScheme,
                                textTheme,
                              ),
                              _QuizStep.kids => _buildKids(
                                draft,
                                colorScheme,
                                textTheme,
                              ),
                              _QuizStep.lifestyle => _buildLifestyle(
                                draft,
                                colorScheme,
                                textTheme,
                              ),
                              _QuizStep.allergies => _buildAllergies(
                                draft,
                                catalogAsync,
                                colorScheme,
                                textTheme,
                              ),
                              _QuizStep.aboutYou => _buildAboutYou(
                                draft,
                                colorScheme,
                                textTheme,
                              ),
                              _QuizStep.goals => _buildGoals(
                                draft,
                                catalogAsync,
                                colorScheme,
                                textTheme,
                              ),
                            },
                          ),
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  Row(
                    children: [
                      if (index > 0)
                        Expanded(
                          child: AppButton(
                            label: 'Back',
                            variant: AppButtonVariant.outlined,
                            onPressed: _busy ? null : () => _back(draft),
                          ),
                        ),
                      if (index > 0) const SizedBox(width: AppSpacing.md),
                      Expanded(
                        child: AppButton(
                          label: isLast ? 'Continue' : 'Next',
                          expanded: true,
                          loading: _busy,
                          onPressed: _busy ? null : () => _next(draft),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.lg),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHousehold(
    OnboardingPrefsDraft draft,
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Who are you stocking for?',
          style: textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w800,
            height: 1.15,
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        Text(
          'This sizes pantry packages and meal portions. Nutrition goals stay yours.',
          style: textTheme.bodyLarge?.copyWith(
            color: colorScheme.onSurface.withValues(alpha: 0.72),
          ),
        ),
        const SizedBox(height: AppSpacing.xl),
        for (final size in HouseholdSizing.sizeChoices)
          Padding(
            padding: const EdgeInsets.only(bottom: AppSpacing.sm),
            child: _ChoiceTile(
              selected: draft.householdSize == size ||
                  (size == 5 && draft.householdSize >= 5),
              icon: size <= 1
                  ? Icons.person_outline
                  : size == 2
                      ? Icons.people_outline
                      : Icons.groups_outlined,
              title: HouseholdSizing.sizeLabel(size),
              subtitle: HouseholdSizing.sizeSubtitle(size),
              onTap: () {
                final next = draft.copyWith(
                  householdSize: size,
                  hasChildren: size > 1 && draft.hasChildren,
                );
                ref.read(onboardingPrefsDraftProvider.notifier).persist(next);
              },
            ),
          ),
      ],
    );
  }

  Widget _buildKids(
    OnboardingPrefsDraft draft,
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Are there kids in the house?',
          style: textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w800,
            height: 1.15,
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        Text(
          'We will not ask for their height or goals. This only ranks kid-friendly meals.',
          style: textTheme.bodyLarge?.copyWith(
            color: colorScheme.onSurface.withValues(alpha: 0.72),
          ),
        ),
        const SizedBox(height: AppSpacing.xl),
        _ChoiceTile(
          selected: draft.hasChildren,
          icon: Icons.child_care_outlined,
          title: 'Yes, children eat with us',
          subtitle: 'Prefer milder, shareable dishes',
          onTap: () {
            ref
                .read(onboardingPrefsDraftProvider.notifier)
                .persist(draft.copyWith(hasChildren: true));
          },
        ),
        const SizedBox(height: AppSpacing.sm),
        _ChoiceTile(
          selected: !draft.hasChildren,
          icon: Icons.people_outline,
          title: 'Adults only',
          subtitle: 'No child-specific ranking',
          onTap: () {
            ref
                .read(onboardingPrefsDraftProvider.notifier)
                .persist(draft.copyWith(hasChildren: false));
          },
        ),
      ],
    );
  }

  Widget _buildLifestyle(
    OnboardingPrefsDraft draft,
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    final family = draft.isFamily;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          family ? 'How does this kitchen eat?' : 'How do you eat?',
          style: textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w800,
            height: 1.15,
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        Text(
          family
              ? 'What should we avoid cooking for the household as a whole?'
              : 'We will match meals and packages to this preference.',
          style: textTheme.bodyLarge?.copyWith(
            color: colorScheme.onSurface.withValues(alpha: 0.72),
          ),
        ),
        const SizedBox(height: AppSpacing.xl),
        for (final item in lifestylesForHousehold(draft.householdSize))
          Padding(
            padding: const EdgeInsets.only(bottom: AppSpacing.sm),
            child: _ChoiceTile(
              selected: draft.lifestyle == item.$1,
              icon: item.$4,
              title: item.$2,
              subtitle: item.$3,
              onTap: () {
                ref
                    .read(onboardingPrefsDraftProvider.notifier)
                    .persist(draft.copyWith(lifestyle: item.$1));
              },
            ),
          ),
      ],
    );
  }

  Widget _buildAllergies(
    OnboardingPrefsDraft draft,
    AsyncValue<NutritionCatalog> catalogAsync,
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          draft.isFamily ? 'Any allergies in the house?' : 'Any food allergies?',
          style: textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w800,
            height: 1.15,
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        Text(
          draft.isFamily
              ? 'We will keep these out of the shared kitchen, not just your plate.'
              : 'We filter the catalog so these never show up in your plan.',
          style: textTheme.bodyLarge?.copyWith(
            color: colorScheme.onSurface.withValues(alpha: 0.72),
          ),
        ),
        const SizedBox(height: AppSpacing.xl),
        catalogAsync.when(
          loading: () => const Padding(
            padding: EdgeInsets.symmetric(vertical: AppSpacing.xl),
            child: Center(child: CircularProgressIndicator()),
          ),
          error: (e, _) => Text(
            e is ApiException ? e.message : e.toString(),
            style: TextStyle(color: colorScheme.error),
          ),
          data: (catalog) {
            return Wrap(
              spacing: AppSpacing.sm,
              runSpacing: AppSpacing.sm,
              children: [
                ...catalog.allergies.map((allergy) {
                  final selected = draft.allergySlugs.contains(allergy.slug);
                  return FilterChip(
                    label: Text(allergy.name),
                    selected: selected,
                    onSelected: (_) {
                      final next = [...draft.allergySlugs];
                      if (selected) {
                        next.remove(allergy.slug);
                      } else {
                        next.add(allergy.slug);
                      }
                      ref
                          .read(onboardingPrefsDraftProvider.notifier)
                          .persist(draft.copyWith(allergySlugs: next));
                    },
                  );
                }),
                ...draft.customAllergies.map(
                  (label) => InputChip(
                    label: Text(label),
                    onDeleted: () {
                      ref.read(onboardingPrefsDraftProvider.notifier).persist(
                            draft.copyWith(
                              customAllergies: draft.customAllergies
                                  .where((e) => e != label)
                                  .toList(),
                            ),
                          );
                    },
                  ),
                ),
                ActionChip(
                  avatar: const Icon(Icons.add, size: 18),
                  label: const Text('Other'),
                  onPressed: () => _promptCustom(
                    title: 'Add custom allergy',
                    controller: _customAllergyController,
                    onSubmit: (value) {
                      final trimmed = value.trim();
                      if (trimmed.isEmpty) return;
                      if (draft.customAllergies.any(
                        (e) => e.toLowerCase() == trimmed.toLowerCase(),
                      )) {
                        return;
                      }
                      ref.read(onboardingPrefsDraftProvider.notifier).persist(
                            draft.copyWith(
                              customAllergies: [
                                ...draft.customAllergies,
                                trimmed,
                              ],
                            ),
                          );
                    },
                  ),
                ),
              ],
            );
          },
        ),
        const SizedBox(height: AppSpacing.lg),
        Text(
          'You can skip this if nobody has allergies.',
          style: textTheme.bodySmall?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }

  Widget _buildAboutYou(
    OnboardingPrefsDraft draft,
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About you',
          style: textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w800,
            height: 1.15,
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        Text(
          draft.isFamily
              ? 'Dashboard calories and macros are yours — not the whole household.'
              : 'We use this to set your daily calorie and macro targets.',
          style: textTheme.bodyLarge?.copyWith(
            color: colorScheme.onSurface.withValues(alpha: 0.72),
          ),
        ),
        const SizedBox(height: AppSpacing.xl),
        Row(
          children: [
            Expanded(
              child: _QuizNumberField(
                label: 'Age',
                value: draft.age,
                onChanged: (v) {
                  ref
                      .read(onboardingPrefsDraftProvider.notifier)
                      .persist(draft.copyWith(age: v));
                },
              ),
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: _QuizDropdownField(
                label: 'Gender',
                value: draft.gender,
                items: _genders,
                onChanged: (v) {
                  ref
                      .read(onboardingPrefsDraftProvider.notifier)
                      .persist(draft.copyWith(gender: v));
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.md),
        Row(
          children: [
            Expanded(
              child: _QuizNumberField(
                label: 'Height (cm)',
                value: draft.heightCm,
                onChanged: (v) {
                  ref
                      .read(onboardingPrefsDraftProvider.notifier)
                      .persist(draft.copyWith(heightCm: v));
                },
              ),
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: _QuizNumberField(
                label: 'Weight (kg)',
                value: draft.weightKg,
                onChanged: (v) {
                  ref
                      .read(onboardingPrefsDraftProvider.notifier)
                      .persist(draft.copyWith(weightKg: v));
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.xl),
        Text(
          'Your activity level',
          style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: AppSpacing.md),
        for (final item in _activities)
          Padding(
            padding: const EdgeInsets.only(bottom: AppSpacing.sm),
            child: _ChoiceTile(
              selected: draft.activityLevel == item.$1,
              icon: item.$4,
              title: item.$2,
              subtitle: item.$3,
              onTap: () {
                ref
                    .read(onboardingPrefsDraftProvider.notifier)
                    .persist(draft.copyWith(activityLevel: item.$1));
              },
            ),
          ),
      ],
    );
  }

  Widget _buildGoals(
    OnboardingPrefsDraft draft,
    AsyncValue<NutritionCatalog> catalogAsync,
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          draft.isFamily ? 'Your health goals' : 'What are you aiming for?',
          style: textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w800,
            height: 1.15,
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        Text(
          draft.isFamily
              ? 'We’ll stock the pantry for ${draft.householdSize} people. These goals personalize YOUR meal suggestions — not everyone in the house.'
              : 'Pick at least one. We use this for your meal plan and dashboard.',
          style: textTheme.bodyLarge?.copyWith(
            color: colorScheme.onSurface.withValues(alpha: 0.72),
          ),
        ),
        const SizedBox(height: AppSpacing.xl),
        catalogAsync.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e, _) => Text(
            e is ApiException ? e.message : e.toString(),
            style: TextStyle(color: colorScheme.error),
          ),
          data: (catalog) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: AppSpacing.sm,
                  runSpacing: AppSpacing.sm,
                  children: [
                    ...catalog.goals.map((goal) {
                      final selected = draft.goalSlugs.contains(goal.slug);
                      return FilterChip(
                        label: Text(goal.name),
                        selected: selected,
                        onSelected: (_) {
                          final next = [...draft.goalSlugs];
                          if (selected) {
                            next.remove(goal.slug);
                          } else {
                            next.add(goal.slug);
                          }
                          ref
                              .read(onboardingPrefsDraftProvider.notifier)
                              .persist(draft.copyWith(goalSlugs: next));
                        },
                      );
                    }),
                    ...draft.customGoals.map(
                      (label) => InputChip(
                        label: Text(label),
                        onDeleted: () {
                          ref.read(onboardingPrefsDraftProvider.notifier).persist(
                                draft.copyWith(
                                  customGoals: draft.customGoals
                                      .where((e) => e != label)
                                      .toList(),
                                ),
                              );
                        },
                      ),
                    ),
                    ActionChip(
                      avatar: const Icon(Icons.add, size: 18),
                      label: const Text('Other'),
                      onPressed: () => _promptCustom(
                        title: 'Add custom goal',
                        controller: _customGoalController,
                        onSubmit: (value) {
                          final trimmed = value.trim();
                          if (trimmed.isEmpty) return;
                          if (draft.customGoals.any(
                            (e) => e.toLowerCase() == trimmed.toLowerCase(),
                          )) {
                            return;
                          }
                          ref.read(onboardingPrefsDraftProvider.notifier).persist(
                                draft.copyWith(
                                  customGoals: [...draft.customGoals, trimmed],
                                ),
                              );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ],
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
}

class _ChoiceTile extends StatelessWidget {
  const _ChoiceTile({
    required this.selected,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  final bool selected;
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return InkWell(
      onTap: onTap,
      borderRadius: AppRadius.borderMd,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(AppSpacing.md),
        decoration: BoxDecoration(
          borderRadius: AppRadius.borderMd,
          border: Border.all(
            color: selected ? colorScheme.primary : colorScheme.outlineVariant,
            width: selected ? 2 : 1,
          ),
          color: selected
              ? colorScheme.primaryContainer.withValues(alpha: 0.2)
              : colorScheme.surface.withValues(alpha: 0.72),
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

class _QuizNumberField extends StatelessWidget {
  const _QuizNumberField({
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

class _QuizDropdownField extends StatelessWidget {
  const _QuizDropdownField({
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
          isExpanded: true,
          items: items
              .map(
                (item) => DropdownMenuItem(
                  value: item,
                  child: Text(item, overflow: TextOverflow.ellipsis),
                ),
              )
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
