import 'package:dio/dio.dart';

import '../../../core/network/dio_client.dart';
import '../domain/nutrition_models.dart';

class NutritionApi {
  NutritionApi(this._dio);

  final Dio _dio;

  Future<NutritionCatalog> getCatalog() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/nutrition/catalog',
      );
      return NutritionCatalog.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<NutritionCatalog> getPublicCatalog() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/public/nutrition/catalog',
      );
      return NutritionCatalog.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<HealthProfile?> getProfile() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/nutrition/profile',
      );
      return HealthProfile.fromJson(response.data!);
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        return null;
      }
      throw mapDioError(e);
    }
  }

  Future<HealthProfile> upsertProfile(UpsertHealthProfileRequest request) async {
    try {
      final response = await _dio.put<Map<String, dynamic>>(
        '/nutrition/profile',
        data: request.toJson(),
      );
      return HealthProfile.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<List<MealPlanSummary>> listMealPlans() async {
    try {
      final response = await _dio.get<List<dynamic>>(
        '/nutrition/meal-plans',
      );
      return response.data!
          .map((e) => MealPlanSummary.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<MealPlanDetail> getMealPlan(String id) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/nutrition/meal-plans/$id',
      );
      return MealPlanDetail.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<MealPlanDetail> generateMealPlan() async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/nutrition/meal-plans/generate',
      );
      return MealPlanDetail.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<CookMealResult> cookRecipe(String recipeId, {int? servings}) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/nutrition/recipes/$recipeId/cook',
        data: {
          if (servings != null) 'servings': servings,
        },
      );
      return CookMealResult.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<CookMealResult> cookMealItem(String itemId, {int? servings}) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/nutrition/meal-plans/items/$itemId/cook',
        data: {
          if (servings != null) 'servings': servings,
        },
      );
      return CookMealResult.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<Map<String, dynamic>> skipMealItem(String itemId) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/nutrition/meal-plans/items/$itemId/skip',
        data: {},
      );
      return response.data!;
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<ReplenishmentSuggestion> getReplenishment() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/nutrition/meal-plans/replenishment',
      );
      return ReplenishmentSuggestion.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<ReplenishmentSuggestion> addReplenishmentToCart() async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/nutrition/meal-plans/replenishment/add-to-cart',
      );
      return ReplenishmentSuggestion.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<List<ProgressCheckpoint>> listCheckpoints() async {
    try {
      final response = await _dio.get<List<dynamic>>(
        '/nutrition/progress-checkpoints',
      );
      return response.data!
          .map((e) => ProgressCheckpoint.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<ProgressCheckpoint> addCheckpoint({
    required String metricKey,
    required double value,
    String unitLabel = 'kg',
    String? note,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/nutrition/progress-checkpoints',
        data: {
          'metricKey': metricKey,
          'value': value,
          'unitLabel': unitLabel,
          if (note != null) 'note': note,
        },
      );
      return ProgressCheckpoint.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<NutritionProgressReport> getProgress({
    String? from,
    String? to,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/nutrition/progress',
        queryParameters: {
          if (from != null) 'from': from,
          if (to != null) 'to': to,
        },
      );
      return NutritionProgressReport.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }
}
