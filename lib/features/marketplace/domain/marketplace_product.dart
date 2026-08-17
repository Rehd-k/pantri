// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'measure_models.dart';
import 'perfect_for_item.dart';
import 'rating_distribution.dart';

part 'marketplace_product.freezed.dart';
part 'marketplace_product.g.dart';

@freezed
abstract class CanonicalNutrition with _$CanonicalNutrition {
  const CanonicalNutrition._();

  const factory CanonicalNutrition({
    @Default(0) int energyKcal,
    @Default(0) int proteinMg,
    @Default(0) int carbsMg,
    @Default(0) int fatMg,
    @Default(0) int fiberMg,
    @Default(0) int sugarMg,
    @Default(0) int sodiumMg,
    @Default(0) int ironUg,
  }) = _CanonicalNutrition;

  factory CanonicalNutrition.fromJson(Map<String, dynamic> json) =>
      _$CanonicalNutritionFromJson(json);

  bool get hasValues =>
      energyKcal > 0 ||
      proteinMg > 0 ||
      carbsMg > 0 ||
      fatMg > 0 ||
      fiberMg > 0 ||
      sugarMg > 0 ||
      sodiumMg > 0 ||
      ironUg > 0;
}

@freezed
abstract class ProductAllergen with _$ProductAllergen {
  const factory ProductAllergen({
    required String id,
    required String name,
  }) = _ProductAllergen;

  factory ProductAllergen.fromJson(Map<String, dynamic> json) =>
      _$ProductAllergenFromJson(json);
}

/// Mirrors NestJS [ProductResponseDto].
@freezed
abstract class MarketplaceProduct with _$MarketplaceProduct {
  const MarketplaceProduct._();

  const factory MarketplaceProduct({
    required String id,
    required String slug,
    required String categoryId,
    required String categoryName,
    required String subcategoryId,
    required String subcategoryName,
    required String measureFamilyId,
    MeasureFamily? measureFamily,
    required String name,
    required String imageUrl,
    required int fromPriceKobo,
    required int fromRetailPriceKobo,
    required int discountPercent,
    @Default('') String description,
    @Default('') String origin,
    int? recipeUnitOverrideMg,
    int? recipeUnitOverrideMl,
    String? expiresAt,
    @Default(false) bool isVerified,
    @Default(0) int bulkAllocationClaimedPercent,
    @Default(<String, String>{}) Map<String, String> nutritionFacts,
    @Default(CanonicalNutrition()) CanonicalNutrition nutrition,
    @Default(<ProductAllergen>[]) List<ProductAllergen> allergens,
    @Default(<PerfectForItem>[]) List<PerfectForItem> perfectFor,
    required List<String> tags,
    @Default(<ProductPack>[]) List<ProductPack> packs,
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

  List<ProductPack> get activePacks =>
      packs.where((p) => p.isActive).toList(growable: false);

  ProductPack? get cheapestPack {
    final list = activePacks.isNotEmpty ? activePacks : packs;
    if (list.isEmpty) return null;
    return list.reduce((a, b) => a.priceKobo <= b.priceKobo ? a : b);
  }

  int get priceKobo => fromPriceKobo;
  int get retailPriceKobo => fromRetailPriceKobo;
  String get brand => cheapestPack?.brand ?? '';
  String get packageLabel {
    final pack = cheapestPack;
    if (pack == null) return '';
    return activePacks.length > 1
        ? 'from ${pack.packageLabel}'
        : pack.packageLabel;
  }
}
