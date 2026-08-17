// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmployeeOrderItem _$EmployeeOrderItemFromJson(Map<String, dynamic> json) =>
    _EmployeeOrderItem(
      id: json['id'] as String,
      productId: json['productId'] as String,
      packId: json['packId'] as String?,
      name: json['name'] as String,
      brand: json['brand'] as String,
      packageLabel: json['packageLabel'] as String,
      quantity: (json['quantity'] as num).toInt(),
      fulfilledQuantity: (json['fulfilledQuantity'] as num).toInt(),
      unitPriceKobo: (json['unitPriceKobo'] as num).toInt(),
      lineTotalKobo: (json['lineTotalKobo'] as num).toInt(),
    );

Map<String, dynamic> _$EmployeeOrderItemToJson(_EmployeeOrderItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'packId': instance.packId,
      'name': instance.name,
      'brand': instance.brand,
      'packageLabel': instance.packageLabel,
      'quantity': instance.quantity,
      'fulfilledQuantity': instance.fulfilledQuantity,
      'unitPriceKobo': instance.unitPriceKobo,
      'lineTotalKobo': instance.lineTotalKobo,
    };

_OrderStatusHistory _$OrderStatusHistoryFromJson(Map<String, dynamic> json) =>
    _OrderStatusHistory(
      id: json['id'] as String,
      fromStatus: json['fromStatus'] as String?,
      toStatus: json['toStatus'] as String,
      note: json['note'] as String?,
      changedById: json['changedById'] as String?,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$OrderStatusHistoryToJson(_OrderStatusHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fromStatus': instance.fromStatus,
      'toStatus': instance.toStatus,
      'note': instance.note,
      'changedById': instance.changedById,
      'createdAt': instance.createdAt,
    };

_EmployeeOrder _$EmployeeOrderFromJson(
  Map<String, dynamic> json,
) => _EmployeeOrder(
  id: json['id'] as String,
  employeeId: json['employeeId'] as String,
  employerId: json['employerId'] as String,
  pickupPointId: json['pickupPointId'] as String,
  productType: json['productType'] as String,
  fulfillmentStatus: json['fulfillmentStatus'] as String,
  statusLabel: json['statusLabel'] as String,
  creditStatus: json['creditStatus'] as String,
  subtotalKobo: (json['subtotalKobo'] as num).toInt(),
  deliveryFeeKobo: (json['deliveryFeeKobo'] as num).toInt(),
  serviceFeeKobo: (json['serviceFeeKobo'] as num).toInt(),
  totalKobo: (json['totalKobo'] as num).toInt(),
  approvedAmountKobo: (json['approvedAmountKobo'] as num?)?.toInt(),
  approvalExpiresAt: json['approvalExpiresAt'] as String?,
  graceInterestStartsAt: json['graceInterestStartsAt'] as String?,
  reservedKobo: (json['reservedKobo'] as num?)?.toInt(),
  reservationStatus: json['reservationStatus'] as String?,
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => EmployeeOrderItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <EmployeeOrderItem>[],
  statusHistory:
      (json['statusHistory'] as List<dynamic>?)
          ?.map((e) => OrderStatusHistory.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <OrderStatusHistory>[],
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
);

Map<String, dynamic> _$EmployeeOrderToJson(_EmployeeOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employeeId': instance.employeeId,
      'employerId': instance.employerId,
      'pickupPointId': instance.pickupPointId,
      'productType': instance.productType,
      'fulfillmentStatus': instance.fulfillmentStatus,
      'statusLabel': instance.statusLabel,
      'creditStatus': instance.creditStatus,
      'subtotalKobo': instance.subtotalKobo,
      'deliveryFeeKobo': instance.deliveryFeeKobo,
      'serviceFeeKobo': instance.serviceFeeKobo,
      'totalKobo': instance.totalKobo,
      'approvedAmountKobo': instance.approvedAmountKobo,
      'approvalExpiresAt': instance.approvalExpiresAt,
      'graceInterestStartsAt': instance.graceInterestStartsAt,
      'reservedKobo': instance.reservedKobo,
      'reservationStatus': instance.reservationStatus,
      'items': instance.items,
      'statusHistory': instance.statusHistory,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
