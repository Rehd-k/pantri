// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthUser _$AuthUserFromJson(Map<String, dynamic> json) => _AuthUser(
  id: json['id'] as String,
  email: json['email'] as String,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  role: UserRole.fromApi(json['role'] as String),
  status: UserStatus.fromApi(json['status'] as String),
  companyId: json['companyId'] as String?,
  companyName: json['companyName'] as String?,
  companyInviteCode: json['companyInviteCode'] as String?,
  businessName: json['businessName'] as String?,
  fleetName: json['fleetName'] as String?,
);

Map<String, dynamic> _$AuthUserToJson(_AuthUser instance) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'role': _roleToJson(instance.role),
  'status': _statusToJson(instance.status),
  'companyId': instance.companyId,
  'companyName': instance.companyName,
  'companyInviteCode': instance.companyInviteCode,
  'businessName': instance.businessName,
  'fleetName': instance.fleetName,
};
