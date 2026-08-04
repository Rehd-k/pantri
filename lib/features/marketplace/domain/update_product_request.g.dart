// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_product_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateProductRequest _$UpdateProductRequestFromJson(
  Map<String, dynamic> json,
) => _UpdateProductRequest(
  categoryId: json['categoryId'] as String?,
  subcategoryId: json['subcategoryId'] as String?,
  name: json['name'] as String?,
  brand: json['brand'] as String?,
  packageLabel: json['packageLabel'] as String?,
  imageUrl: json['imageUrl'] as String?,
  priceKobo: (json['priceKobo'] as num?)?.toInt(),
  retailPriceKobo: (json['retailPriceKobo'] as num?)?.toInt(),
  description: json['description'] as String?,
  origin: json['origin'] as String?,
  expiresAt: json['expiresAt'] as String?,
  isVerified: json['isVerified'] as bool?,
  bulkAllocationClaimedPercent: (json['bulkAllocationClaimedPercent'] as num?)
      ?.toInt(),
  nutritionFacts: (json['nutritionFacts'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
  perfectFor: (json['perfectFor'] as List<dynamic>?)
      ?.map((e) => PerfectForItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  sortOrder: (json['sortOrder'] as num?)?.toInt(),
  isActive: json['isActive'] as bool?,
);

Map<String, dynamic> _$UpdateProductRequestToJson(
  _UpdateProductRequest instance,
) => <String, dynamic>{
  'categoryId': instance.categoryId,
  'subcategoryId': instance.subcategoryId,
  'name': instance.name,
  'brand': instance.brand,
  'packageLabel': instance.packageLabel,
  'imageUrl': instance.imageUrl,
  'priceKobo': instance.priceKobo,
  'retailPriceKobo': instance.retailPriceKobo,
  'description': instance.description,
  'origin': instance.origin,
  'expiresAt': instance.expiresAt,
  'isVerified': instance.isVerified,
  'bulkAllocationClaimedPercent': instance.bulkAllocationClaimedPercent,
  'nutritionFacts': instance.nutritionFacts,
  'perfectFor': instance.perfectFor,
  'tags': instance.tags,
  'sortOrder': instance.sortOrder,
  'isActive': instance.isActive,
};
