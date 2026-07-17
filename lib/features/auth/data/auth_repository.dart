import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/dio_client.dart';
import '../../../core/storage/token_storage.dart';
import '../domain/auth_response.dart';
import '../domain/auth_user.dart';
import '../domain/login_request.dart';
import '../domain/register_employee_request.dart';
import '../domain/register_employer_request.dart';
import '../domain/register_logistics_request.dart';
import '../domain/register_supplier_request.dart';
import '../domain/user_status.dart';
import 'auth_api.dart';

final authApiProvider = Provider<AuthApi>((ref) {
  return AuthApi(ref.watch(dioProvider));
});

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(
    api: ref.watch(authApiProvider),
    tokenStorage: ref.watch(tokenStorageProvider),
  );
});

class AuthRepository {
  AuthRepository({
    required AuthApi api,
    required TokenStorage tokenStorage,
  })  : _api = api,
        _tokenStorage = tokenStorage;

  final AuthApi _api;
  final TokenStorage _tokenStorage;

  Future<AuthResponse> login(LoginRequest request) async {
    final response = await _api.login(request);
    if (response.accessToken.isNotEmpty) {
      await _tokenStorage.saveToken(response.accessToken);
    }
    return response;
  }

  Future<AuthResponse> registerEmployer(RegisterEmployerRequest request) async {
    final response = await _api.registerEmployer(request);
    if (response.accessToken.isNotEmpty) {
      await _tokenStorage.saveToken(response.accessToken);
    }
    return response;
  }

  Future<AuthResponse> registerEmployee(RegisterEmployeeRequest request) async {
    final response = await _api.registerEmployee(request);
    if (response.accessToken.isNotEmpty) {
      await _tokenStorage.saveToken(response.accessToken);
    }
    return response;
  }

  Future<AuthResponse> registerSupplier(RegisterSupplierRequest request) async {
    return _api.registerSupplier(request);
  }

  Future<AuthResponse> registerLogistics(
    RegisterLogisticsRequest request,
  ) async {
    return _api.registerLogistics(request);
  }

  Future<AuthUser?> bootstrap() async {
    final token = await _tokenStorage.readToken();
    if (token == null || token.isEmpty) {
      return null;
    }
    try {
      final user = await _api.me();
      if (user.status != UserStatus.active) {
        await _tokenStorage.clearToken();
        return null;
      }
      return user;
    } catch (_) {
      await _tokenStorage.clearToken();
      return null;
    }
  }

  Future<void> logout() => _tokenStorage.clearToken();

  Future<List<AuthUser>> listPendingUsers() => _api.listPendingUsers();

  Future<AuthUser> approveUser(String userId) => _api.approveUser(userId);
}
