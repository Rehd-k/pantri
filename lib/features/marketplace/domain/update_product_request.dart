// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'perfect_for_item.dart';

part 'update_product_request.freezed.dart';
part 'update_product_request.g.dart';

@freezed
abstract class UpdateProductRequest with _$UpdateProductRequest {
  const factory UpdateProductRequest({
    String? categoryId,
    String? subcategoryId,
    String? name,
    String? brand,
    String? packageLabel,
    String? imageUrl,
    int? priceKobo,
    int? retailPriceKobo,
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
  }) = _UpdateProductRequest;

  factory UpdateProductRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductRequestFromJson(json);
}
