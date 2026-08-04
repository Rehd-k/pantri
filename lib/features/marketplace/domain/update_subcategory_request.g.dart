// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_subcategory_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateSubcategoryRequest _$UpdateSubcategoryRequestFromJson(
  Map<String, dynamic> json,
) => _UpdateSubcategoryRequest(
  name: json['name'] as String?,
  sortOrder: (json['sortOrder'] as num?)?.toInt(),
  isActive: json['isActive'] as bool?,
);

Map<String, dynamic> _$UpdateSubcategoryRequestToJson(
  _UpdateSubcategoryRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'sortOrder': instance.sortOrder,
  'isActive': instance.isActive,
};
