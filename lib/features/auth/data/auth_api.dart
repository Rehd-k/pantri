import 'package:dio/dio.dart';

import '../../../core/network/dio_client.dart';
import '../domain/auth_response.dart';
import '../domain/auth_user.dart';
import '../domain/login_request.dart';
import '../domain/register_employee_request.dart';
import '../domain/register_employer_request.dart';
import '../domain/register_logistics_request.dart';
import '../domain/register_supplier_request.dart';

class AuthApi {
  AuthApi(this._dio);

  final Dio _dio;

  Future<AuthResponse> login(LoginRequest request) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/auth/login',
        data: request.toJson(),
      );
      return AuthResponse.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<AuthResponse> registerEmployer(RegisterEmployerRequest request) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/auth/register/employer',
        data: request.toJson(),
      );
      return AuthResponse.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<AuthResponse> registerEmployee(RegisterEmployeeRequest request) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/auth/register/employee',
        data: request.toJson(),
      );
      return AuthResponse.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<AuthResponse> registerSupplier(RegisterSupplierRequest request) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/auth/register/supplier',
        data: request.toJson(),
      );
      return AuthResponse.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<AuthResponse> registerLogistics(
    RegisterLogisticsRequest request,
  ) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/auth/register/logistics',
        data: request.toJson(),
      );
      return AuthResponse.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<AuthUser> me() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>('/auth/me');
      return AuthUser.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<List<AuthUser>> listPendingUsers() async {
    try {
      final response = await _dio.get<List<dynamic>>('/admin/pending-users');
      return (response.data ?? [])
          .map((e) => AuthUser.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<AuthUser> approveUser(String userId) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/admin/users/$userId/approve',
      );
      return AuthUser.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }
}
