import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_employee_request.freezed.dart';
part 'register_employee_request.g.dart';

/// Mirrors NestJS [RegisterEmployeeDto].
@freezed
abstract class RegisterEmployeeRequest with _$RegisterEmployeeRequest {
  const factory RegisterEmployeeRequest({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String inviteCode,
    String? phone,
  }) = _RegisterEmployeeRequest;

  factory RegisterEmployeeRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterEmployeeRequestFromJson(json);
}
