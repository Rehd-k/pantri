import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/marketplace_repository.dart';
import '../domain/marketplace_banner.dart';
import '../domain/marketplace_category.dart';
import '../domain/marketplace_product.dart';
import '../domain/marketplace_subcategory.dart';
import '../domain/product_list_response.dart';
import '../domain/product_review.dart';

final marketplaceCategoriesProvider =
    FutureProvider.autoDispose<List<MarketplaceCategory>>((ref) async {
  return ref.watch(marketplaceRepositoryProvider).listActiveCategories();
});

final marketplaceBannersProvider =
    FutureProvider.autoDispose<List<MarketplaceBanner>>((ref) async {
  return ref.watch(marketplaceRepositoryProvider).listActiveBanners();
});

final activeSubcategoriesProvider = FutureProvider.autoDispose
    .family<List<MarketplaceSubcategory>, String>((ref, categoryId) async {
  return ref
      .watch(marketplaceRepositoryProvider)
      .listActiveSubcategories(categoryId);
});

class ProductSearchParams {
  const ProductSearchParams({
    this.q,
    this.categoryId,
    this.subcategoryId,
  });

  final String? q;
  final String? categoryId;
  final String? subcategoryId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductSearchParams &&
          q == other.q &&
          categoryId == other.categoryId &&
          subcategoryId == other.subcategoryId;

  @override
  int get hashCode => Object.hash(q, categoryId, subcategoryId);
}

final productSearchProvider = FutureProvider.autoDispose
    .family<ProductListResponse, ProductSearchParams>((ref, params) async {
  return ref.watch(marketplaceRepositoryProvider).listActiveProducts(
        q: params.q,
        categoryId: params.categoryId,
        subcategoryId: params.subcategoryId,
      );
});

final productDetailProvider = FutureProvider.autoDispose
    .family<MarketplaceProduct, String>((ref, productId) async {
  return ref.watch(marketplaceRepositoryProvider).getActiveProduct(productId);
});

class ProductReviewsParams {
  const ProductReviewsParams({
    required this.productId,
    this.sort = 'recent',
    this.skip = 0,
    this.take = 10,
  });

  final String productId;
  final String sort;
  final int skip;
  final int take;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductReviewsParams &&
          productId == other.productId &&
          sort == other.sort &&
          skip == other.skip &&
          take == other.take;

  @override
  int get hashCode => Object.hash(productId, sort, skip, take);
}

final productReviewsProvider = FutureProvider.autoDispose
    .family<ProductReviewsResponse, ProductReviewsParams>((ref, params) async {
  return ref.watch(marketplaceRepositoryProvider).listProductReviews(
        params.productId,
        sort: params.sort,
        skip: params.skip,
        take: params.take,
      );
});
