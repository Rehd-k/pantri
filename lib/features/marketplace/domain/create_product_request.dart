// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'perfect_for_item.dart';

part 'create_product_request.freezed.dart';
part 'create_product_request.g.dart';

@freezed
abstract class CreateProductRequest with _$CreateProductRequest {
  const factory CreateProductRequest({
    required String categoryId,
    required String subcategoryId,
    required String name,
    required String brand,
    required String packageLabel,
    required String imageUrl,
    required int priceKobo,
    required int retailPriceKobo,
    String? description,
    String? origin,
    String? expiresAt,
    bool? isVerified,
    int? bulkAllocationClaimedPercent,
    Map<String, String>? nutritionFacts,
    List<PerfectForItem>? perfectFor,
    List<String>? tags,
    int? sortOrder,
    bool? isActive,
  }) = _CreateProductRequest;

  factory CreateProductRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateProductRequestFromJson(json);
}
