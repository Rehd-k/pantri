// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'perfect_for_item.dart';
import 'rating_distribution.dart';

part 'marketplace_product.freezed.dart';
part 'marketplace_product.g.dart';

/// Mirrors NestJS [ProductResponseDto].
@freezed
abstract class MarketplaceProduct with _$MarketplaceProduct {
  const factory MarketplaceProduct({
    required String id,
    required String categoryId,
    required String categoryName,
    required String subcategoryId,
    required String subcategoryName,
    required String name,
    required String brand,
    required String packageLabel,
    required String imageUrl,
    required int priceKobo,
    required int retailPriceKobo,
    required int discountPercent,
    @Default('') String description,
    @Default('') String origin,
    String? expiresAt,
    @Default(false) bool isVerified,
    @Default(0) int bulkAllocationClaimedPercent,
    @Default(<String, String>{}) Map<String, String> nutritionFacts,
    @Default(<PerfectForItem>[]) List<PerfectForItem> perfectFor,
    required List<String> tags,
    required int sortOrder,
    required bool isActive,
    @Default(0) double averageRating,
    @Default(0) int reviewCount,
    @Default(RatingDistribution()) RatingDistribution ratingDistribution,
    required String createdAt,
    required String updatedAt,
  }) = _MarketplaceProduct;

  factory MarketplaceProduct.fromJson(Map<String, dynamic> json) =>
      _$MarketplaceProductFromJson(json);
}
