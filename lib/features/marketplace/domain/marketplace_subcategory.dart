// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'marketplace_subcategory.freezed.dart';
part 'marketplace_subcategory.g.dart';

/// Mirrors NestJS [SubcategoryResponseDto].
@freezed
abstract class MarketplaceSubcategory with _$MarketplaceSubcategory {
  const factory MarketplaceSubcategory({
    required String id,
    required String categoryId,
    required String name,
    required int sortOrder,
    required bool isActive,
    required String createdAt,
    required String updatedAt,
  }) = _MarketplaceSubcategory;

  factory MarketplaceSubcategory.fromJson(Map<String, dynamic> json) =>
      _$MarketplaceSubcategoryFromJson(json);
}
