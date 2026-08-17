// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'marketplace_category.freezed.dart';
part 'marketplace_category.g.dart';

/// Mirrors NestJS [CategoryResponseDto].
@freezed
abstract class MarketplaceCategory with _$MarketplaceCategory {
  const factory MarketplaceCategory({
    required String id,
    required String slug,
    required String name,
    required String imageUrl,
    required String accentColor,
    required int sortOrder,
    required bool isActive,
    required String createdAt,
    required String updatedAt,
  }) = _MarketplaceCategory;

  factory MarketplaceCategory.fromJson(Map<String, dynamic> json) =>
      _$MarketplaceCategoryFromJson(json);
}
