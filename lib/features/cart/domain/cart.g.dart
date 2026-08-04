// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Cart _$CartFromJson(Map<String, dynamic> json) => _Cart(
  id: json['id'] as String,
  items: (json['items'] as List<dynamic>)
      .map((e) => CartItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  itemCount: (json['itemCount'] as num).toInt(),
  subtotalKobo: (json['subtotalKobo'] as num).toInt(),
  freeDeliveryMinKobo: (json['freeDeliveryMinKobo'] as num).toInt(),
  deliveryFeeKobo: (json['deliveryFeeKobo'] as num).toInt(),
  appliedDeliveryFeeKobo: (json['appliedDeliveryFeeKobo'] as num).toInt(),
  amountUntilFreeDeliveryKobo: (json['amountUntilFreeDeliveryKobo'] as num)
      .toInt(),
  qualifiesForFreeDelivery: json['qualifiesForFreeDelivery'] as bool,
  totalKobo: (json['totalKobo'] as num).toInt(),
  updatedAt: json['updatedAt'] as String,
);

Map<String, dynamic> _$CartToJson(_Cart instance) => <String, dynamic>{
  'id': instance.id,
  'items': instance.items,
  'itemCount': instance.itemCount,
  'subtotalKobo': instance.subtotalKobo,
  'freeDeliveryMinKobo': instance.freeDeliveryMinKobo,
  'deliveryFeeKobo': instance.deliveryFeeKobo,
  'appliedDeliveryFeeKobo': instance.appliedDeliveryFeeKobo,
  'amountUntilFreeDeliveryKobo': instance.amountUntilFreeDeliveryKobo,
  'qualifiesForFreeDelivery': instance.qualifiesForFreeDelivery,
  'totalKobo': instance.totalKobo,
  'updatedAt': instance.updatedAt,
};
