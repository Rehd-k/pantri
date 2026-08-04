// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marketplace_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MarketplaceCategory _$MarketplaceCategoryFromJson(Map<String, dynamic> json) =>
    _MarketplaceCategory(
      id: json['id'] as String,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      accentColor: json['accentColor'] as String,
      sortOrder: (json['sortOrder'] as num).toInt(),
      isActive: json['isActive'] as bool,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$MarketplaceCategoryToJson(
  _MarketplaceCategory instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'imageUrl': instance.imageUrl,
  'accentColor': instance.accentColor,
  'sortOrder': instance.sortOrder,
  'isActive': instance.isActive,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
};
