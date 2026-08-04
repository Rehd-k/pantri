import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/dio_client.dart';
import '../domain/create_banner_request.dart';
import '../domain/create_category_request.dart';
import '../domain/create_product_request.dart';
import '../domain/create_subcategory_request.dart';
import '../domain/marketplace_banner.dart';
import '../domain/marketplace_category.dart';
import '../domain/marketplace_product.dart';
import '../domain/marketplace_subcategory.dart';
import '../domain/product_list_response.dart';
import '../domain/product_review.dart';
import '../domain/update_banner_request.dart';
import '../domain/update_category_request.dart';
import '../domain/update_product_request.dart';
import '../domain/update_subcategory_request.dart';
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

  Future<List<MarketplaceCategory>> listAdminCategories() =>
      _api.listAdminCategories();

  Future<MarketplaceCategory> createCategory(CreateCategoryRequest request) =>
      _api.createCategory(request);

  Future<MarketplaceCategory> updateCategory(
    String id,
    UpdateCategoryRequest request,
  ) =>
      _api.updateCategory(id, request);

  Future<MarketplaceCategory> deactivateCategory(String id) =>
      _api.deactivateCategory(id);

  Future<List<MarketplaceBanner>> listAdminBanners() =>
      _api.listAdminBanners();

  Future<MarketplaceBanner> createBanner(CreateBannerRequest request) =>
      _api.createBanner(request);

  Future<MarketplaceBanner> updateBanner(
    String id,
    UpdateBannerRequest request,
  ) =>
      _api.updateBanner(id, request);

  Future<MarketplaceBanner> deactivateBanner(String id) =>
      _api.deactivateBanner(id);

  Future<List<MarketplaceSubcategory>> listAdminSubcategories({
    String? categoryId,
  }) =>
      _api.listAdminSubcategories(categoryId: categoryId);

  Future<MarketplaceSubcategory> createSubcategory(
    CreateSubcategoryRequest request,
  ) =>
      _api.createSubcategory(request);

  Future<MarketplaceSubcategory> updateSubcategory(
    String id,
    UpdateSubcategoryRequest request,
  ) =>
      _api.updateSubcategory(id, request);

  Future<MarketplaceSubcategory> deactivateSubcategory(String id) =>
      _api.deactivateSubcategory(id);

  Future<ProductListResponse> listAdminProducts({
    String? q,
    String? categoryId,
    String? subcategoryId,
  }) =>
      _api.listAdminProducts(
        q: q,
        categoryId: categoryId,
        subcategoryId: subcategoryId,
      );

  Future<MarketplaceProduct> createProduct(CreateProductRequest request) =>
      _api.createProduct(request);

  Future<MarketplaceProduct> updateProduct(
    String id,
    UpdateProductRequest request,
  ) =>
      _api.updateProduct(id, request);

  Future<MarketplaceProduct> deactivateProduct(String id) =>
      _api.deactivateProduct(id);
}
