import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/dio_client.dart';
import '../domain/marketplace_banner.dart';
import '../domain/marketplace_category.dart';
import '../domain/marketplace_product.dart';
import '../domain/marketplace_subcategory.dart';
import '../domain/product_list_response.dart';
import '../domain/product_review.dart';
import 'marketplace_api.dart';

final marketplaceApiProvider = Provider<MarketplaceApi>((ref) {
  return MarketplaceApi(ref.watch(dioProvider));
});

final marketplaceRepositoryProvider = Provider<MarketplaceRepository>((ref) {
  return MarketplaceRepository(api: ref.watch(marketplaceApiProvider));
});

class MarketplaceRepository {
  MarketplaceRepository({required MarketplaceApi api}) : _api = api;

  final MarketplaceApi _api;

  Future<List<MarketplaceCategory>> listActiveCategories() =>
      _api.listActiveCategories();

  Future<List<MarketplaceBanner>> listActiveBanners() =>
      _api.listActiveBanners();

  Future<List<MarketplaceSubcategory>> listActiveSubcategories(
    String categoryId,
  ) =>
      _api.listActiveSubcategories(categoryId);

  Future<ProductListResponse> listActiveProducts({
    String? q,
    String? categoryId,
    String? subcategoryId,
    int? skip,
    int? take,
  }) =>
      _api.listActiveProducts(
        q: q,
        categoryId: categoryId,
        subcategoryId: subcategoryId,
        skip: skip,
        take: take,
      );

  Future<MarketplaceProduct> getActiveProduct(String id) =>
      _api.getActiveProduct(id);

  Future<ProductReviewsResponse> listProductReviews(
    String productId, {
    String sort = 'recent',
    int? skip,
    int? take,
  }) =>
      _api.listProductReviews(
        productId,
        sort: sort,
        skip: skip,
        take: take,
      );

  Future<ProductReview> createProductReview(
    String productId,
    CreateReviewRequest request,
  ) =>
      _api.createProductReview(productId, request);

  Future<ProductReview> toggleReviewHelpful(
    String productId,
    String reviewId,
  ) =>
      _api.toggleReviewHelpful(productId, reviewId);
}
