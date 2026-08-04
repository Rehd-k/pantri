// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'marketplace_product.dart';

part 'product_list_response.freezed.dart';
part 'product_list_response.g.dart';

/// Mirrors NestJS [ProductListResponseDto].
@freezed
abstract class ProductListResponse with _$ProductListResponse {
  const factory ProductListResponse({
    required List<MarketplaceProduct> items,
    required int total,
  }) = _ProductListResponse;

  factory ProductListResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductListResponseFromJson(json);
}
