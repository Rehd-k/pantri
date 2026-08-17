/// Mirrors Nest/Prisma UserStatus enum values exactly.
enum UserStatus {
  active,
  pendingApproval,
  suspended;

  String get apiValue => switch (this) {
    UserStatus.active => 'ACTIVE',
    UserStatus.pendingApproval => 'PENDING_APPROVAL',
    UserStatus.suspended => 'SUSPENDED',
  };

  static UserStatus fromApi(String value) {
    return UserStatus.values.firstWhere(
      (status) => status.apiValue == value,
      orElse: () => throw ArgumentError('Unknown UserStatus: $value'),
    );
  }
}
