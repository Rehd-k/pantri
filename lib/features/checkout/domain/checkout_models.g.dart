// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmployeeLocation _$EmployeeLocationFromJson(Map<String, dynamic> json) =>
    _EmployeeLocation(
      addressLine: json['addressLine'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      isSet: json['isSet'] as bool,
    );

Map<String, dynamic> _$EmployeeLocationToJson(_EmployeeLocation instance) =>
    <String, dynamic>{
      'addressLine': instance.addressLine,
      'city': instance.city,
      'state': instance.state,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'isSet': instance.isSet,
    };

_UpdateEmployeeLocationRequest _$UpdateEmployeeLocationRequestFromJson(
  Map<String, dynamic> json,
) => _UpdateEmployeeLocationRequest(
  addressLine: json['addressLine'] as String,
  city: json['city'] as String,
  state: json['state'] as String?,
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
);

Map<String, dynamic> _$UpdateEmployeeLocationRequestToJson(
  _UpdateEmployeeLocationRequest instance,
) => <String, dynamic>{
  'addressLine': instance.addressLine,
  'city': instance.city,
  'state': instance.state,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};

_CompanyListItem _$CompanyListItemFromJson(Map<String, dynamic> json) =>
    _CompanyListItem(
      id: json['id'] as String,
      name: json['name'] as String,
      inviteCode: json['inviteCode'] as String,
    );

Map<String, dynamic> _$CompanyListItemToJson(_CompanyListItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'inviteCode': instance.inviteCode,
    };

_PickupPoint _$PickupPointFromJson(Map<String, dynamic> json) => _PickupPoint(
  id: json['id'] as String,
  companyId: json['companyId'] as String,
  label: json['label'] as String,
  addressLine: json['addressLine'] as String,
  city: json['city'] as String,
  state: json['state'] as String?,
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  isActive: json['isActive'] as bool,
  updatedAt: json['updatedAt'] as String,
  distanceKm: (json['distanceKm'] as num?)?.toDouble(),
);

Map<String, dynamic> _$PickupPointToJson(_PickupPoint instance) =>
    <String, dynamic>{
      'id': instance.id,
      'companyId': instance.companyId,
      'label': instance.label,
      'addressLine': instance.addressLine,
      'city': instance.city,
      'state': instance.state,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'isActive': instance.isActive,
      'updatedAt': instance.updatedAt,
      'distanceKm': instance.distanceKm,
    };

_CreatePickupPointRequest _$CreatePickupPointRequestFromJson(
  Map<String, dynamic> json,
) => _CreatePickupPointRequest(
  label: json['label'] as String,
  addressLine: json['addressLine'] as String,
  city: json['city'] as String,
  state: json['state'] as String?,
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  isActive: json['isActive'] as bool? ?? true,
);

Map<String, dynamic> _$CreatePickupPointRequestToJson(
  _CreatePickupPointRequest instance,
) => <String, dynamic>{
  'label': instance.label,
  'addressLine': instance.addressLine,
  'city': instance.city,
  'state': instance.state,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'isActive': instance.isActive,
};

_UpdatePickupPointRequest _$UpdatePickupPointRequestFromJson(
  Map<String, dynamic> json,
) => _UpdatePickupPointRequest(
  label: json['label'] as String?,
  addressLine: json['addressLine'] as String?,
  city: json['city'] as String?,
  state: json['state'] as String?,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  isActive: json['isActive'] as bool?,
);

Map<String, dynamic> _$UpdatePickupPointRequestToJson(
  _UpdatePickupPointRequest instance,
) => <String, dynamic>{
  'label': instance.label,
  'addressLine': instance.addressLine,
  'city': instance.city,
  'state': instance.state,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'isActive': instance.isActive,
};

_CheckoutRequest _$CheckoutRequestFromJson(Map<String, dynamic> json) =>
    _CheckoutRequest(pickupPointId: json['pickupPointId'] as String);

Map<String, dynamic> _$CheckoutRequestToJson(_CheckoutRequest instance) =>
    <String, dynamic>{'pickupPointId': instance.pickupPointId};

_CheckoutOrderItem _$CheckoutOrderItemFromJson(Map<String, dynamic> json) =>
    _CheckoutOrderItem(
      productId: json['productId'] as String,
      name: json['name'] as String,
      quantity: (json['quantity'] as num).toInt(),
      unitPriceKobo: (json['unitPriceKobo'] as num).toInt(),
      lineTotalKobo: (json['lineTotalKobo'] as num).toInt(),
    );

Map<String, dynamic> _$CheckoutOrderItemToJson(_CheckoutOrderItem instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'name': instance.name,
      'quantity': instance.quantity,
      'unitPriceKobo': instance.unitPriceKobo,
      'lineTotalKobo': instance.lineTotalKobo,
    };

_CheckoutResponse _$CheckoutResponseFromJson(Map<String, dynamic> json) =>
    _CheckoutResponse(
      id: json['id'] as String,
      fulfillmentStatus: OrderFulfillmentStatus.fromApi(
        json['fulfillmentStatus'] as String,
      ),
      creditStatus: OrderCreditStatus.fromApi(json['creditStatus'] as String),
      subtotalKobo: (json['subtotalKobo'] as num).toInt(),
      deliveryFeeKobo: (json['deliveryFeeKobo'] as num).toInt(),
      serviceFeeKobo: (json['serviceFeeKobo'] as num).toInt(),
      totalKobo: (json['totalKobo'] as num).toInt(),
      reservedKobo: (json['reservedKobo'] as num).toInt(),
      pickupPointId: json['pickupPointId'] as String,
      pickupPointLabel: json['pickupPointLabel'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => CheckoutOrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$CheckoutResponseToJson(_CheckoutResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fulfillmentStatus': _fulfillmentStatusToJson(instance.fulfillmentStatus),
      'creditStatus': _creditStatusToJson(instance.creditStatus),
      'subtotalKobo': instance.subtotalKobo,
      'deliveryFeeKobo': instance.deliveryFeeKobo,
      'serviceFeeKobo': instance.serviceFeeKobo,
      'totalKobo': instance.totalKobo,
      'reservedKobo': instance.reservedKobo,
      'pickupPointId': instance.pickupPointId,
      'pickupPointLabel': instance.pickupPointLabel,
      'items': instance.items,
      'createdAt': instance.createdAt,
    };
