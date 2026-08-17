import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/network/dio_client.dart';
import '../data/auth_repository.dart';
import '../domain/auth_user.dart';
import '../domain/login_request.dart';
import '../domain/register_employee_request.dart';
import '../domain/register_logistics_request.dart';
import '../domain/register_supplier_request.dart';
import '../domain/user_role.dart';
import '../domain/user_status.dart';
import 'auth_state.dart';

final authNotifierProvider = NotifierProvider<AuthNotifier, AuthState>(
  AuthNotifier.new,
);

class AuthNotifier extends Notifier<AuthState> {
  @override
  AuthState build() {
    ref.listen(sessionInvalidationProvider, (previous, next) {
      if (state is AuthAuthenticated) {
        state = const AuthUnauthenticated();
      }
    });
    return const AuthInitial();
  }

  AuthRepository get _repo => ref.read(authRepositoryProvider);

  String? _webOnlyMessage(AuthUser user) {
    if (user.role == UserRole.admin) {
      return 'This app is for employees. Sign in at the Pantri Admin portal '
          '(http://localhost:3002).';
    }
    if (user.role == UserRole.employer) {
      return 'This app is for employees. Sign in at the Pantri Employer portal '
          '(http://localhost:3001).';
    }
    return null;
  }

  Future<void> bootstrap() async {
    state = const AuthLoading();
    try {
      final user = await _repo.bootstrap();
      if (user == null) {
        state = const AuthUnauthenticated();
      } else {
        state = AuthAuthenticated(user);
      }
    } catch (e) {
      state = AuthError(e.toString());
      state = const AuthUnauthenticated();
    }
  }

  Future<void> login({required String email, required String password}) async {
    state = const AuthLoading();
    try {
      final response = await _repo.login(
        LoginRequest(email: email.trim(), password: password),
      );
      final webOnly = _webOnlyMessage(response.user);
      if (webOnly != null) {
        await _repo.logout();
        state = AuthError(webOnly);
        return;
      }
      state = AuthAuthenticated(response.user);
    } on ApiException catch (e) {
      if (e.isPendingApproval) {
        state = AuthPendingApproval(message: e.message);
      } else {
        state = AuthError(e.message);
      }
    } catch (e) {
      state = AuthError(e.toString());
    }
  }

  Future<void> registerEmployee({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String inviteCode,
    String? phone,
  }) async {
    state = const AuthLoading();
    try {
      final response = await _repo.registerEmployee(
        RegisterEmployeeRequest(
          email: email.trim(),
          password: password,
          firstName: firstName.trim(),
          lastName: lastName.trim(),
          inviteCode: inviteCode.trim().toUpperCase(),
          phone: phone?.trim().isEmpty == true ? null : phone?.trim(),
        ),
      );
      state = AuthAuthenticated(response.user);
    } on ApiException catch (e) {
      state = AuthError(e.message);
    } catch (e) {
      state = AuthError(e.toString());
    }
  }

  Future<void> registerSupplier({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String businessName,
  }) async {
    state = const AuthLoading();
    try {
      final response = await _repo.registerSupplier(
        RegisterSupplierRequest(
          email: email.trim(),
          password: password,
          firstName: firstName.trim(),
          lastName: lastName.trim(),
          businessName: businessName.trim(),
        ),
      );
      if (response.user.status == UserStatus.pendingApproval) {
        state = const AuthPendingApproval(
          message:
              'Your supplier account was created and is awaiting admin approval.',
        );
      } else {
        state = AuthAuthenticated(response.user);
      }
    } on ApiException catch (e) {
      state = AuthError(e.message);
    } catch (e) {
      state = AuthError(e.toString());
    }
  }

  Future<void> registerLogistics({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String fleetName,
  }) async {
    state = const AuthLoading();
    try {
      final response = await _repo.registerLogistics(
        RegisterLogisticsRequest(
          email: email.trim(),
          password: password,
          firstName: firstName.trim(),
          lastName: lastName.trim(),
          fleetName: fleetName.trim(),
        ),
      );
      if (response.user.status == UserStatus.pendingApproval) {
        state = const AuthPendingApproval(
          message:
              'Your logistics account was created and is awaiting admin approval.',
        );
      } else {
        state = AuthAuthenticated(response.user);
      }
    } on ApiException catch (e) {
      state = AuthError(e.message);
    } catch (e) {
      state = AuthError(e.toString());
    }
  }

  Future<void> logout() async {
    await _repo.logout();
    state = const AuthUnauthenticated();
  }

  void clearError() {
    if (state is AuthError) {
      state = const AuthUnauthenticated();
    }
  }
}
