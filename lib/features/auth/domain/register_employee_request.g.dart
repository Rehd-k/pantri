// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_employee_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterEmployeeRequest _$RegisterEmployeeRequestFromJson(
  Map<String, dynamic> json,
) => _RegisterEmployeeRequest(
  email: json['email'] as String,
  password: json['password'] as String,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  inviteCode: json['inviteCode'] as String,
);

Map<String, dynamic> _$RegisterEmployeeRequestToJson(
  _RegisterEmployeeRequest instance,
) => <String, dynamic>{
  'email': instance.email,
  'password': instance.password,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'inviteCode': instance.inviteCode,
};
