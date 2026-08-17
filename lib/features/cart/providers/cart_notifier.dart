import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../data/cart_repository.dart';
import '../domain/cart.dart';

sealed class CartState {
  const CartState();
}

class CartInitial extends CartState {
  const CartInitial();
}

class CartLoading extends CartState {
  const CartLoading({this.previous});

  final Cart? previous;
}

class CartLoaded extends CartState {
  const CartLoaded(this.cart);

  final Cart cart;
}

class CartError extends CartState {
  const CartError(this.message, {this.previous});

  final String message;
  final Cart? previous;
}

final cartNotifierProvider =
    NotifierProvider<CartNotifier, CartState>(CartNotifier.new);

class CartNotifier extends Notifier<CartState> {
  @override
  CartState build() => const CartInitial();

  CartRepository get _repo => ref.read(cartRepositoryProvider);

  Cart? get _currentCart {
    final s = state;
    return switch (s) {
      CartLoaded(:final cart) => cart,
      CartLoading(:final previous) => previous,
      CartError(:final previous) => previous,
      _ => null,
    };
  }

  Future<void> load() async {
    state = CartLoading(previous: _currentCart);
    try {
      final cart = await _repo.getCart();
      state = CartLoaded(cart);
    } catch (e) {
      state = CartError(
        e is ApiException ? e.message : e.toString(),
        previous: _currentCart,
      );
    }
  }

  Future<void> addProduct(String packId, {int quantity = 1}) async {
    state = CartLoading(previous: _currentCart);
    try {
      final cart = await _repo.addItem(
        packId: packId,
        quantity: quantity,
      );
      state = CartLoaded(cart);
    } catch (e) {
      state = CartError(
        e is ApiException ? e.message : e.toString(),
        previous: _currentCart,
      );
      rethrow;
    }
  }

  Future<void> setQuantity(String packId, int quantity) async {
    if (quantity < 1) {
      await removeProduct(packId);
      return;
    }
    state = CartLoading(previous: _currentCart);
    try {
      final cart = await _repo.updateItem(
        packId: packId,
        quantity: quantity,
      );
      state = CartLoaded(cart);
    } catch (e) {
      state = CartError(
        e is ApiException ? e.message : e.toString(),
        previous: _currentCart,
      );
    }
  }

  Future<void> removeProduct(String packId) async {
    state = CartLoading(previous: _currentCart);
    try {
      final cart = await _repo.removeItem(packId);
      state = CartLoaded(cart);
    } catch (e) {
      state = CartError(
        e is ApiException ? e.message : e.toString(),
        previous: _currentCart,
      );
    }
  }

  Future<void> clear() async {
    state = CartLoading(previous: _currentCart);
    try {
      final cart = await _repo.clearCart();
      state = CartLoaded(cart);
    } catch (e) {
      state = CartError(
        e is ApiException ? e.message : e.toString(),
        previous: _currentCart,
      );
    }
  }
}

final cartItemCountProvider = Provider<int>((ref) {
  final state = ref.watch(cartNotifierProvider);
  return switch (state) {
    CartLoaded(:final cart) => cart.itemCount,
    CartLoading(:final previous) => previous?.itemCount ?? 0,
    CartError(:final previous) => previous?.itemCount ?? 0,
    _ => 0,
  };
});
