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
      targetEnergyKcal: (json['targetEnergyKcal'] as num?)?.toInt() ?? 0,
      targetProteinMg: (json['targetProteinMg'] as num?)?.toInt() ?? 0,
      targetCarbsMg: (json['targetCarbsMg'] as num?)?.toInt() ?? 0,
      targetFatMg: (json['targetFatMg'] as num?)?.toInt() ?? 0,
      targetFiberMg: (json['targetFiberMg'] as num?)?.toInt() ?? 0,
      targetSugarMg: (json['targetSugarMg'] as num?)?.toInt() ?? 0,
      targetSodiumMg: (json['targetSodiumMg'] as num?)?.toInt() ?? 0,
      targetIronUg: (json['targetIronUg'] as num?)?.toInt() ?? 0,
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
      'targetEnergyKcal': instance.targetEnergyKcal,
      'targetProteinMg': instance.targetProteinMg,
      'targetCarbsMg': instance.targetCarbsMg,
      'targetFatMg': instance.targetFatMg,
      'targetFiberMg': instance.targetFiberMg,
      'targetSugarMg': instance.targetSugarMg,
      'targetSodiumMg': instance.targetSodiumMg,
      'targetIronUg': instance.targetIronUg,
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
      source: json['source'] as String? ?? 'AI',
      title: json['title'] as String,
      startsOn: json['startsOn'] as String?,
      endsOn: json['endsOn'] as String?,
      activatedAt: json['activatedAt'] as String?,
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
      'source': instance.source,
      'title': instance.title,
      'startsOn': instance.startsOn,
      'endsOn': instance.endsOn,
      'activatedAt': instance.activatedAt,
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
      quantityCanonical: (json['quantityCanonical'] as num?)?.toInt() ?? 0,
      measureUnitId: json['measureUnitId'] as String?,
      measureUnitLabel: json['measureUnitLabel'] as String?,
      recipeId: json['recipeId'] as String?,
      recipe: json['recipe'] == null
          ? null
          : RecipeDetail.fromJson(json['recipe'] as Map<String, dynamic>),
      cookedAt: json['cookedAt'] as String?,
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
      'quantityCanonical': instance.quantityCanonical,
      'measureUnitId': instance.measureUnitId,
      'measureUnitLabel': instance.measureUnitLabel,
      'recipeId': instance.recipeId,
      'recipe': instance.recipe,
      'cookedAt': instance.cookedAt,
      'sortOrder': instance.sortOrder,
    };

_MealPlanDay _$MealPlanDayFromJson(Map<String, dynamic> json) => _MealPlanDay(
  id: json['id'] as String,
  dayIndex: (json['dayIndex'] as num).toInt(),
  label: json['label'] as String,
  planDate: json['planDate'] as String?,
  items: (json['items'] as List<dynamic>)
      .map((e) => MealPlanItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MealPlanDayToJson(_MealPlanDay instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dayIndex': instance.dayIndex,
      'label': instance.label,
      'planDate': instance.planDate,
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
  targetEnergyKcal: (json['targetEnergyKcal'] as num?)?.toInt() ?? 0,
  targetProteinMg: (json['targetProteinMg'] as num?)?.toInt() ?? 0,
  targetCarbsMg: (json['targetCarbsMg'] as num?)?.toInt() ?? 0,
  targetFatMg: (json['targetFatMg'] as num?)?.toInt() ?? 0,
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
  'targetEnergyKcal': instance.targetEnergyKcal,
  'targetProteinMg': instance.targetProteinMg,
  'targetCarbsMg': instance.targetCarbsMg,
  'targetFatMg': instance.targetFatMg,
};

_MealPlanDetail _$MealPlanDetailFromJson(Map<String, dynamic> json) =>
    _MealPlanDetail(
      id: json['id'] as String,
      employeeId: json['employeeId'] as String,
      employeeName: json['employeeName'] as String,
      employerName: json['employerName'] as String,
      status: json['status'] as String,
      source: json['source'] as String? ?? 'AI',
      title: json['title'] as String,
      startsOn: json['startsOn'] as String?,
      endsOn: json['endsOn'] as String?,
      activatedAt: json['activatedAt'] as String?,
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
      'source': instance.source,
      'title': instance.title,
      'startsOn': instance.startsOn,
      'endsOn': instance.endsOn,
      'activatedAt': instance.activatedAt,
      'packageId': instance.packageId,
      'failureReason': instance.failureReason,
      'adminNote': instance.adminNote,
      'reviewedAt': instance.reviewedAt,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'days': instance.days,
      'profile': instance.profile,
    };

_RecipeIngredient _$RecipeIngredientFromJson(Map<String, dynamic> json) =>
    _RecipeIngredient(
      id: json['id'] as String,
      productId: json['productId'] as String,
      productName: json['productName'] as String,
      productImageUrl: json['productImageUrl'] as String,
      measureUnitId: json['measureUnitId'] as String?,
      measureUnitLabel: json['measureUnitLabel'] as String?,
      quantity: (json['quantity'] as num).toInt(),
      quantityCanonical: (json['quantityCanonical'] as num).toInt(),
      haveCanonical: (json['haveCanonical'] as num?)?.toInt() ?? 0,
      isShort: json['isShort'] as bool? ?? false,
      sortOrder: (json['sortOrder'] as num).toInt(),
    );

Map<String, dynamic> _$RecipeIngredientToJson(_RecipeIngredient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'productName': instance.productName,
      'productImageUrl': instance.productImageUrl,
      'measureUnitId': instance.measureUnitId,
      'measureUnitLabel': instance.measureUnitLabel,
      'quantity': instance.quantity,
      'quantityCanonical': instance.quantityCanonical,
      'haveCanonical': instance.haveCanonical,
      'isShort': instance.isShort,
      'sortOrder': instance.sortOrder,
    };

_RecipeDetail _$RecipeDetailFromJson(Map<String, dynamic> json) =>
    _RecipeDetail(
      id: json['id'] as String,
      employeeId: json['employeeId'] as String,
      title: json['title'] as String,
      mealSlot: json['mealSlot'] as String,
      instructions: json['instructions'] as String? ?? '',
      instructionSteps:
          (json['instructionSteps'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      rationale: json['rationale'] as String? ?? '',
      source: json['source'] as String? ?? 'AI',
      cookability: json['cookability'] as String? ?? 'partial',
      nutrition: json['nutrition'] == null
          ? const CanonicalNutrition()
          : CanonicalNutrition.fromJson(
              json['nutrition'] as Map<String, dynamic>,
            ),
      ingredients:
          (json['ingredients'] as List<dynamic>?)
              ?.map((e) => RecipeIngredient.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <RecipeIngredient>[],
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$RecipeDetailToJson(_RecipeDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employeeId': instance.employeeId,
      'title': instance.title,
      'mealSlot': instance.mealSlot,
      'instructions': instance.instructions,
      'instructionSteps': instance.instructionSteps,
      'rationale': instance.rationale,
      'source': instance.source,
      'cookability': instance.cookability,
      'nutrition': instance.nutrition,
      'ingredients': instance.ingredients,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_RestockAlert _$RestockAlertFromJson(Map<String, dynamic> json) =>
    _RestockAlert(
      id: json['id'] as String,
      employeeId: json['employeeId'] as String,
      stockId: json['stockId'] as String,
      productId: json['productId'] as String,
      productName: json['productName'] as String,
      productImageUrl: json['productImageUrl'] as String,
      status: json['status'] as String,
      quantityCanonical: (json['quantityCanonical'] as num).toInt(),
      suggestedPackId: json['suggestedPackId'] as String?,
      suggestedPackLabel: json['suggestedPackLabel'] as String?,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$RestockAlertToJson(_RestockAlert instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employeeId': instance.employeeId,
      'stockId': instance.stockId,
      'productId': instance.productId,
      'productName': instance.productName,
      'productImageUrl': instance.productImageUrl,
      'status': instance.status,
      'quantityCanonical': instance.quantityCanonical,
      'suggestedPackId': instance.suggestedPackId,
      'suggestedPackLabel': instance.suggestedPackLabel,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_HouseholdStockProduct _$HouseholdStockProductFromJson(
  Map<String, dynamic> json,
) => _HouseholdStockProduct(
  id: json['id'] as String,
  name: json['name'] as String,
  imageUrl: json['imageUrl'] as String,
  slug: json['slug'] as String,
);

Map<String, dynamic> _$HouseholdStockProductToJson(
  _HouseholdStockProduct instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'imageUrl': instance.imageUrl,
  'slug': instance.slug,
};

_HouseholdStockItem _$HouseholdStockItemFromJson(Map<String, dynamic> json) =>
    _HouseholdStockItem(
      id: json['id'] as String,
      employeeId: json['employeeId'] as String,
      productId: json['productId'] as String,
      product: HouseholdStockProduct.fromJson(
        json['product'] as Map<String, dynamic>,
      ),
      quantityCanonical: (json['quantityCanonical'] as num).toInt(),
      restockThresholdCanonical:
          (json['restockThresholdCanonical'] as num?)?.toInt() ?? 0,
      displayQuantity: json['displayQuantity'] as String,
      displayUnit: json['displayUnit'] as String,
      isLow: json['isLow'] as bool? ?? false,
      isEmpty: json['isEmpty'] as bool? ?? false,
      dimension: json['dimension'] as String? ?? 'MASS',
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$HouseholdStockItemToJson(_HouseholdStockItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employeeId': instance.employeeId,
      'productId': instance.productId,
      'product': instance.product,
      'quantityCanonical': instance.quantityCanonical,
      'restockThresholdCanonical': instance.restockThresholdCanonical,
      'displayQuantity': instance.displayQuantity,
      'displayUnit': instance.displayUnit,
      'isLow': instance.isLow,
      'isEmpty': instance.isEmpty,
      'dimension': instance.dimension,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_CookMealResult _$CookMealResultFromJson(
  Map<String, dynamic> json,
) => _CookMealResult(
  recipe: RecipeDetail.fromJson(json['recipe'] as Map<String, dynamic>),
  mealPlanItemId: json['mealPlanItemId'] as String?,
  nutrition: json['nutrition'] == null
      ? const CanonicalNutrition()
      : CanonicalNutrition.fromJson(json['nutrition'] as Map<String, dynamic>),
  cookedAt: json['cookedAt'] as String,
  restockAlerts:
      (json['restockAlerts'] as List<dynamic>?)
          ?.map((e) => RestockAlert.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <RestockAlert>[],
  updatedStock:
      (json['updatedStock'] as List<dynamic>?)
          ?.map((e) => HouseholdStockItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <HouseholdStockItem>[],
);

Map<String, dynamic> _$CookMealResultToJson(_CookMealResult instance) =>
    <String, dynamic>{
      'recipe': instance.recipe,
      'mealPlanItemId': instance.mealPlanItemId,
      'nutrition': instance.nutrition,
      'cookedAt': instance.cookedAt,
      'restockAlerts': instance.restockAlerts,
      'updatedStock': instance.updatedStock,
    };

_NutrientProgress _$NutrientProgressFromJson(Map<String, dynamic> json) =>
    _NutrientProgress(
      consumed: (json['consumed'] as num?)?.toInt() ?? 0,
      target: (json['target'] as num?)?.toInt() ?? 0,
      percent: (json['percent'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$NutrientProgressToJson(_NutrientProgress instance) =>
    <String, dynamic>{
      'consumed': instance.consumed,
      'target': instance.target,
      'percent': instance.percent,
    };

_NutritionProgressTotals _$NutritionProgressTotalsFromJson(
  Map<String, dynamic> json,
) => _NutritionProgressTotals(
  energyKcal: json['energyKcal'] == null
      ? const NutrientProgress()
      : NutrientProgress.fromJson(json['energyKcal'] as Map<String, dynamic>),
  proteinMg: json['proteinMg'] == null
      ? const NutrientProgress()
      : NutrientProgress.fromJson(json['proteinMg'] as Map<String, dynamic>),
  carbsMg: json['carbsMg'] == null
      ? const NutrientProgress()
      : NutrientProgress.fromJson(json['carbsMg'] as Map<String, dynamic>),
  fatMg: json['fatMg'] == null
      ? const NutrientProgress()
      : NutrientProgress.fromJson(json['fatMg'] as Map<String, dynamic>),
  fiberMg: json['fiberMg'] == null
      ? const NutrientProgress()
      : NutrientProgress.fromJson(json['fiberMg'] as Map<String, dynamic>),
  sugarMg: json['sugarMg'] == null
      ? const NutrientProgress()
      : NutrientProgress.fromJson(json['sugarMg'] as Map<String, dynamic>),
  sodiumMg: json['sodiumMg'] == null
      ? const NutrientProgress()
      : NutrientProgress.fromJson(json['sodiumMg'] as Map<String, dynamic>),
  ironUg: json['ironUg'] == null
      ? const NutrientProgress()
      : NutrientProgress.fromJson(json['ironUg'] as Map<String, dynamic>),
);

Map<String, dynamic> _$NutritionProgressTotalsToJson(
  _NutritionProgressTotals instance,
) => <String, dynamic>{
  'energyKcal': instance.energyKcal,
  'proteinMg': instance.proteinMg,
  'carbsMg': instance.carbsMg,
  'fatMg': instance.fatMg,
  'fiberMg': instance.fiberMg,
  'sugarMg': instance.sugarMg,
  'sodiumMg': instance.sodiumMg,
  'ironUg': instance.ironUg,
};

_NutritionProgressDay _$NutritionProgressDayFromJson(
  Map<String, dynamic> json,
) => _NutritionProgressDay(
  day: json['day'] as String,
  consumed: json['consumed'] == null
      ? const CanonicalNutrition()
      : CanonicalNutrition.fromJson(json['consumed'] as Map<String, dynamic>),
  cookedCount: (json['cookedCount'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$NutritionProgressDayToJson(
  _NutritionProgressDay instance,
) => <String, dynamic>{
  'day': instance.day,
  'consumed': instance.consumed,
  'cookedCount': instance.cookedCount,
};

_CookedMealSummary _$CookedMealSummaryFromJson(Map<String, dynamic> json) =>
    _CookedMealSummary(
      id: json['id'] as String,
      recipeId: json['recipeId'] as String,
      title: json['title'] as String,
      mealSlot: json['mealSlot'] as String,
      cookedAt: json['cookedAt'] as String,
      nutrition: json['nutrition'] == null
          ? const CanonicalNutrition()
          : CanonicalNutrition.fromJson(
              json['nutrition'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$CookedMealSummaryToJson(_CookedMealSummary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recipeId': instance.recipeId,
      'title': instance.title,
      'mealSlot': instance.mealSlot,
      'cookedAt': instance.cookedAt,
      'nutrition': instance.nutrition,
    };

_NutritionProgressReport _$NutritionProgressReportFromJson(
  Map<String, dynamic> json,
) => _NutritionProgressReport(
  from: json['from'] as String,
  to: json['to'] as String,
  targets: json['targets'] == null
      ? const CanonicalNutrition()
      : CanonicalNutrition.fromJson(json['targets'] as Map<String, dynamic>),
  consumed: json['consumed'] == null
      ? const CanonicalNutrition()
      : CanonicalNutrition.fromJson(json['consumed'] as Map<String, dynamic>),
  totals: json['totals'] == null
      ? const NutritionProgressTotals()
      : NutritionProgressTotals.fromJson(
          json['totals'] as Map<String, dynamic>,
        ),
  days:
      (json['days'] as List<dynamic>?)
          ?.map((e) => NutritionProgressDay.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <NutritionProgressDay>[],
  meals:
      (json['meals'] as List<dynamic>?)
          ?.map((e) => CookedMealSummary.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <CookedMealSummary>[],
);

Map<String, dynamic> _$NutritionProgressReportToJson(
  _NutritionProgressReport instance,
) => <String, dynamic>{
  'from': instance.from,
  'to': instance.to,
  'targets': instance.targets,
  'consumed': instance.consumed,
  'totals': instance.totals,
  'days': instance.days,
  'meals': instance.meals,
};
