// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AllergyOption _$AllergyOptionFromJson(Map<String, dynamic> json) =>
    _AllergyOption(
      id: json['id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      isActive: json['isActive'] as bool,
      sortOrder: (json['sortOrder'] as num).toInt(),
    );

Map<String, dynamic> _$AllergyOptionToJson(_AllergyOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'isActive': instance.isActive,
      'sortOrder': instance.sortOrder,
    };

_GoalOption _$GoalOptionFromJson(Map<String, dynamic> json) => _GoalOption(
  id: json['id'] as String,
  name: json['name'] as String,
  slug: json['slug'] as String,
  description: json['description'] as String,
  iconKey: json['iconKey'] as String,
  isActive: json['isActive'] as bool,
  sortOrder: (json['sortOrder'] as num).toInt(),
);

Map<String, dynamic> _$GoalOptionToJson(_GoalOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'iconKey': instance.iconKey,
      'isActive': instance.isActive,
      'sortOrder': instance.sortOrder,
    };

_NutritionCatalog _$NutritionCatalogFromJson(Map<String, dynamic> json) =>
    _NutritionCatalog(
      allergies: (json['allergies'] as List<dynamic>)
          .map((e) => AllergyOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      goals: (json['goals'] as List<dynamic>)
          .map((e) => GoalOption.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NutritionCatalogToJson(_NutritionCatalog instance) =>
    <String, dynamic>{'allergies': instance.allergies, 'goals': instance.goals};

_HealthProfileAllergy _$HealthProfileAllergyFromJson(
  Map<String, dynamic> json,
) => _HealthProfileAllergy(
  id: json['id'] as String,
  allergyId: json['allergyId'] as String?,
  allergyName: json['allergyName'] as String?,
  customLabel: json['customLabel'] as String?,
);

Map<String, dynamic> _$HealthProfileAllergyToJson(
  _HealthProfileAllergy instance,
) => <String, dynamic>{
  'id': instance.id,
  'allergyId': instance.allergyId,
  'allergyName': instance.allergyName,
  'customLabel': instance.customLabel,
};

_HealthProfileGoal _$HealthProfileGoalFromJson(Map<String, dynamic> json) =>
    _HealthProfileGoal(
      id: json['id'] as String,
      goalId: json['goalId'] as String?,
      goalName: json['goalName'] as String?,
      customLabel: json['customLabel'] as String?,
    );

Map<String, dynamic> _$HealthProfileGoalToJson(_HealthProfileGoal instance) =>
    <String, dynamic>{
      'id': instance.id,
      'goalId': instance.goalId,
      'goalName': instance.goalName,
      'customLabel': instance.customLabel,
    };

_HealthProfile _$HealthProfileFromJson(Map<String, dynamic> json) =>
    _HealthProfile(
      id: json['id'] as String,
      employeeId: json['employeeId'] as String,
      age: (json['age'] as num).toInt(),
      gender: json['gender'] as String,
      heightCm: (json['heightCm'] as num).toInt(),
      weightKg: (json['weightKg'] as num).toInt(),
      lifestyle: json['lifestyle'] as String,
      activityLevel: json['activityLevel'] as String,
      allergies: (json['allergies'] as List<dynamic>)
          .map((e) => HealthProfileAllergy.fromJson(e as Map<String, dynamic>))
          .toList(),
      goals: (json['goals'] as List<dynamic>)
          .map((e) => HealthProfileGoal.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$HealthProfileToJson(_HealthProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employeeId': instance.employeeId,
      'age': instance.age,
      'gender': instance.gender,
      'heightCm': instance.heightCm,
      'weightKg': instance.weightKg,
      'lifestyle': instance.lifestyle,
      'activityLevel': instance.activityLevel,
      'allergies': instance.allergies,
      'goals': instance.goals,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_UpsertHealthProfileRequest _$UpsertHealthProfileRequestFromJson(
  Map<String, dynamic> json,
) => _UpsertHealthProfileRequest(
  age: (json['age'] as num).toInt(),
  gender: json['gender'] as String,
  heightCm: (json['heightCm'] as num).toInt(),
  weightKg: (json['weightKg'] as num).toInt(),
  lifestyle: json['lifestyle'] as String,
  activityLevel: json['activityLevel'] as String,
  allergies: (json['allergies'] as List<dynamic>)
      .map((e) => AllergySelectionRequest.fromJson(e as Map<String, dynamic>))
      .toList(),
  goals: (json['goals'] as List<dynamic>)
      .map((e) => GoalSelectionRequest.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$UpsertHealthProfileRequestToJson(
  _UpsertHealthProfileRequest instance,
) => <String, dynamic>{
  'age': instance.age,
  'gender': instance.gender,
  'heightCm': instance.heightCm,
  'weightKg': instance.weightKg,
  'lifestyle': instance.lifestyle,
  'activityLevel': instance.activityLevel,
  'allergies': instance.allergies,
  'goals': instance.goals,
};

_AllergySelectionRequest _$AllergySelectionRequestFromJson(
  Map<String, dynamic> json,
) => _AllergySelectionRequest(
  allergyId: json['allergyId'] as String?,
  customLabel: json['customLabel'] as String?,
);

Map<String, dynamic> _$AllergySelectionRequestToJson(
  _AllergySelectionRequest instance,
) => <String, dynamic>{
  'allergyId': instance.allergyId,
  'customLabel': instance.customLabel,
};

_GoalSelectionRequest _$GoalSelectionRequestFromJson(
  Map<String, dynamic> json,
) => _GoalSelectionRequest(
  goalId: json['goalId'] as String?,
  customLabel: json['customLabel'] as String?,
);

Map<String, dynamic> _$GoalSelectionRequestToJson(
  _GoalSelectionRequest instance,
) => <String, dynamic>{
  'goalId': instance.goalId,
  'customLabel': instance.customLabel,
};

_MealPlanSummary _$MealPlanSummaryFromJson(Map<String, dynamic> json) =>
    _MealPlanSummary(
      id: json['id'] as String,
      employeeId: json['employeeId'] as String,
      employeeName: json['employeeName'] as String,
      employerName: json['employerName'] as String,
      status: json['status'] as String,
      title: json['title'] as String,
      packageId: json['packageId'] as String?,
      failureReason: json['failureReason'] as String?,
      adminNote: json['adminNote'] as String?,
      reviewedAt: json['reviewedAt'] as String?,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$MealPlanSummaryToJson(_MealPlanSummary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employeeId': instance.employeeId,
      'employeeName': instance.employeeName,
      'employerName': instance.employerName,
      'status': instance.status,
      'title': instance.title,
      'packageId': instance.packageId,
      'failureReason': instance.failureReason,
      'adminNote': instance.adminNote,
      'reviewedAt': instance.reviewedAt,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_MealPlanItem _$MealPlanItemFromJson(Map<String, dynamic> json) =>
    _MealPlanItem(
      id: json['id'] as String,
      mealSlot: json['mealSlot'] as String,
      title: json['title'] as String,
      rationale: json['rationale'] as String,
      requestedProductName: json['requestedProductName'] as String,
      productId: json['productId'] as String?,
      productName: json['productName'] as String?,
      productImageUrl: json['productImageUrl'] as String?,
      origin: json['origin'] as String?,
      nutritionFacts:
          (json['nutritionFacts'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const <String, String>{},
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const <String>[],
      matchType: json['matchType'] as String,
      quantity: (json['quantity'] as num).toInt(),
      sortOrder: (json['sortOrder'] as num).toInt(),
    );

Map<String, dynamic> _$MealPlanItemToJson(_MealPlanItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mealSlot': instance.mealSlot,
      'title': instance.title,
      'rationale': instance.rationale,
      'requestedProductName': instance.requestedProductName,
      'productId': instance.productId,
      'productName': instance.productName,
      'productImageUrl': instance.productImageUrl,
      'origin': instance.origin,
      'nutritionFacts': instance.nutritionFacts,
      'tags': instance.tags,
      'matchType': instance.matchType,
      'quantity': instance.quantity,
      'sortOrder': instance.sortOrder,
    };

_MealPlanDay _$MealPlanDayFromJson(Map<String, dynamic> json) => _MealPlanDay(
  id: json['id'] as String,
  dayIndex: (json['dayIndex'] as num).toInt(),
  label: json['label'] as String,
  items: (json['items'] as List<dynamic>)
      .map((e) => MealPlanItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MealPlanDayToJson(_MealPlanDay instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dayIndex': instance.dayIndex,
      'label': instance.label,
      'items': instance.items,
    };

_MealPlanProfileSnapshot _$MealPlanProfileSnapshotFromJson(
  Map<String, dynamic> json,
) => _MealPlanProfileSnapshot(
  age: (json['age'] as num).toInt(),
  gender: json['gender'] as String,
  heightCm: (json['heightCm'] as num).toInt(),
  weightKg: (json['weightKg'] as num).toInt(),
  lifestyle: json['lifestyle'] as String,
  activityLevel: json['activityLevel'] as String,
  allergies: (json['allergies'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  goals: (json['goals'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$MealPlanProfileSnapshotToJson(
  _MealPlanProfileSnapshot instance,
) => <String, dynamic>{
  'age': instance.age,
  'gender': instance.gender,
  'heightCm': instance.heightCm,
  'weightKg': instance.weightKg,
  'lifestyle': instance.lifestyle,
  'activityLevel': instance.activityLevel,
  'allergies': instance.allergies,
  'goals': instance.goals,
};

_MealPlanDetail _$MealPlanDetailFromJson(Map<String, dynamic> json) =>
    _MealPlanDetail(
      id: json['id'] as String,
      employeeId: json['employeeId'] as String,
      employeeName: json['employeeName'] as String,
      employerName: json['employerName'] as String,
      status: json['status'] as String,
      title: json['title'] as String,
      packageId: json['packageId'] as String?,
      failureReason: json['failureReason'] as String?,
      adminNote: json['adminNote'] as String?,
      reviewedAt: json['reviewedAt'] as String?,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      days: (json['days'] as List<dynamic>)
          .map((e) => MealPlanDay.fromJson(e as Map<String, dynamic>))
          .toList(),
      profile: json['profile'] == null
          ? null
          : MealPlanProfileSnapshot.fromJson(
              json['profile'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$MealPlanDetailToJson(_MealPlanDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employeeId': instance.employeeId,
      'employeeName': instance.employeeName,
      'employerName': instance.employerName,
      'status': instance.status,
      'title': instance.title,
      'packageId': instance.packageId,
      'failureReason': instance.failureReason,
      'adminNote': instance.adminNote,
      'reviewedAt': instance.reviewedAt,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'days': instance.days,
      'profile': instance.profile,
    };
