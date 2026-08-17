/// Mirrors Nest/Prisma LedgerEntryType enum values exactly.
enum LedgerEntryType {
  reservationCreated,
  reservationReleased,
  purchasePosted,
  deliveryFee,
  serviceFee,
  interest,
  penalty,
  payrollRepayment,
  refund,
  adjustment,
  creditLimitAdjustment,
  writeOff,
  manualCredit,
  manualDebit,
  migration;

  String get apiValue => switch (this) {
    LedgerEntryType.reservationCreated => 'RESERVATION_CREATED',
    LedgerEntryType.reservationReleased => 'RESERVATION_RELEASED',
    LedgerEntryType.purchasePosted => 'PURCHASE_POSTED',
    LedgerEntryType.deliveryFee => 'DELIVERY_FEE',
    LedgerEntryType.serviceFee => 'SERVICE_FEE',
    LedgerEntryType.interest => 'INTEREST',
    LedgerEntryType.penalty => 'PENALTY',
    LedgerEntryType.payrollRepayment => 'PAYROLL_REPAYMENT',
    LedgerEntryType.refund => 'REFUND',
    LedgerEntryType.adjustment => 'ADJUSTMENT',
    LedgerEntryType.creditLimitAdjustment => 'CREDIT_LIMIT_ADJUSTMENT',
    LedgerEntryType.writeOff => 'WRITE_OFF',
    LedgerEntryType.manualCredit => 'MANUAL_CREDIT',
    LedgerEntryType.manualDebit => 'MANUAL_DEBIT',
    LedgerEntryType.migration => 'MIGRATION',
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
    LedgerEntryType.penalty ||
    LedgerEntryType.manualDebit ||
    LedgerEntryType.migration => true,
    LedgerEntryType.reservationReleased ||
    LedgerEntryType.payrollRepayment ||
    LedgerEntryType.refund ||
    LedgerEntryType.adjustment ||
    LedgerEntryType.creditLimitAdjustment ||
    LedgerEntryType.writeOff ||
    LedgerEntryType.manualCredit => false,
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
    LedgerEntryType.refund => 'Refund',
    LedgerEntryType.adjustment => 'Adjustment',
    LedgerEntryType.creditLimitAdjustment => 'Credit limit change',
    LedgerEntryType.writeOff => 'Write-off',
    LedgerEntryType.manualCredit => 'Manual credit',
    LedgerEntryType.manualDebit => 'Manual charge',
    LedgerEntryType.migration => 'Opening balance',
  };
}
