// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marketplace_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CanonicalNutrition _$CanonicalNutritionFromJson(Map<String, dynamic> json) =>
    _CanonicalNutrition(
      energyKcal: (json['energyKcal'] as num?)?.toInt() ?? 0,
      proteinMg: (json['proteinMg'] as num?)?.toInt() ?? 0,
      carbsMg: (json['carbsMg'] as num?)?.toInt() ?? 0,
      fatMg: (json['fatMg'] as num?)?.toInt() ?? 0,
      fiberMg: (json['fiberMg'] as num?)?.toInt() ?? 0,
      sugarMg: (json['sugarMg'] as num?)?.toInt() ?? 0,
      sodiumMg: (json['sodiumMg'] as num?)?.toInt() ?? 0,
      ironUg: (json['ironUg'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$CanonicalNutritionToJson(_CanonicalNutrition instance) =>
    <String, dynamic>{
      'energyKcal': instance.energyKcal,
      'proteinMg': instance.proteinMg,
      'carbsMg': instance.carbsMg,
      'fatMg': instance.fatMg,
      'fiberMg': instance.fiberMg,
      'sugarMg': instance.sugarMg,
      'sodiumMg': instance.sodiumMg,
      'ironUg': instance.ironUg,
    };

_ProductAllergen _$ProductAllergenFromJson(Map<String, dynamic> json) =>
    _ProductAllergen(id: json['id'] as String, name: json['name'] as String);

Map<String, dynamic> _$ProductAllergenToJson(_ProductAllergen instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_MarketplaceProduct _$MarketplaceProductFromJson(
  Map<String, dynamic> json,
) => _MarketplaceProduct(
  id: json['id'] as String,
  slug: json['slug'] as String,
  categoryId: json['categoryId'] as String,
  categoryName: json['categoryName'] as String,
  subcategoryId: json['subcategoryId'] as String,
  subcategoryName: json['subcategoryName'] as String,
  measureFamilyId: json['measureFamilyId'] as String,
  measureFamily: json['measureFamily'] == null
      ? null
      : MeasureFamily.fromJson(json['measureFamily'] as Map<String, dynamic>),
  recipeUnitId: json['recipeUnitId'] as String?,
  recipeUnit: json['recipeUnit'] == null
      ? null
      : MeasureUnit.fromJson(json['recipeUnit'] as Map<String, dynamic>),
  name: json['name'] as String,
  imageUrl: json['imageUrl'] as String,
  fromPriceKobo: (json['fromPriceKobo'] as num).toInt(),
  fromRetailPriceKobo: (json['fromRetailPriceKobo'] as num).toInt(),
  discountPercent: (json['discountPercent'] as num).toInt(),
  description: json['description'] as String? ?? '',
  origin: json['origin'] as String? ?? '',
  recipeUnitOverrideMg: (json['recipeUnitOverrideMg'] as num?)?.toInt(),
  recipeUnitOverrideMl: (json['recipeUnitOverrideMl'] as num?)?.toInt(),
  expiresAt: json['expiresAt'] as String?,
  isVerified: json['isVerified'] as bool? ?? false,
  bulkAllocationClaimedPercent:
      (json['bulkAllocationClaimedPercent'] as num?)?.toInt() ?? 0,
  nutritionFacts:
      (json['nutritionFacts'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ) ??
      const <String, String>{},
  nutrition: json['nutrition'] == null
      ? const CanonicalNutrition()
      : CanonicalNutrition.fromJson(json['nutrition'] as Map<String, dynamic>),
  allergens:
      (json['allergens'] as List<dynamic>?)
          ?.map((e) => ProductAllergen.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <ProductAllergen>[],
  perfectFor:
      (json['perfectFor'] as List<dynamic>?)
          ?.map((e) => PerfectForItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <PerfectForItem>[],
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  packs:
      (json['packs'] as List<dynamic>?)
          ?.map((e) => ProductPack.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <ProductPack>[],
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
      'slug': instance.slug,
      'categoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'subcategoryId': instance.subcategoryId,
      'subcategoryName': instance.subcategoryName,
      'measureFamilyId': instance.measureFamilyId,
      'measureFamily': instance.measureFamily,
      'recipeUnitId': instance.recipeUnitId,
      'recipeUnit': instance.recipeUnit,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'fromPriceKobo': instance.fromPriceKobo,
      'fromRetailPriceKobo': instance.fromRetailPriceKobo,
      'discountPercent': instance.discountPercent,
      'description': instance.description,
      'origin': instance.origin,
      'recipeUnitOverrideMg': instance.recipeUnitOverrideMg,
      'recipeUnitOverrideMl': instance.recipeUnitOverrideMl,
      'expiresAt': instance.expiresAt,
      'isVerified': instance.isVerified,
      'bulkAllocationClaimedPercent': instance.bulkAllocationClaimedPercent,
      'nutritionFacts': instance.nutritionFacts,
      'nutrition': instance.nutrition,
      'allergens': instance.allergens,
      'perfectFor': instance.perfectFor,
      'tags': instance.tags,
      'packs': instance.packs,
      'sortOrder': instance.sortOrder,
      'isActive': instance.isActive,
      'averageRating': instance.averageRating,
      'reviewCount': instance.reviewCount,
      'ratingDistribution': instance.ratingDistribution,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
