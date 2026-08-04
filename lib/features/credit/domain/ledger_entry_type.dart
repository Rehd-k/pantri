/// Mirrors Nest/Prisma LedgerEntryType enum values exactly.
enum LedgerEntryType {
  reservationCreated,
  reservationReleased,
  purchasePosted,
  deliveryFee,
  serviceFee,
  interest,
  penalty,
  payrollRepayment;

  String get apiValue => switch (this) {
        LedgerEntryType.reservationCreated => 'RESERVATION_CREATED',
        LedgerEntryType.reservationReleased => 'RESERVATION_RELEASED',
        LedgerEntryType.purchasePosted => 'PURCHASE_POSTED',
        LedgerEntryType.deliveryFee => 'DELIVERY_FEE',
        LedgerEntryType.serviceFee => 'SERVICE_FEE',
        LedgerEntryType.interest => 'INTEREST',
        LedgerEntryType.penalty => 'PENALTY',
        LedgerEntryType.payrollRepayment => 'PAYROLL_REPAYMENT',
      };

  static LedgerEntryType fromApi(String value) {
    return LedgerEntryType.values.firstWhere(
      (type) => type.apiValue == value,
      orElse: () => throw ArgumentError('Unknown LedgerEntryType: $value'),
    );
  }

  /// Whether this entry type increases the amount the employee owes.
  bool get isDebit => switch (this) {
        LedgerEntryType.reservationCreated ||
        LedgerEntryType.purchasePosted ||
        LedgerEntryType.deliveryFee ||
        LedgerEntryType.serviceFee ||
        LedgerEntryType.interest ||
        LedgerEntryType.penalty =>
          true,
        LedgerEntryType.reservationReleased ||
        LedgerEntryType.payrollRepayment =>
          false,
      };

  String get label => switch (this) {
        LedgerEntryType.reservationCreated => 'Credit reserved',
        LedgerEntryType.reservationReleased => 'Reservation released',
        LedgerEntryType.purchasePosted => 'Purchase',
        LedgerEntryType.deliveryFee => 'Delivery fee',
        LedgerEntryType.serviceFee => 'Service fee',
        LedgerEntryType.interest => 'Interest charged',
        LedgerEntryType.penalty => 'Penalty',
        LedgerEntryType.payrollRepayment => 'Payroll repayment',
      };
}
