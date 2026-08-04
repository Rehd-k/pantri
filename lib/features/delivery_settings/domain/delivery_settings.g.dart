// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeliverySettings _$DeliverySettingsFromJson(Map<String, dynamic> json) =>
    _DeliverySettings(
      id: json['id'] as String,
      freeDeliveryMinKobo: (json['freeDeliveryMinKobo'] as num).toInt(),
      deliveryFeeKobo: (json['deliveryFeeKobo'] as num).toInt(),
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$DeliverySettingsToJson(_DeliverySettings instance) =>
    <String, dynamic>{
      'id': instance.id,
      'freeDeliveryMinKobo': instance.freeDeliveryMinKobo,
      'deliveryFeeKobo': instance.deliveryFeeKobo,
      'updatedAt': instance.updatedAt,
    };

_UpdateDeliverySettingsRequest _$UpdateDeliverySettingsRequestFromJson(
  Map<String, dynamic> json,
) => _UpdateDeliverySettingsRequest(
  freeDeliveryMinKobo: (json['freeDeliveryMinKobo'] as num?)?.toInt(),
  deliveryFeeKobo: (json['deliveryFeeKobo'] as num?)?.toInt(),
);

Map<String, dynamic> _$UpdateDeliverySettingsRequestToJson(
  _UpdateDeliverySettingsRequest instance,
) => <String, dynamic>{
  'freeDeliveryMinKobo': instance.freeDeliveryMinKobo,
  'deliveryFeeKobo': instance.deliveryFeeKobo,
};
