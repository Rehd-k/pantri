// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_employer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterEmployerRequest _$RegisterEmployerRequestFromJson(
  Map<String, dynamic> json,
) => _RegisterEmployerRequest(
  email: json['email'] as String,
  password: json['password'] as String,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  companyName: json['companyName'] as String,
);

Map<String, dynamic> _$RegisterEmployerRequestToJson(
  _RegisterEmployerRequest instance,
) => <String, dynamic>{
  'email': instance.email,
  'password': instance.password,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'companyName': instance.companyName,
};
