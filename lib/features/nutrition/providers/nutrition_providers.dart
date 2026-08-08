import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/nutrition_repository.dart';
import '../domain/nutrition_models.dart';

final nutritionCatalogProvider =
    FutureProvider.autoDispose<NutritionCatalog>((ref) {
  return ref.watch(nutritionRepositoryProvider).getCatalog();
});

final healthProfileProvider =
    FutureProvider.autoDispose<HealthProfile?>((ref) {
  return ref.watch(nutritionRepositoryProvider).getProfile();
});

final mealPlansProvider =
    FutureProvider.autoDispose<List<MealPlanSummary>>((ref) {
  return ref.watch(nutritionRepositoryProvider).listMealPlans();
});

final mealPlanDetailProvider =
    FutureProvider.autoDispose.family<MealPlanDetail, String>((ref, id) {
  return ref.watch(nutritionRepositoryProvider).getMealPlan(id);
});

class QuestionnaireDraft {
  const QuestionnaireDraft({
    this.age = 28,
    this.gender = 'Prefer not to say',
    this.heightCm = 175,
    this.weightKg = 70,
    this.lifestyle = 'EVERYTHING',
    this.activityLevel = 'MODERATE',
    this.selectedAllergyIds = const {},
    this.customAllergies = const [],
    this.selectedGoalIds = const {},
    this.customGoals = const [],
  });

  final int age;
  final String gender;
  final int heightCm;
  final int weightKg;
  final String lifestyle;
  final String activityLevel;
  final Set<String> selectedAllergyIds;
  final List<String> customAllergies;
  final Set<String> selectedGoalIds;
  final List<String> customGoals;

  QuestionnaireDraft copyWith({
    int? age,
    String? gender,
    int? heightCm,
    int? weightKg,
    String? lifestyle,
    String? activityLevel,
    Set<String>? selectedAllergyIds,
    List<String>? customAllergies,
    Set<String>? selectedGoalIds,
    List<String>? customGoals,
  }) {
    return QuestionnaireDraft(
      age: age ?? this.age,
      gender: gender ?? this.gender,
      heightCm: heightCm ?? this.heightCm,
      weightKg: weightKg ?? this.weightKg,
      lifestyle: lifestyle ?? this.lifestyle,
      activityLevel: activityLevel ?? this.activityLevel,
      selectedAllergyIds: selectedAllergyIds ?? this.selectedAllergyIds,
      customAllergies: customAllergies ?? this.customAllergies,
      selectedGoalIds: selectedGoalIds ?? this.selectedGoalIds,
      customGoals: customGoals ?? this.customGoals,
    );
  }

  UpsertHealthProfileRequest toRequest() {
    return UpsertHealthProfileRequest(
      age: age,
      gender: gender,
      heightCm: heightCm,
      weightKg: weightKg,
      lifestyle: lifestyle,
      activityLevel: activityLevel,
      allergies: [
        ...selectedAllergyIds.map(
          (id) => AllergySelectionRequest(allergyId: id),
        ),
        ...customAllergies.map(
          (label) => AllergySelectionRequest(customLabel: label),
        ),
      ],
      goals: [
        ...selectedGoalIds.map((id) => GoalSelectionRequest(goalId: id)),
        ...customGoals.map(
          (label) => GoalSelectionRequest(customLabel: label),
        ),
      ],
    );
  }
}

class QuestionnaireNotifier extends Notifier<QuestionnaireDraft> {
  @override
  QuestionnaireDraft build() => const QuestionnaireDraft();

  void hydrate(HealthProfile? profile) {
    if (profile == null) return;
    state = QuestionnaireDraft(
      age: profile.age,
      gender: profile.gender,
      heightCm: profile.heightCm,
      weightKg: profile.weightKg,
      lifestyle: profile.lifestyle,
      activityLevel: profile.activityLevel,
      selectedAllergyIds: {
        for (final a in profile.allergies)
          if (a.allergyId != null) a.allergyId!,
      },
      customAllergies: [
        for (final a in profile.allergies)
          if (a.customLabel != null && a.customLabel!.trim().isNotEmpty)
            a.customLabel!.trim(),
      ],
      selectedGoalIds: {
        for (final g in profile.goals)
          if (g.goalId != null) g.goalId!,
      },
      customGoals: [
        for (final g in profile.goals)
          if (g.customLabel != null && g.customLabel!.trim().isNotEmpty)
            g.customLabel!.trim(),
      ],
    );
  }

  void setAge(int value) => state = state.copyWith(age: value);
  void setGender(String value) => state = state.copyWith(gender: value);
  void setHeightCm(int value) => state = state.copyWith(heightCm: value);
  void setWeightKg(int value) => state = state.copyWith(weightKg: value);
  void setLifestyle(String value) => state = state.copyWith(lifestyle: value);
  void setActivityLevel(String value) =>
      state = state.copyWith(activityLevel: value);

  void toggleAllergy(String id) {
    final next = {...state.selectedAllergyIds};
    if (next.contains(id)) {
      next.remove(id);
    } else {
      next.add(id);
    }
    state = state.copyWith(selectedAllergyIds: next);
  }

  void addCustomAllergy(String label) {
    final trimmed = label.trim();
    if (trimmed.isEmpty) return;
    if (state.customAllergies
        .any((e) => e.toLowerCase() == trimmed.toLowerCase())) {
      return;
    }
    state = state.copyWith(
      customAllergies: [...state.customAllergies, trimmed],
    );
  }

  void removeCustomAllergy(String label) {
    state = state.copyWith(
      customAllergies:
          state.customAllergies.where((e) => e != label).toList(),
    );
  }

  void toggleGoal(String id) {
    final next = {...state.selectedGoalIds};
    if (next.contains(id)) {
      next.remove(id);
    } else {
      next.add(id);
    }
    state = state.copyWith(selectedGoalIds: next);
  }

  void addCustomGoal(String label) {
    final trimmed = label.trim();
    if (trimmed.isEmpty) return;
    if (state.customGoals
        .any((e) => e.toLowerCase() == trimmed.toLowerCase())) {
      return;
    }
    state = state.copyWith(customGoals: [...state.customGoals, trimmed]);
  }

  void removeCustomGoal(String label) {
    state = state.copyWith(
      customGoals: state.customGoals.where((e) => e != label).toList(),
    );
  }
}

final questionnaireDraftProvider =
    NotifierProvider<QuestionnaireNotifier, QuestionnaireDraft>(
  QuestionnaireNotifier.new,
);
