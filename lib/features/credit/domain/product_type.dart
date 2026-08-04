/// Mirrors Nest/Prisma ProductType enum values exactly.
enum ProductType {
  food,
  electronics,
  rent,
  schoolFees,
  health,
  other;

  String get apiValue => switch (this) {
        ProductType.food => 'FOOD',
        ProductType.electronics => 'ELECTRONICS',
        ProductType.rent => 'RENT',
        ProductType.schoolFees => 'SCHOOL_FEES',
        ProductType.health => 'HEALTH',
        ProductType.other => 'OTHER',
      };

  static ProductType fromApi(String value) {
    return ProductType.values.firstWhere(
      (type) => type.apiValue == value,
      orElse: () => throw ArgumentError('Unknown ProductType: $value'),
    );
  }
}
