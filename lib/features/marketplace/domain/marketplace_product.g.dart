// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marketplace_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MarketplaceProduct _$MarketplaceProductFromJson(Map<String, dynamic> json) =>
    _MarketplaceProduct(
      id: json['id'] as String,
      categoryId: json['categoryId'] as String,
      categoryName: json['categoryName'] as String,
      subcategoryId: json['subcategoryId'] as String,
      subcategoryName: json['subcategoryName'] as String,
      name: json['name'] as String,
      brand: json['brand'] as String,
      packageLabel: json['packageLabel'] as String,
      imageUrl: json['imageUrl'] as String,
      priceKobo: (json['priceKobo'] as num).toInt(),
      retailPriceKobo: (json['retailPriceKobo'] as num).toInt(),
      discountPercent: (json['discountPercent'] as num).toInt(),
      description: json['description'] as String? ?? '',
      origin: json['origin'] as String? ?? '',
      expiresAt: json['expiresAt'] as String?,
      isVerified: json['isVerified'] as bool? ?? false,
      bulkAllocationClaimedPercent:
          (json['bulkAllocationClaimedPercent'] as num?)?.toInt() ?? 0,
      nutritionFacts:
          (json['nutritionFacts'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const <String, String>{},
      perfectFor:
          (json['perfectFor'] as List<dynamic>?)
              ?.map((e) => PerfectForItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <PerfectForItem>[],
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      sortOrder: (json['sortOrder'] as num).toInt(),
      isActive: json['isActive'] as bool,
      averageRating: (json['averageRating'] as num?)?.toDouble() ?? 0,
      reviewCount: (json['reviewCount'] as num?)?.toInt() ?? 0,
      ratingDistribution: json['ratingDistribution'] == null
          ? const RatingDistribution()
          : RatingDistribution.fromJson(
              json['ratingDistribution'] as Map<String, dynamic>,
            ),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$MarketplaceProductToJson(_MarketplaceProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'subcategoryId': instance.subcategoryId,
      'subcategoryName': instance.subcategoryName,
      'name': instance.name,
      'brand': instance.brand,
      'packageLabel': instance.packageLabel,
      'imageUrl': instance.imageUrl,
      'priceKobo': instance.priceKobo,
      'retailPriceKobo': instance.retailPriceKobo,
      'discountPercent': instance.discountPercent,
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
      'averageRating': instance.averageRating,
      'reviewCount': instance.reviewCount,
      'ratingDistribution': instance.ratingDistribution,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
