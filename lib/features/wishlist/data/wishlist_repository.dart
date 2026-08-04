import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/dio_client.dart';
import '../domain/wishlist_item.dart';
import 'wishlist_api.dart';

final wishlistApiProvider = Provider<WishlistApi>((ref) {
  return WishlistApi(ref.watch(dioProvider));
});

final wishlistRepositoryProvider = Provider<WishlistRepository>((ref) {
  return WishlistRepository(api: ref.watch(wishlistApiProvider));
});

class WishlistRepository {
  WishlistRepository({required WishlistApi api}) : _api = api;

  final WishlistApi _api;

  Future<WishlistListResponse> list() => _api.list();

  Future<WishlistStatus> status(String productId) => _api.status(productId);

  Future<WishlistItem> add(String productId) => _api.add(productId);

  Future<WishlistStatus> remove(String productId) => _api.remove(productId);
}
