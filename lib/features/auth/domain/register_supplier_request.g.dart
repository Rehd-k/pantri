// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_supplier_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterSupplierRequest _$RegisterSupplierRequestFromJson(
  Map<String, dynamic> json,
) => _RegisterSupplierRequest(
  email: json['email'] as String,
  password: json['password'] as String,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  businessName: json['businessName'] as String,
);

Map<String, dynamic> _$RegisterSupplierRequestToJson(
  _RegisterSupplierRequest instance,
) => <String, dynamic>{
  'email': instance.email,
  'password': instance.password,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'businessName': instance.businessName,
};
