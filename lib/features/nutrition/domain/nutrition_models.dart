// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

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
    required String lifestyle,
    required String activityLevel,
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
    required String lifestyle,
    required String activityLevel,
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
    required String title,
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
    required String title,
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
