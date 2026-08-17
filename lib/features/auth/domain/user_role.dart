/// Mirrors Nest/Prisma UserRole enum values exactly.
enum UserRole {
  admin,
  employer,
  employee,
  supplier,
  logistics;

  String get apiValue => switch (this) {
    UserRole.admin => 'ADMIN',
    UserRole.employer => 'EMPLOYER',
    UserRole.employee => 'EMPLOYEE',
    UserRole.supplier => 'SUPPLIER',
    UserRole.logistics => 'LOGISTICS',
  };

  static UserRole fromApi(String value) {
    return UserRole.values.firstWhere(
      (role) => role.apiValue == value,
      orElse: () => throw ArgumentError('Unknown UserRole: $value'),
    );
  }
}
