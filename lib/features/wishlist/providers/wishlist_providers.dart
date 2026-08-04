import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/wishlist_repository.dart';
import '../domain/wishlist_item.dart';

final wishlistProvider =
    FutureProvider.autoDispose<WishlistListResponse>((ref) async {
  return ref.watch(wishlistRepositoryProvider).list();
});

final isProductSavedProvider =
    FutureProvider.autoDispose.family<bool, String>((ref, productId) async {
  final status =
      await ref.watch(wishlistRepositoryProvider).status(productId);
  return status.saved;
});
