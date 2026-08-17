import 'package:dio/dio.dart';

import '../../../core/network/dio_client.dart';
import '../../nutrition/domain/nutrition_models.dart';

class InventoryApi {
  InventoryApi(this._dio);

  final Dio _dio;

  Future<List<HouseholdStockItem>> listStock() async {
    try {
      final response = await _dio.get<List<dynamic>>('/inventory');
      return (response.data ?? [])
          .map((e) => HouseholdStockItem.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<HouseholdStockItem> addStock({
    required String productId,
    required int quantity,
    String? measureUnitId,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/inventory',
        data: {
          'productId': productId,
          'quantity': quantity,
          if (measureUnitId != null) 'measureUnitId': measureUnitId,
        },
      );
      return HouseholdStockItem.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<HouseholdStockItem> updateStock({
    required String stockId,
    int? quantityCanonical,
    int? restockThresholdCanonical,
  }) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/inventory/$stockId',
        data: {
          if (quantityCanonical != null) 'quantityCanonical': quantityCanonical,
          if (restockThresholdCanonical != null)
            'restockThresholdCanonical': restockThresholdCanonical,
        },
      );
      return HouseholdStockItem.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<List<RestockAlert>> listAlerts() async {
    try {
      final response = await _dio.get<List<dynamic>>('/inventory/alerts');
      return (response.data ?? [])
          .map((e) => RestockAlert.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<RestockAlert> stockUp(String alertId) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/inventory/alerts/$alertId/stock-up',
      );
      return RestockAlert.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<RestockAlert> dismiss(String alertId) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/inventory/alerts/$alertId/dismiss',
      );
      return RestockAlert.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }
}
