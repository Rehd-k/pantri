// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'cart_item.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

/// Mirrors NestJS [CartResponseDto].
@freezed
abstract class Cart with _$Cart {
  const factory Cart({
    required String id,
    required List<CartItem> items,
    required int itemCount,
    required int subtotalKobo,
    required int freeDeliveryMinKobo,
    required int deliveryFeeKobo,
    required int appliedDeliveryFeeKobo,
    required int amountUntilFreeDeliveryKobo,
    required bool qualifiesForFreeDelivery,
    required int totalKobo,
    required String updatedAt,
  }) = _Cart;

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);

  factory Cart.empty() => const Cart(
        id: '',
        items: [],
        itemCount: 0,
        subtotalKobo: 0,
        freeDeliveryMinKobo: 0,
        deliveryFeeKobo: 0,
        appliedDeliveryFeeKobo: 0,
        amountUntilFreeDeliveryKobo: 0,
        qualifiesForFreeDelivery: false,
        totalKobo: 0,
        updatedAt: '',
      );
}
