// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WishlistItem _$WishlistItemFromJson(Map<String, dynamic> json) =>
    _WishlistItem(
      id: json['id'] as String,
      productId: json['productId'] as String,
      packId: json['packId'] as String?,
      name: json['name'] as String,
      brand: json['brand'] as String,
      packageLabel: json['packageLabel'] as String,
      imageUrl: json['imageUrl'] as String,
      priceKobo: (json['priceKobo'] as num).toInt(),
      retailPriceKobo: (json['retailPriceKobo'] as num).toInt(),
      bulkAllocationClaimedPercent:
          (json['bulkAllocationClaimedPercent'] as num).toInt(),
      priceKoboAtSave: (json['priceKoboAtSave'] as num).toInt(),
      priceDropped: json['priceDropped'] as bool,
      dropAmountKobo: (json['dropAmountKobo'] as num).toInt(),
      savedAt: json['savedAt'] as String,
    );

Map<String, dynamic> _$WishlistItemToJson(_WishlistItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'packId': instance.packId,
      'name': instance.name,
      'brand': instance.brand,
      'packageLabel': instance.packageLabel,
      'imageUrl': instance.imageUrl,
      'priceKobo': instance.priceKobo,
      'retailPriceKobo': instance.retailPriceKobo,
      'bulkAllocationClaimedPercent': instance.bulkAllocationClaimedPercent,
      'priceKoboAtSave': instance.priceKoboAtSave,
      'priceDropped': instance.priceDropped,
      'dropAmountKobo': instance.dropAmountKobo,
      'savedAt': instance.savedAt,
    };

_WishlistListResponse _$WishlistListResponseFromJson(
  Map<String, dynamic> json,
) => _WishlistListResponse(
  items: (json['items'] as List<dynamic>)
      .map((e) => WishlistItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  total: (json['total'] as num).toInt(),
  priceDropCount: (json['priceDropCount'] as num).toInt(),
);

Map<String, dynamic> _$WishlistListResponseToJson(
  _WishlistListResponse instance,
) => <String, dynamic>{
  'items': instance.items,
  'total': instance.total,
  'priceDropCount': instance.priceDropCount,
};

_WishlistStatus _$WishlistStatusFromJson(Map<String, dynamic> json) =>
    _WishlistStatus(saved: json['saved'] as bool);

Map<String, dynamic> _$WishlistStatusToJson(_WishlistStatus instance) =>
    <String, dynamic>{'saved': instance.saved};
