import 'package:dio/dio.dart';

import '../../../core/network/dio_client.dart';
import '../domain/marketplace_banner.dart';
import '../domain/marketplace_category.dart';
import '../domain/marketplace_product.dart';
import '../domain/marketplace_subcategory.dart';
import '../domain/product_list_response.dart';
import '../domain/product_review.dart';

class MarketplaceApi {
  MarketplaceApi(this._dio);

  final Dio _dio;

  Future<List<MarketplaceCategory>> listActiveCategories() async {
    try {
      final response = await _dio.get<List<dynamic>>('/marketplace/categories');
      return (response.data ?? [])
          .map((e) => MarketplaceCategory.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<List<MarketplaceBanner>> listActiveBanners() async {
    try {
      final response = await _dio.get<List<dynamic>>('/marketplace/banners');
      return (response.data ?? [])
          .map((e) => MarketplaceBanner.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<List<MarketplaceSubcategory>> listActiveSubcategories(
    String categoryId,
  ) async {
    try {
      final response = await _dio.get<List<dynamic>>(
        '/marketplace/categories/$categoryId/subcategories',
      );
      return (response.data ?? [])
          .map(
            (e) => MarketplaceSubcategory.fromJson(e as Map<String, dynamic>),
          )
          .toList();
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<ProductListResponse> listActiveProducts({
    String? q,
    String? categoryId,
    String? subcategoryId,
    int? skip,
    int? take,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/marketplace/products',
        queryParameters: {
          if (q != null && q.isNotEmpty) 'q': q,
          if (categoryId != null) 'categoryId': categoryId,
          if (subcategoryId != null) 'subcategoryId': subcategoryId,
          if (skip != null) 'skip': skip,
          if (take != null) 'take': take,
        },
      );
      return ProductListResponse.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<MarketplaceProduct> getActiveProduct(String id) async {
    try {
      final response =
          await _dio.get<Map<String, dynamic>>('/marketplace/products/$id');
      return MarketplaceProduct.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<ProductReviewsResponse> listProductReviews(
    String productId, {
    String sort = 'recent',
    int? skip,
    int? take,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/marketplace/products/$productId/reviews',
        queryParameters: {
          'sort': sort,
          if (skip != null) 'skip': skip,
          if (take != null) 'take': take,
        },
      );
      return ProductReviewsResponse.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<ProductReview> createProductReview(
    String productId,
    CreateReviewRequest request,
  ) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/marketplace/products/$productId/reviews',
        data: request.toJson(),
      );
      return ProductReview.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<ProductReview> toggleReviewHelpful(
    String productId,
    String reviewId,
  ) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/marketplace/products/$productId/reviews/$reviewId/helpful',
      );
      return ProductReview.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }
}
