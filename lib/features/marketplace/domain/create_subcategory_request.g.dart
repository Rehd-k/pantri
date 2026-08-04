// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_subcategory_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateSubcategoryRequest _$CreateSubcategoryRequestFromJson(
  Map<String, dynamic> json,
) => _CreateSubcategoryRequest(
  categoryId: json['categoryId'] as String,
  name: json['name'] as String,
  sortOrder: (json['sortOrder'] as num?)?.toInt(),
  isActive: json['isActive'] as bool?,
);

Map<String, dynamic> _$CreateSubcategoryRequestToJson(
  _CreateSubcategoryRequest instance,
) => <String, dynamic>{
  'categoryId': instance.categoryId,
  'name': instance.name,
  'sortOrder': instance.sortOrder,
  'isActive': instance.isActive,
};
