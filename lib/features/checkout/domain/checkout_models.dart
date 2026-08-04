// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_models.freezed.dart';
part 'checkout_models.g.dart';

/// Mirrors Nest/Prisma OrderFulfillmentStatus enum values exactly.
enum OrderFulfillmentStatus {
  draft,
  pendingApproval,
  approved,
  processing,
  readyForPickup,
  outForDelivery,
  fulfilled,
  cancelled;

  String get apiValue => switch (this) {
        OrderFulfillmentStatus.draft => 'DRAFT',
        OrderFulfillmentStatus.pendingApproval => 'PENDING_APPROVAL',
        OrderFulfillmentStatus.approved => 'APPROVED',
        OrderFulfillmentStatus.processing => 'PROCESSING',
        OrderFulfillmentStatus.readyForPickup => 'READY_FOR_PICKUP',
        OrderFulfillmentStatus.outForDelivery => 'OUT_FOR_DELIVERY',
        OrderFulfillmentStatus.fulfilled => 'FULFILLED',
        OrderFulfillmentStatus.cancelled => 'CANCELLED',
      };

  static OrderFulfillmentStatus fromApi(String value) {
    return OrderFulfillmentStatus.values.firstWhere(
      (status) => status.apiValue == value,
      orElse: () =>
          throw ArgumentError('Unknown OrderFulfillmentStatus: $value'),
    );
  }

  String get label => switch (this) {
        OrderFulfillmentStatus.draft => 'Draft',
        OrderFulfillmentStatus.pendingApproval => 'Pending approval',
        OrderFulfillmentStatus.approved => 'Approved',
        OrderFulfillmentStatus.processing => 'Processing',
        OrderFulfillmentStatus.readyForPickup => 'Ready for pickup',
        OrderFulfillmentStatus.outForDelivery => 'Out for delivery',
        OrderFulfillmentStatus.fulfilled => 'Fulfilled',
        OrderFulfillmentStatus.cancelled => 'Cancelled',
      };
}

/// Mirrors Nest/Prisma OrderCreditStatus enum values exactly.
enum OrderCreditStatus {
  none,
  reserved,
  partiallyCaptured,
  captured,
  partiallyReleased,
  released,
  partiallyRefunded,
  refunded;

  String get apiValue => switch (this) {
        OrderCreditStatus.none => 'NONE',
        OrderCreditStatus.reserved => 'RESERVED',
        OrderCreditStatus.partiallyCaptured => 'PARTIALLY_CAPTURED',
        OrderCreditStatus.captured => 'CAPTURED',
        OrderCreditStatus.partiallyReleased => 'PARTIALLY_RELEASED',
        OrderCreditStatus.released => 'RELEASED',
        OrderCreditStatus.partiallyRefunded => 'PARTIALLY_REFUNDED',
        OrderCreditStatus.refunded => 'REFUNDED',
      };

  static OrderCreditStatus fromApi(String value) {
    return OrderCreditStatus.values.firstWhere(
      (status) => status.apiValue == value,
      orElse: () => throw ArgumentError('Unknown OrderCreditStatus: $value'),
    );
  }
}

String _fulfillmentStatusToJson(OrderFulfillmentStatus status) =>
    status.apiValue;
String _creditStatusToJson(OrderCreditStatus status) => status.apiValue;

@freezed
abstract class EmployeeLocation with _$EmployeeLocation {
  const factory EmployeeLocation({
    String? addressLine,
    String? city,
    String? state,
    double? latitude,
    double? longitude,
    required bool isSet,
  }) = _EmployeeLocation;

  factory EmployeeLocation.fromJson(Map<String, dynamic> json) =>
      _$EmployeeLocationFromJson(json);
}

@freezed
abstract class UpdateEmployeeLocationRequest
    with _$UpdateEmployeeLocationRequest {
  const factory UpdateEmployeeLocationRequest({
    required String addressLine,
    required String city,
    String? state,
    required double latitude,
    required double longitude,
  }) = _UpdateEmployeeLocationRequest;

  factory UpdateEmployeeLocationRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateEmployeeLocationRequestFromJson(json);
}

@freezed
abstract class CompanyListItem with _$CompanyListItem {
  const factory CompanyListItem({
    required String id,
    required String name,
    required String inviteCode,
  }) = _CompanyListItem;

  factory CompanyListItem.fromJson(Map<String, dynamic> json) =>
      _$CompanyListItemFromJson(json);
}

@freezed
abstract class PickupPoint with _$PickupPoint {
  const factory PickupPoint({
    required String id,
    required String companyId,
    required String label,
    required String addressLine,
    required String city,
    String? state,
    required double latitude,
    required double longitude,
    required bool isActive,
    required String updatedAt,
    double? distanceKm,
  }) = _PickupPoint;

  factory PickupPoint.fromJson(Map<String, dynamic> json) =>
      _$PickupPointFromJson(json);
}

@freezed
abstract class CreatePickupPointRequest with _$CreatePickupPointRequest {
  const factory CreatePickupPointRequest({
    required String label,
    required String addressLine,
    required String city,
    String? state,
    required double latitude,
    required double longitude,
    @Default(true) bool isActive,
  }) = _CreatePickupPointRequest;

  factory CreatePickupPointRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePickupPointRequestFromJson(json);
}

@freezed
abstract class UpdatePickupPointRequest with _$UpdatePickupPointRequest {
  const factory UpdatePickupPointRequest({
    String? label,
    String? addressLine,
    String? city,
    String? state,
    double? latitude,
    double? longitude,
    bool? isActive,
  }) = _UpdatePickupPointRequest;

  factory UpdatePickupPointRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdatePickupPointRequestFromJson(json);
}

@freezed
abstract class CheckoutRequest with _$CheckoutRequest {
  const factory CheckoutRequest({
    required String pickupPointId,
  }) = _CheckoutRequest;

  factory CheckoutRequest.fromJson(Map<String, dynamic> json) =>
      _$CheckoutRequestFromJson(json);
}

@freezed
abstract class CheckoutOrderItem with _$CheckoutOrderItem {
  const factory CheckoutOrderItem({
    required String productId,
    required String name,
    required int quantity,
    required int unitPriceKobo,
    required int lineTotalKobo,
  }) = _CheckoutOrderItem;

  factory CheckoutOrderItem.fromJson(Map<String, dynamic> json) =>
      _$CheckoutOrderItemFromJson(json);
}

@freezed
abstract class CheckoutResponse with _$CheckoutResponse {
  const factory CheckoutResponse({
    required String id,
    @JsonKey(
      fromJson: OrderFulfillmentStatus.fromApi,
      toJson: _fulfillmentStatusToJson,
    )
    required OrderFulfillmentStatus fulfillmentStatus,
    @JsonKey(fromJson: OrderCreditStatus.fromApi, toJson: _creditStatusToJson)
    required OrderCreditStatus creditStatus,
    required int subtotalKobo,
    required int deliveryFeeKobo,
    required int serviceFeeKobo,
    required int totalKobo,
    /// Amount held against the employee's credit account for this order.
    required int reservedKobo,
    required String pickupPointId,
    required String pickupPointLabel,
    required List<CheckoutOrderItem> items,
    required String createdAt,
  }) = _CheckoutResponse;

  factory CheckoutResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckoutResponseFromJson(json);
}
