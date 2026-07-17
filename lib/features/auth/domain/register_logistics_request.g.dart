// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_logistics_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterLogisticsRequest _$RegisterLogisticsRequestFromJson(
  Map<String, dynamic> json,
) => _RegisterLogisticsRequest(
  email: json['email'] as String,
  password: json['password'] as String,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  fleetName: json['fleetName'] as String,
);

Map<String, dynamic> _$RegisterLogisticsRequestToJson(
  _RegisterLogisticsRequest instance,
) => <String, dynamic>{
  'email': instance.email,
  'password': instance.password,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'fleetName': instance.fleetName,
};
