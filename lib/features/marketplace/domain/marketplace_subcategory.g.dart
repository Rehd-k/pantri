// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marketplace_subcategory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MarketplaceSubcategory _$MarketplaceSubcategoryFromJson(
  Map<String, dynamic> json,
) => _MarketplaceSubcategory(
  id: json['id'] as String,
  slug: json['slug'] as String,
  categoryId: json['categoryId'] as String,
  name: json['name'] as String,
  sortOrder: (json['sortOrder'] as num).toInt(),
  isActive: json['isActive'] as bool,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
);

Map<String, dynamic> _$MarketplaceSubcategoryToJson(
  _MarketplaceSubcategory instance,
) => <String, dynamic>{
  'id': instance.id,
  'slug': instance.slug,
  'categoryId': instance.categoryId,
  'name': instance.name,
  'sortOrder': instance.sortOrder,
  'isActive': instance.isActive,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
};
