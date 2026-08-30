import '../../nutrition/domain/household_sizing.dart';
import '../../nutrition/domain/nutrition_models.dart';

/// Device-local preference quiz answers, stored by slug until register.
class OnboardingPrefsDraft {
  const OnboardingPrefsDraft({
    this.householdSize = 1,
    this.hasChildren = false,
    this.lifestyle = 'EVERYTHING',
    this.allergySlugs = const [],
    this.customAllergies = const [],
    this.age = 28,
    this.gender = 'Prefer not to say',
    this.heightCm = 175,
    this.weightKg = 70,
    this.activityLevel = 'MODERATE',
    this.goalSlugs = const [],
    this.customGoals = const [],
    this.isComplete = false,
    this.step = 0,
  });

  final int householdSize;
  final bool hasChildren;
  final String lifestyle;
  final List<String> allergySlugs;
  final List<String> customAllergies;
  final int age;
  final String gender;
  final int heightCm;
  final int weightKg;
  final String activityLevel;
  final List<String> goalSlugs;
  final List<String> customGoals;
  final bool isComplete;
  final int step;

  bool get isFamily => householdSize > 1;

  OnboardingPrefsDraft copyWith({
    int? householdSize,
    bool? hasChildren,
    String? lifestyle,
    List<String>? allergySlugs,
    List<String>? customAllergies,
    int? age,
    String? gender,
    int? heightCm,
    int? weightKg,
    String? activityLevel,
    List<String>? goalSlugs,
    List<String>? customGoals,
    bool? isComplete,
    int? step,
  }) {
    final nextSize = HouseholdSizing.clampSize(
      householdSize ?? this.householdSize,
    );
    final nextLifestyle = lifestyle ?? this.lifestyle;
    return OnboardingPrefsDraft(
      householdSize: nextSize,
      hasChildren: nextSize > 1 && (hasChildren ?? this.hasChildren),
      lifestyle: nextSize <= 1 && nextLifestyle == 'MIXED'
          ? 'EVERYTHING'
          : nextLifestyle,
      allergySlugs: allergySlugs ?? this.allergySlugs,
      customAllergies: customAllergies ?? this.customAllergies,
      age: age ?? this.age,
      gender: gender ?? this.gender,
      heightCm: heightCm ?? this.heightCm,
      weightKg: weightKg ?? this.weightKg,
      activityLevel: activityLevel ?? this.activityLevel,
      goalSlugs: goalSlugs ?? this.goalSlugs,
      customGoals: customGoals ?? this.customGoals,
      isComplete: isComplete ?? this.isComplete,
      step: step ?? this.step,
    );
  }

  bool get canComplete {
    return goalSlugs.isNotEmpty || customGoals.isNotEmpty;
  }

  UpsertHealthProfileRequest toUpsertRequest(NutritionCatalog catalog) {
    final allergyBySlug = {for (final a in catalog.allergies) a.slug: a.id};
    final goalBySlug = {for (final g in catalog.goals) g.slug: g.id};
    return UpsertHealthProfileRequest(
      age: age,
      gender: gender,
      heightCm: heightCm,
      weightKg: weightKg,
      lifestyle: lifestyle,
      activityLevel: activityLevel,
      householdSize: HouseholdSizing.clampSize(householdSize),
      hasChildren: householdSize > 1 && hasChildren,
      allergies: [
        ...allergySlugs
            .map((slug) => allergyBySlug[slug])
            .whereType<String>()
            .map((id) => AllergySelectionRequest(allergyId: id)),
        ...customAllergies.map(
          (label) => AllergySelectionRequest(customLabel: label),
        ),
      ],
      goals: [
        ...goalSlugs
            .map((slug) => goalBySlug[slug])
            .whereType<String>()
            .map((id) => GoalSelectionRequest(goalId: id)),
        ...customGoals.map((label) => GoalSelectionRequest(customLabel: label)),
      ],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'householdSize': householdSize,
      'hasChildren': hasChildren,
      'lifestyle': lifestyle,
      'allergySlugs': allergySlugs,
      'customAllergies': customAllergies,
      'age': age,
      'gender': gender,
      'heightCm': heightCm,
      'weightKg': weightKg,
      'activityLevel': activityLevel,
      'goalSlugs': goalSlugs,
      'customGoals': customGoals,
      'isComplete': isComplete,
      'step': step,
    };
  }

  factory OnboardingPrefsDraft.fromJson(Map<String, dynamic> json) {
    List<String> strings(String key) {
      final raw = json[key];
      if (raw is! List) return const [];
      return raw.map((e) => e.toString()).toList();
    }

    return OnboardingPrefsDraft(
      householdSize: HouseholdSizing.clampSize(
        (json['householdSize'] as num?)?.toInt() ?? 1,
      ),
      hasChildren: json['hasChildren'] == true,
      lifestyle: json['lifestyle'] as String? ?? 'EVERYTHING',
      allergySlugs: strings('allergySlugs'),
      customAllergies: strings('customAllergies'),
      age: (json['age'] as num?)?.toInt() ?? 28,
      gender: json['gender'] as String? ?? 'Prefer not to say',
      heightCm: (json['heightCm'] as num?)?.toInt() ?? 175,
      weightKg: (json['weightKg'] as num?)?.toInt() ?? 70,
      activityLevel: json['activityLevel'] as String? ?? 'MODERATE',
      goalSlugs: strings('goalSlugs'),
      customGoals: strings('customGoals'),
      isComplete: json['isComplete'] == true,
      step: (json['step'] as num?)?.toInt() ?? 0,
    );
  }
}
