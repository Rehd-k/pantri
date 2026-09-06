import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/dio_client.dart';
import '../domain/nutrition_models.dart';
import 'nutrition_api.dart';

class NutritionRepository {
  NutritionRepository(this._api);

  final NutritionApi _api;

  Future<NutritionCatalog> getCatalog() => _api.getCatalog();

  Future<NutritionCatalog> getPublicCatalog() => _api.getPublicCatalog();

  Future<HealthProfile?> getProfile() => _api.getProfile();

  Future<HealthProfile> upsertProfile(UpsertHealthProfileRequest request) =>
      _api.upsertProfile(request);

  Future<List<MealPlanSummary>> listMealPlans() => _api.listMealPlans();

  Future<MealPlanDetail> getMealPlan(String id) => _api.getMealPlan(id);

  Future<MealPlanDetail> generateMealPlan() => _api.generateMealPlan();

  Future<CookMealResult> cookRecipe(String recipeId, {int? servings}) =>
      _api.cookRecipe(recipeId, servings: servings);

  Future<CookMealResult> cookMealItem(String itemId, {int? servings}) =>
      _api.cookMealItem(itemId, servings: servings);

  Future<Map<String, dynamic>> skipMealItem(String itemId) =>
      _api.skipMealItem(itemId);

  Future<ReplenishmentSuggestion> getReplenishment() =>
      _api.getReplenishment();

  Future<ReplenishmentSuggestion> addReplenishmentToCart() =>
      _api.addReplenishmentToCart();

  Future<List<ProgressCheckpoint>> listCheckpoints() =>
      _api.listCheckpoints();

  Future<ProgressCheckpoint> addCheckpoint({
    required String metricKey,
    required double value,
    String unitLabel = 'kg',
    String? note,
  }) =>
      _api.addCheckpoint(
        metricKey: metricKey,
        value: value,
        unitLabel: unitLabel,
        note: note,
      );

  Future<NutritionProgressReport> getProgress({String? from, String? to}) =>
      _api.getProgress(from: from, to: to);
}

final nutritionApiProvider = Provider<NutritionApi>((ref) {
  return NutritionApi(ref.watch(dioProvider));
});

final nutritionRepositoryProvider = Provider<NutritionRepository>((ref) {
  return NutritionRepository(ref.watch(nutritionApiProvider));
});
