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

  Future<Cart> addItem({required String packId, int quantity = 1}) =>
      _api.addItem(packId: packId, quantity: quantity);

  Future<Cart> updateItem({
    required String packId,
    required int quantity,
  }) =>
      _api.updateItem(packId: packId, quantity: quantity);

  Future<Cart> removeItem(String packId) => _api.removeItem(packId);

  Future<Cart> clearCart() => _api.clearCart();
}
