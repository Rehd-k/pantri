import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_models.freezed.dart';
part 'order_models.g.dart';

@freezed
abstract class EmployeeOrderItem with _$EmployeeOrderItem {
  const factory EmployeeOrderItem({
    required String id,
    required String productId,
    String? packId,
    required String name,
    required String brand,
    required String packageLabel,
    required int quantity,
    required int fulfilledQuantity,
    required int unitPriceKobo,
    required int lineTotalKobo,
  }) = _EmployeeOrderItem;

  factory EmployeeOrderItem.fromJson(Map<String, dynamic> json) =>
      _$EmployeeOrderItemFromJson(json);
}

@freezed
abstract class OrderStatusHistory with _$OrderStatusHistory {
  const factory OrderStatusHistory({
    required String id,
    String? fromStatus,
    required String toStatus,
    String? note,
    String? changedById,
    required String createdAt,
  }) = _OrderStatusHistory;

  factory OrderStatusHistory.fromJson(Map<String, dynamic> json) =>
      _$OrderStatusHistoryFromJson(json);
}

@freezed
abstract class EmployeeOrder with _$EmployeeOrder {
  const factory EmployeeOrder({
    required String id,
    required String employeeId,
    required String employerId,
    required String pickupPointId,
    required String productType,
    required String fulfillmentStatus,
    required String statusLabel,
    required String creditStatus,
    required int subtotalKobo,
    required int deliveryFeeKobo,
    required int serviceFeeKobo,
    required int totalKobo,
    int? approvedAmountKobo,
    String? approvalExpiresAt,
    String? graceInterestStartsAt,
    int? reservedKobo,
    String? reservationStatus,
    @Default(<EmployeeOrderItem>[]) List<EmployeeOrderItem> items,
    @Default(<OrderStatusHistory>[]) List<OrderStatusHistory> statusHistory,
    required String createdAt,
    required String updatedAt,
  }) = _EmployeeOrder;

  factory EmployeeOrder.fromJson(Map<String, dynamic> json) =>
      _$EmployeeOrderFromJson(json);
}
