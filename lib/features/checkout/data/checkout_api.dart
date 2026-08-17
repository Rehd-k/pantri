import 'package:dio/dio.dart';

import '../../../core/network/dio_client.dart';
import '../domain/checkout_models.dart';

class CheckoutApi {
  CheckoutApi(this._dio);

  final Dio _dio;

  Future<EmployeeLocation> getLocation() async {
    try {
      final response =
          await _dio.get<Map<String, dynamic>>('/employees/me/location');
      return EmployeeLocation.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<EmployeeLocation> updateLocation(
    UpdateEmployeeLocationRequest request,
  ) async {
    try {
      final response = await _dio.put<Map<String, dynamic>>(
        '/employees/me/location',
        data: request.toJson(),
      );
      return EmployeeLocation.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<List<PickupPoint>> listEmployeePickupPoints() async {
    try {
      final response =
          await _dio.get<List<dynamic>>('/employees/me/pickup-points');
      return response.data!
          .map((e) => PickupPoint.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<CheckoutResponse> checkout(CheckoutRequest request) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/orders/checkout',
        data: request.toJson(),
      );
      return CheckoutResponse.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }
}
