import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/dio_client.dart';
import '../domain/cart.dart';
import 'cart_api.dart';

final cartApiProvider = Provider<CartApi>((ref) {
  return CartApi(ref.watch(dioProvider));
});

final cartRepositoryProvider = Provider<CartRepository>((ref) {
  return CartRepository(api: ref.watch(cartApiProvider));
});

class CartRepository {
  CartRepository({required CartApi api}) : _api = api;

  final CartApi _api;

  Future<Cart> getCart() => _api.getCart();

  Future<Cart> addItem({required String productId, int quantity = 1}) =>
      _api.addItem(productId: productId, quantity: quantity);

  Future<Cart> updateItem({
    required String productId,
    required int quantity,
  }) =>
      _api.updateItem(productId: productId, quantity: quantity);

  Future<Cart> removeItem(String productId) => _api.removeItem(productId);

  Future<Cart> clearCart() => _api.clearCart();
}
