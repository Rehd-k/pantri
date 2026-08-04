// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_category_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateCategoryRequest _$CreateCategoryRequestFromJson(
  Map<String, dynamic> json,
) => _CreateCategoryRequest(
  name: json['name'] as String,
  imageUrl: json['imageUrl'] as String,
  accentColor: json['accentColor'] as String,
  sortOrder: (json['sortOrder'] as num?)?.toInt(),
  isActive: json['isActive'] as bool?,
);

Map<String, dynamic> _$CreateCategoryRequestToJson(
  _CreateCategoryRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'imageUrl': instance.imageUrl,
  'accentColor': instance.accentColor,
  'sortOrder': instance.sortOrder,
  'isActive': instance.isActive,
};
