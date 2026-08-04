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

  Future<List<CompanyListItem>> adminListCompanies() async {
    try {
      final response = await _dio.get<List<dynamic>>('/admin/companies');
      return response.data!
          .map((e) => CompanyListItem.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<List<PickupPoint>> adminListPickupPoints(String companyId) async {
    try {
      final response = await _dio
          .get<List<dynamic>>('/admin/companies/$companyId/pickup-points');
      return response.data!
          .map((e) => PickupPoint.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<PickupPoint> adminCreatePickupPoint(
    String companyId,
    CreatePickupPointRequest request,
  ) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/admin/companies/$companyId/pickup-points',
        data: request.toJson(),
      );
      return PickupPoint.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<PickupPoint> adminUpdatePickupPoint(
    String id,
    UpdatePickupPointRequest request,
  ) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/admin/pickup-points/$id',
        data: request.toJson(),
      );
      return PickupPoint.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<PickupPoint> adminDeactivatePickupPoint(String id) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/admin/pickup-points/$id/deactivate',
      );
      return PickupPoint.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }
}
