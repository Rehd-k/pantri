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
    String? companyId,
    String? companyName,
    String? companyInviteCode,
    String? businessName,
    String? fleetName,
  }) = _AuthUser;

  factory AuthUser.fromJson(Map<String, dynamic> json) =>
      _$AuthUserFromJson(json);
}

String _roleToJson(UserRole role) => role.apiValue;
String _statusToJson(UserStatus status) => status.apiValue;
