import 'package:dio/dio.dart';

import '../../../core/network/dio_client.dart';
import '../domain/delivery_settings.dart';

class DeliverySettingsApi {
  DeliverySettingsApi(this._dio);

  final Dio _dio;

  Future<DeliverySettings> getSettings() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/admin/delivery-settings',
      );
      return DeliverySettings.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<DeliverySettings> updateSettings(
    UpdateDeliverySettingsRequest request,
  ) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/admin/delivery-settings',
        data: request.toJson(),
      );
      return DeliverySettings.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }
}
