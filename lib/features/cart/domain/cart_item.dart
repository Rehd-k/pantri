// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item.freezed.dart';
part 'cart_item.g.dart';

/// Mirrors NestJS [CartItemResponseDto].
@freezed
abstract class CartItem with _$CartItem {
  const factory CartItem({
    required String id,
    required String packId,
    required String productId,
    required String name,
    required String brand,
    required String packageLabel,
    required String imageUrl,
    required int quantity,
    required int unitPriceKobo,
    required int lineTotalKobo,
    required int retailPriceKobo,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
}
