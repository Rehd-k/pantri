import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/dio_client.dart';
import '../domain/nutrition_models.dart';
import 'nutrition_api.dart';

class NutritionRepository {
  NutritionRepository(this._api);

  final NutritionApi _api;

  Future<NutritionCatalog> getCatalog() => _api.getCatalog();

  Future<HealthProfile?> getProfile() => _api.getProfile();

  Future<HealthProfile> upsertProfile(UpsertHealthProfileRequest request) =>
      _api.upsertProfile(request);

  Future<List<MealPlanSummary>> listMealPlans() => _api.listMealPlans();

  Future<MealPlanDetail> getMealPlan(String id) => _api.getMealPlan(id);

  Future<MealPlanDetail> generateMealPlan() => _api.generateMealPlan();
}

final nutritionApiProvider = Provider<NutritionApi>((ref) {
  return NutritionApi(ref.watch(dioProvider));
});

final nutritionRepositoryProvider = Provider<NutritionRepository>((ref) {
  return NutritionRepository(ref.watch(nutritionApiProvider));
});
