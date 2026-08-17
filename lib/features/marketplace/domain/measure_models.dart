// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'measure_models.freezed.dart';
part 'measure_models.g.dart';

/// Mirrors NestJS [MeasureUnitResponseDto].
@freezed
abstract class MeasureUnit with _$MeasureUnit {
  const factory MeasureUnit({
    required String id,
    required String slug,
    required String name,
    required String shortLabel,
    required String kind,
    required String dimension,
    int? milligrams,
    int? millilitres,
    int? piecesPerUnit,
    required bool isPurchaseUnit,
    required bool isRecipeUnit,
    required int sortOrder,
    required bool isActive,
    required String createdAt,
    required String updatedAt,
  }) = _MeasureUnit;

  factory MeasureUnit.fromJson(Map<String, dynamic> json) =>
      _$MeasureUnitFromJson(json);
}

/// Mirrors NestJS [MeasureFamilyResponseDto].
@freezed
abstract class MeasureFamily with _$MeasureFamily {
  const factory MeasureFamily({
    required String id,
    required String slug,
    required String name,
    @Default('') String description,
    required String dimension,
    String? defaultRecipeUnitId,
    String? defaultPurchaseUnitId,
    MeasureUnit? defaultRecipeUnit,
    MeasureUnit? defaultPurchaseUnit,
    required int sortOrder,
    required bool isActive,
    required String createdAt,
    required String updatedAt,
  }) = _MeasureFamily;

  factory MeasureFamily.fromJson(Map<String, dynamic> json) =>
      _$MeasureFamilyFromJson(json);
}

/// Mirrors NestJS [ProductPackResponseDto].
@freezed
abstract class ProductPack with _$ProductPack {
  const factory ProductPack({
    required String id,
    required String sku,
    required String productId,
    required String packUnitId,
    required MeasureUnit packUnit,
    required String brand,
    required int packAmount,
    int? amountMg,
    int? amountMl,
    int? amountEach,
    required String packageLabel,
    required String imageUrl,
    required int priceKobo,
    required int retailPriceKobo,
    required int discountPercent,
    required int sortOrder,
    required bool isActive,
    required String createdAt,
    required String updatedAt,
  }) = _ProductPack;

  factory ProductPack.fromJson(Map<String, dynamic> json) =>
      _$ProductPackFromJson(json);
}
