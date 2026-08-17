// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartItem _$CartItemFromJson(Map<String, dynamic> json) => _CartItem(
  id: json['id'] as String,
  packId: json['packId'] as String,
  productId: json['productId'] as String,
  name: json['name'] as String,
  brand: json['brand'] as String,
  packageLabel: json['packageLabel'] as String,
  imageUrl: json['imageUrl'] as String,
  quantity: (json['quantity'] as num).toInt(),
  unitPriceKobo: (json['unitPriceKobo'] as num).toInt(),
  lineTotalKobo: (json['lineTotalKobo'] as num).toInt(),
  retailPriceKobo: (json['retailPriceKobo'] as num).toInt(),
);

Map<String, dynamic> _$CartItemToJson(_CartItem instance) => <String, dynamic>{
  'id': instance.id,
  'packId': instance.packId,
  'productId': instance.productId,
  'name': instance.name,
  'brand': instance.brand,
  'packageLabel': instance.packageLabel,
  'imageUrl': instance.imageUrl,
  'quantity': instance.quantity,
  'unitPriceKobo': instance.unitPriceKobo,
  'lineTotalKobo': instance.lineTotalKobo,
  'retailPriceKobo': instance.retailPriceKobo,
};
