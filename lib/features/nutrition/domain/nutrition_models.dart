// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../marketplace/domain/marketplace_product.dart';

part 'nutrition_models.freezed.dart';
part 'nutrition_models.g.dart';

@freezed
abstract class AllergyOption with _$AllergyOption {
  const factory AllergyOption({
    required String id,
    required String name,
    required String slug,
    required bool isActive,
    required int sortOrder,
  }) = _AllergyOption;

  factory AllergyOption.fromJson(Map<String, dynamic> json) =>
      _$AllergyOptionFromJson(json);
}

@freezed
abstract class GoalOption with _$GoalOption {
  const factory GoalOption({
    required String id,
    required String name,
    required String slug,
    required String description,
    required String iconKey,
    required bool isActive,
    required int sortOrder,
  }) = _GoalOption;

  factory GoalOption.fromJson(Map<String, dynamic> json) =>
      _$GoalOptionFromJson(json);
}

@freezed
abstract class NutritionCatalog with _$NutritionCatalog {
  const factory NutritionCatalog({
    required List<AllergyOption> allergies,
    required List<GoalOption> goals,
  }) = _NutritionCatalog;

  factory NutritionCatalog.fromJson(Map<String, dynamic> json) =>
      _$NutritionCatalogFromJson(json);
}

@freezed
abstract class HealthProfileAllergy with _$HealthProfileAllergy {
  const factory HealthProfileAllergy({
    required String id,
    String? allergyId,
    String? allergyName,
    String? customLabel,
  }) = _HealthProfileAllergy;

  factory HealthProfileAllergy.fromJson(Map<String, dynamic> json) =>
      _$HealthProfileAllergyFromJson(json);
}

@freezed
abstract class HealthProfileGoal with _$HealthProfileGoal {
  const factory HealthProfileGoal({
    required String id,
    String? goalId,
    String? goalName,
    String? customLabel,
  }) = _HealthProfileGoal;

  factory HealthProfileGoal.fromJson(Map<String, dynamic> json) =>
      _$HealthProfileGoalFromJson(json);
}

@freezed
abstract class HealthProfile with _$HealthProfile {
  const factory HealthProfile({
    required String id,
    required String employeeId,
    required int age,
    required String gender,
    required int heightCm,
    required int weightKg,
    int? targetWeightKg,
    required String lifestyle,
    required String activityLevel,
    @Default(1) int householdSize,
    @Default(false) bool hasChildren,
    @Default(<String>[]) List<String> foodPreferences,
    @Default(<String>[]) List<String> foodsToAvoid,
    @Default(0) int targetEnergyKcal,
    @Default(0) int targetProteinMg,
    @Default(0) int targetCarbsMg,
    @Default(0) int targetFatMg,
    @Default(0) int targetFiberMg,
    @Default(0) int targetSugarMg,
    @Default(0) int targetSodiumMg,
    @Default(0) int targetIronUg,
    required List<HealthProfileAllergy> allergies,
    required List<HealthProfileGoal> goals,
    required String createdAt,
    required String updatedAt,
  }) = _HealthProfile;

  factory HealthProfile.fromJson(Map<String, dynamic> json) =>
      _$HealthProfileFromJson(json);
}

@freezed
abstract class UpsertHealthProfileRequest with _$UpsertHealthProfileRequest {
  const factory UpsertHealthProfileRequest({
    required int age,
    required String gender,
    required int heightCm,
    required int weightKg,
    int? targetWeightKg,
    required String lifestyle,
    required String activityLevel,
    @Default(1) int householdSize,
    @Default(false) bool hasChildren,
    @Default(<String>[]) List<String> foodPreferences,
    @Default(<String>[]) List<String> foodsToAvoid,
    required List<AllergySelectionRequest> allergies,
    required List<GoalSelectionRequest> goals,
  }) = _UpsertHealthProfileRequest;

  factory UpsertHealthProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$UpsertHealthProfileRequestFromJson(json);
}

@freezed
abstract class AllergySelectionRequest with _$AllergySelectionRequest {
  const factory AllergySelectionRequest({
    String? allergyId,
    String? customLabel,
  }) = _AllergySelectionRequest;

  factory AllergySelectionRequest.fromJson(Map<String, dynamic> json) =>
      _$AllergySelectionRequestFromJson(json);
}

@freezed
abstract class GoalSelectionRequest with _$GoalSelectionRequest {
  const factory GoalSelectionRequest({
    String? goalId,
    String? customLabel,
  }) = _GoalSelectionRequest;

  factory GoalSelectionRequest.fromJson(Map<String, dynamic> json) =>
      _$GoalSelectionRequestFromJson(json);
}

@freezed
abstract class MealPlanSummary with _$MealPlanSummary {
  const factory MealPlanSummary({
    required String id,
    required String employeeId,
    required String employeeName,
    required String employerName,
    required String status,
    @Default('AI') String source,
    required String title,
    String? startsOn,
    String? endsOn,
    String? activatedAt,
    String? packageId,
    String? failureReason,
    String? adminNote,
    String? reviewedAt,
    required String createdAt,
    required String updatedAt,
  }) = _MealPlanSummary;

  factory MealPlanSummary.fromJson(Map<String, dynamic> json) =>
      _$MealPlanSummaryFromJson(json);
}

@freezed
abstract class MealPlanItem with _$MealPlanItem {
  const factory MealPlanItem({
    required String id,
    required String mealSlot,
    required String title,
    required String rationale,
    required String requestedProductName,
    String? productId,
    String? productName,
    String? productImageUrl,
    String? origin,
    @Default(<String, String>{}) Map<String, String> nutritionFacts,
    @Default(<String>[]) List<String> tags,
    required String matchType,
    required int quantity,
    @Default(0) int quantityCanonical,
    String? measureUnitId,
    String? measureUnitLabel,
    String? recipeId,
    RecipeDetail? recipe,
    @Default('PLANNED') String status,
    @Default(1) int servings,
    String? substitutedRecipeId,
    String? cookedAt,
    required int sortOrder,
  }) = _MealPlanItem;

  factory MealPlanItem.fromJson(Map<String, dynamic> json) =>
      _$MealPlanItemFromJson(json);
}

@freezed
abstract class MealPlanDay with _$MealPlanDay {
  const factory MealPlanDay({
    required String id,
    required int dayIndex,
    required String label,
    String? planDate,
    required List<MealPlanItem> items,
  }) = _MealPlanDay;

  factory MealPlanDay.fromJson(Map<String, dynamic> json) =>
      _$MealPlanDayFromJson(json);
}

@freezed
abstract class MealPlanProfileSnapshot with _$MealPlanProfileSnapshot {
  const factory MealPlanProfileSnapshot({
    required int age,
    required String gender,
    required int heightCm,
    required int weightKg,
    required String lifestyle,
    required String activityLevel,
    required List<String> allergies,
    required List<String> goals,
    @Default(1) int householdSize,
    @Default(false) bool hasChildren,
    @Default(0) int targetEnergyKcal,
    @Default(0) int targetProteinMg,
    @Default(0) int targetCarbsMg,
    @Default(0) int targetFatMg,
  }) = _MealPlanProfileSnapshot;

  factory MealPlanProfileSnapshot.fromJson(Map<String, dynamic> json) =>
      _$MealPlanProfileSnapshotFromJson(json);
}

@freezed
abstract class MealPlanDetail with _$MealPlanDetail {
  const factory MealPlanDetail({
    required String id,
    required String employeeId,
    required String employeeName,
    required String employerName,
    required String status,
    @Default('AI') String source,
    required String title,
    String? startsOn,
    String? endsOn,
    String? activatedAt,
    String? packageId,
    String? failureReason,
    String? adminNote,
    String? reviewedAt,
    required String createdAt,
    required String updatedAt,
    required List<MealPlanDay> days,
    MealPlanProfileSnapshot? profile,
  }) = _MealPlanDetail;

  factory MealPlanDetail.fromJson(Map<String, dynamic> json) =>
      _$MealPlanDetailFromJson(json);
}

@freezed
abstract class RecipeIngredient with _$RecipeIngredient {
  const factory RecipeIngredient({
    required String id,
    required String productId,
    required String productName,
    required String productImageUrl,
    String? measureUnitId,
    String? measureUnitLabel,
    @Default('') String displayLabel,
    required int quantity,
    required int quantityCanonical,
    @Default(0) int haveCanonical,
    @Default(false) bool isShort,
    required int sortOrder,
  }) = _RecipeIngredient;

  factory RecipeIngredient.fromJson(Map<String, dynamic> json) =>
      _$RecipeIngredientFromJson(json);
}

@freezed
abstract class RecipeDetail with _$RecipeDetail {
  const factory RecipeDetail({
    required String id,
    required String employeeId,
    required String title,
    required String mealSlot,
    @Default('') String instructions,
    @Default(<String>[]) List<String> instructionSteps,
    @Default('') String rationale,
    @Default('AI') String source,
    @Default(1) int baseServings,
    @Default('partial') String cookability,
    @Default(CanonicalNutrition()) CanonicalNutrition nutrition,
    @Default(<RecipeIngredient>[]) List<RecipeIngredient> ingredients,
    required String createdAt,
    required String updatedAt,
  }) = _RecipeDetail;

  factory RecipeDetail.fromJson(Map<String, dynamic> json) =>
      _$RecipeDetailFromJson(json);
}

@freezed
abstract class RestockAlert with _$RestockAlert {
  const factory RestockAlert({
    required String id,
    required String employeeId,
    required String stockId,
    required String productId,
    required String productName,
    required String productImageUrl,
    required String status,
    required int quantityCanonical,
    String? suggestedPackId,
    String? suggestedPackLabel,
    required String createdAt,
    required String updatedAt,
  }) = _RestockAlert;

  factory RestockAlert.fromJson(Map<String, dynamic> json) =>
      _$RestockAlertFromJson(json);
}

@freezed
abstract class HouseholdStockProduct with _$HouseholdStockProduct {
  const factory HouseholdStockProduct({
    required String id,
    required String name,
    required String imageUrl,
    required String slug,
  }) = _HouseholdStockProduct;

  factory HouseholdStockProduct.fromJson(Map<String, dynamic> json) =>
      _$HouseholdStockProductFromJson(json);
}

@freezed
abstract class HouseholdStockItem with _$HouseholdStockItem {
  const factory HouseholdStockItem({
    required String id,
    required String employeeId,
    required String productId,
    required HouseholdStockProduct product,
    required int quantityCanonical,
    @Default(0) int restockThresholdCanonical,
    required String displayQuantity,
    required String displayUnit,
    @Default(false) bool isLow,
    @Default(false) bool isEmpty,
    @Default('MASS') String dimension,
    required String createdAt,
    required String updatedAt,
  }) = _HouseholdStockItem;

  factory HouseholdStockItem.fromJson(Map<String, dynamic> json) =>
      _$HouseholdStockItemFromJson(json);
}

@freezed
abstract class CookMealResult with _$CookMealResult {
  const factory CookMealResult({
    required RecipeDetail recipe,
    String? mealPlanItemId,
    @Default(1) int servings,
    @Default(CanonicalNutrition()) CanonicalNutrition nutrition,
    required String cookedAt,
    @Default(<RestockAlert>[]) List<RestockAlert> restockAlerts,
    @Default(<HouseholdStockItem>[]) List<HouseholdStockItem> updatedStock,
  }) = _CookMealResult;

  factory CookMealResult.fromJson(Map<String, dynamic> json) =>
      _$CookMealResultFromJson(json);
}

@freezed
abstract class ReplenishmentLine with _$ReplenishmentLine {
  const factory ReplenishmentLine({
    required String productId,
    required String productName,
    required String productImageUrl,
    required int neededCanonical,
    required int haveCanonical,
    required int shortfallCanonical,
    int? daysUntilEmpty,
    String? suggestedPackId,
    String? suggestedPackLabel,
    @Default(0) int suggestedPackQuantity,
    int? unitPriceKobo,
    @Default(0) int lineTotalKobo,
  }) = _ReplenishmentLine;

  factory ReplenishmentLine.fromJson(Map<String, dynamic> json) =>
      _$ReplenishmentLineFromJson(json);
}

@freezed
abstract class ReplenishmentSuggestion with _$ReplenishmentSuggestion {
  const factory ReplenishmentSuggestion({
    required int minOrderKobo,
    required int requiredTotalKobo,
    required int recommendedTotalKobo,
    required bool meetsMinimum,
    required String message,
    @Default(<ReplenishmentLine>[]) List<ReplenishmentLine> lines,
    @Default(<ReplenishmentLine>[]) List<ReplenishmentLine> topUpLines,
  }) = _ReplenishmentSuggestion;

  factory ReplenishmentSuggestion.fromJson(Map<String, dynamic> json) =>
      _$ReplenishmentSuggestionFromJson(json);
}

@freezed
abstract class ProgressCheckpoint with _$ProgressCheckpoint {
  const factory ProgressCheckpoint({
    required String id,
    required String metricKey,
    required double value,
    @Default('') String unitLabel,
    required String recordedAt,
    String? note,
    required String createdAt,
  }) = _ProgressCheckpoint;

  factory ProgressCheckpoint.fromJson(Map<String, dynamic> json) =>
      _$ProgressCheckpointFromJson(json);
}

@freezed
abstract class NutrientProgress with _$NutrientProgress {
  const factory NutrientProgress({
    @Default(0) int consumed,
    @Default(0) int target,
    @Default(0) int percent,
  }) = _NutrientProgress;

  factory NutrientProgress.fromJson(Map<String, dynamic> json) =>
      _$NutrientProgressFromJson(json);
}

@freezed
abstract class NutritionProgressTotals with _$NutritionProgressTotals {
  const factory NutritionProgressTotals({
    @Default(NutrientProgress()) NutrientProgress energyKcal,
    @Default(NutrientProgress()) NutrientProgress proteinMg,
    @Default(NutrientProgress()) NutrientProgress carbsMg,
    @Default(NutrientProgress()) NutrientProgress fatMg,
    @Default(NutrientProgress()) NutrientProgress fiberMg,
    @Default(NutrientProgress()) NutrientProgress sugarMg,
    @Default(NutrientProgress()) NutrientProgress sodiumMg,
    @Default(NutrientProgress()) NutrientProgress ironUg,
  }) = _NutritionProgressTotals;

  factory NutritionProgressTotals.fromJson(Map<String, dynamic> json) =>
      _$NutritionProgressTotalsFromJson(json);
}

@freezed
abstract class NutritionProgressDay with _$NutritionProgressDay {
  const factory NutritionProgressDay({
    required String day,
    @Default(CanonicalNutrition()) CanonicalNutrition consumed,
    @Default(0) int cookedCount,
  }) = _NutritionProgressDay;

  factory NutritionProgressDay.fromJson(Map<String, dynamic> json) =>
      _$NutritionProgressDayFromJson(json);
}

@freezed
abstract class CookedMealSummary with _$CookedMealSummary {
  const factory CookedMealSummary({
    required String id,
    required String recipeId,
    required String title,
    required String mealSlot,
    required String cookedAt,
    @Default(CanonicalNutrition()) CanonicalNutrition nutrition,
  }) = _CookedMealSummary;

  factory CookedMealSummary.fromJson(Map<String, dynamic> json) =>
      _$CookedMealSummaryFromJson(json);
}

@freezed
abstract class NutritionProgressReport with _$NutritionProgressReport {
  const factory NutritionProgressReport({
    required String from,
    required String to,
    @Default(CanonicalNutrition()) CanonicalNutrition targets,
    @Default(CanonicalNutrition()) CanonicalNutrition consumed,
    @Default(NutritionProgressTotals()) NutritionProgressTotals totals,
    @Default(<NutritionProgressDay>[]) List<NutritionProgressDay> days,
    @Default(<CookedMealSummary>[]) List<CookedMealSummary> meals,
  }) = _NutritionProgressReport;

  factory NutritionProgressReport.fromJson(Map<String, dynamic> json) =>
      _$NutritionProgressReportFromJson(json);
}
