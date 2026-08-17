// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measure_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MeasureUnit _$MeasureUnitFromJson(Map<String, dynamic> json) => _MeasureUnit(
  id: json['id'] as String,
  slug: json['slug'] as String,
  name: json['name'] as String,
  shortLabel: json['shortLabel'] as String,
  kind: json['kind'] as String,
  dimension: json['dimension'] as String,
  milligrams: (json['milligrams'] as num?)?.toInt(),
  millilitres: (json['millilitres'] as num?)?.toInt(),
  piecesPerUnit: (json['piecesPerUnit'] as num?)?.toInt(),
  isPurchaseUnit: json['isPurchaseUnit'] as bool,
  isRecipeUnit: json['isRecipeUnit'] as bool,
  sortOrder: (json['sortOrder'] as num).toInt(),
  isActive: json['isActive'] as bool,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
);

Map<String, dynamic> _$MeasureUnitToJson(_MeasureUnit instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
      'shortLabel': instance.shortLabel,
      'kind': instance.kind,
      'dimension': instance.dimension,
      'milligrams': instance.milligrams,
      'millilitres': instance.millilitres,
      'piecesPerUnit': instance.piecesPerUnit,
      'isPurchaseUnit': instance.isPurchaseUnit,
      'isRecipeUnit': instance.isRecipeUnit,
      'sortOrder': instance.sortOrder,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_MeasureFamily _$MeasureFamilyFromJson(Map<String, dynamic> json) =>
    _MeasureFamily(
      id: json['id'] as String,
      slug: json['slug'] as String,
      name: json['name'] as String,
      description: json['description'] as String? ?? '',
      dimension: json['dimension'] as String,
      defaultRecipeUnitId: json['defaultRecipeUnitId'] as String?,
      defaultPurchaseUnitId: json['defaultPurchaseUnitId'] as String?,
      defaultRecipeUnit: json['defaultRecipeUnit'] == null
          ? null
          : MeasureUnit.fromJson(
              json['defaultRecipeUnit'] as Map<String, dynamic>,
            ),
      defaultPurchaseUnit: json['defaultPurchaseUnit'] == null
          ? null
          : MeasureUnit.fromJson(
              json['defaultPurchaseUnit'] as Map<String, dynamic>,
            ),
      sortOrder: (json['sortOrder'] as num).toInt(),
      isActive: json['isActive'] as bool,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$MeasureFamilyToJson(_MeasureFamily instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
      'description': instance.description,
      'dimension': instance.dimension,
      'defaultRecipeUnitId': instance.defaultRecipeUnitId,
      'defaultPurchaseUnitId': instance.defaultPurchaseUnitId,
      'defaultRecipeUnit': instance.defaultRecipeUnit,
      'defaultPurchaseUnit': instance.defaultPurchaseUnit,
      'sortOrder': instance.sortOrder,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_ProductPack _$ProductPackFromJson(Map<String, dynamic> json) => _ProductPack(
  id: json['id'] as String,
  sku: json['sku'] as String,
  productId: json['productId'] as String,
  packUnitId: json['packUnitId'] as String,
  packUnit: MeasureUnit.fromJson(json['packUnit'] as Map<String, dynamic>),
  brand: json['brand'] as String,
  packAmount: (json['packAmount'] as num).toInt(),
  amountMg: (json['amountMg'] as num?)?.toInt(),
  amountMl: (json['amountMl'] as num?)?.toInt(),
  amountEach: (json['amountEach'] as num?)?.toInt(),
  packageLabel: json['packageLabel'] as String,
  imageUrl: json['imageUrl'] as String,
  priceKobo: (json['priceKobo'] as num).toInt(),
  retailPriceKobo: (json['retailPriceKobo'] as num).toInt(),
  discountPercent: (json['discountPercent'] as num).toInt(),
  sortOrder: (json['sortOrder'] as num).toInt(),
  isActive: json['isActive'] as bool,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
);

Map<String, dynamic> _$ProductPackToJson(_ProductPack instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sku': instance.sku,
      'productId': instance.productId,
      'packUnitId': instance.packUnitId,
      'packUnit': instance.packUnit,
      'brand': instance.brand,
      'packAmount': instance.packAmount,
      'amountMg': instance.amountMg,
      'amountMl': instance.amountMl,
      'amountEach': instance.amountEach,
      'packageLabel': instance.packageLabel,
      'imageUrl': instance.imageUrl,
      'priceKobo': instance.priceKobo,
      'retailPriceKobo': instance.retailPriceKobo,
      'discountPercent': instance.discountPercent,
      'sortOrder': instance.sortOrder,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
