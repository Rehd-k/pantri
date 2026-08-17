// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_role.dart';
import 'user_status.dart';

part 'auth_user.freezed.dart';
part 'auth_user.g.dart';

/// Mirrors NestJS [AuthUserDto].
@freezed
abstract class AuthUser with _$AuthUser {
  const factory AuthUser({
    required String id,
    required String email,
    required String firstName,
    required String lastName,
    @JsonKey(fromJson: UserRole.fromApi, toJson: _roleToJson)
    required UserRole role,
    @JsonKey(fromJson: UserStatus.fromApi, toJson: _statusToJson)
    required UserStatus status,
    String? employerId,
    String? employerName,
    String? employerInviteCode,

    /// @deprecated Use [employerId].
    String? companyId,

    /// @deprecated Use [employerName].
    String? companyName,

    /// @deprecated Use [employerInviteCode].
    String? companyInviteCode,
    String? businessName,
    String? fleetName,
    String? employeeId,
    String? verificationStatus,
    String? phone,
  }) = _AuthUser;

  factory AuthUser.fromJson(Map<String, dynamic> json) =>
      _$AuthUserFromJson(json);
}

String _roleToJson(UserRole role) => role.apiValue;
String _statusToJson(UserStatus status) => status.apiValue;
