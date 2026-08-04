import 'package:dio/dio.dart';

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

  Future<List<MarketplaceCategory>> listAdminCategories() async {
    try {
      final response =
          await _dio.get<List<dynamic>>('/admin/marketplace/categories');
      return (response.data ?? [])
          .map((e) => MarketplaceCategory.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<MarketplaceCategory> createCategory(
    CreateCategoryRequest request,
  ) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/admin/marketplace/categories',
        data: request.toJson(),
      );
      return MarketplaceCategory.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<MarketplaceCategory> updateCategory(
    String id,
    UpdateCategoryRequest request,
  ) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/admin/marketplace/categories/$id',
        data: _withoutNulls(request.toJson()),
      );
      return MarketplaceCategory.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<MarketplaceCategory> deactivateCategory(String id) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/admin/marketplace/categories/$id/deactivate',
      );
      return MarketplaceCategory.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<List<MarketplaceBanner>> listAdminBanners() async {
    try {
      final response =
          await _dio.get<List<dynamic>>('/admin/marketplace/banners');
      return (response.data ?? [])
          .map((e) => MarketplaceBanner.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<MarketplaceBanner> createBanner(CreateBannerRequest request) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/admin/marketplace/banners',
        data: request.toJson(),
      );
      return MarketplaceBanner.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<MarketplaceBanner> updateBanner(
    String id,
    UpdateBannerRequest request,
  ) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/admin/marketplace/banners/$id',
        data: _withoutNulls(request.toJson()),
      );
      return MarketplaceBanner.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<MarketplaceBanner> deactivateBanner(String id) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/admin/marketplace/banners/$id/deactivate',
      );
      return MarketplaceBanner.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<List<MarketplaceSubcategory>> listAdminSubcategories({
    String? categoryId,
  }) async {
    try {
      final response = await _dio.get<List<dynamic>>(
        '/admin/marketplace/subcategories',
        queryParameters: {
          if (categoryId != null) 'categoryId': categoryId,
        },
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

  Future<MarketplaceSubcategory> createSubcategory(
    CreateSubcategoryRequest request,
  ) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/admin/marketplace/subcategories',
        data: request.toJson(),
      );
      return MarketplaceSubcategory.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<MarketplaceSubcategory> updateSubcategory(
    String id,
    UpdateSubcategoryRequest request,
  ) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/admin/marketplace/subcategories/$id',
        data: _withoutNulls(request.toJson()),
      );
      return MarketplaceSubcategory.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<MarketplaceSubcategory> deactivateSubcategory(String id) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/admin/marketplace/subcategories/$id/deactivate',
      );
      return MarketplaceSubcategory.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<ProductListResponse> listAdminProducts({
    String? q,
    String? categoryId,
    String? subcategoryId,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/admin/marketplace/products',
        queryParameters: {
          if (q != null && q.isNotEmpty) 'q': q,
          if (categoryId != null) 'categoryId': categoryId,
          if (subcategoryId != null) 'subcategoryId': subcategoryId,
        },
      );
      return ProductListResponse.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<MarketplaceProduct> createProduct(CreateProductRequest request) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/admin/marketplace/products',
        data: request.toJson(),
      );
      return MarketplaceProduct.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<MarketplaceProduct> updateProduct(
    String id,
    UpdateProductRequest request,
  ) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/admin/marketplace/products/$id',
        data: _withoutNulls(request.toJson()),
      );
      return MarketplaceProduct.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<MarketplaceProduct> deactivateProduct(String id) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/admin/marketplace/products/$id/deactivate',
      );
      return MarketplaceProduct.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Map<String, dynamic> _withoutNulls(Map<String, dynamic> json) {
    return Map<String, dynamic>.fromEntries(
      json.entries.where((e) => e.value != null),
    );
  }
}
