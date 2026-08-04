/// Mirrors Nest/Prisma CreditAccountStatus enum values exactly.
enum CreditAccountStatus {
  active,
  frozen,
  closed;

  String get apiValue => switch (this) {
        CreditAccountStatus.active => 'ACTIVE',
        CreditAccountStatus.frozen => 'FROZEN',
        CreditAccountStatus.closed => 'CLOSED',
      };

  static CreditAccountStatus fromApi(String value) {
    return CreditAccountStatus.values.firstWhere(
      (status) => status.apiValue == value,
      orElse: () => throw ArgumentError('Unknown CreditAccountStatus: $value'),
    );
  }
}
