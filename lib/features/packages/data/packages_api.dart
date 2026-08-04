import 'package:dio/dio.dart';

import '../../../core/network/dio_client.dart';
import '../domain/package_models.dart';

class PackagesApi {
  PackagesApi(this._dio);

  final Dio _dio;

  Future<List<PackageListItem>> listPackages({
    bool includeCommunity = false,
  }) async {
    try {
      final response = await _dio.get<List<dynamic>>(
        '/packages',
        queryParameters: {
          if (includeCommunity) 'includeCommunity': true,
        },
      );
      return (response.data ?? [])
          .map((e) => PackageListItem.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<PantryPackage> getById(String id) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>('/packages/$id');
      return PantryPackage.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<PantryPackage> getByShareSlug(String slug) async {
    try {
      final response =
          await _dio.get<Map<String, dynamic>>('/packages/share/$slug');
      return PantryPackage.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<MinePackagesResponse> listMine() async {
    try {
      final response =
          await _dio.get<Map<String, dynamic>>('/packages/mine');
      return MinePackagesResponse.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<PantryPackage> createCommunity(
    CreateCommunityPackageRequest request,
  ) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/packages',
        data: request.toJson(),
      );
      return PantryPackage.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<PantryPackage> customizePreview(
    String id,
    List<PackageItemInput> items,
  ) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/packages/$id/customize-preview',
        data: {
          'items': items.map((e) => e.toJson()).toList(),
        },
      );
      return PantryPackage.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<Map<String, dynamic>> addToCart(
    String id, {
    List<PackageItemInput>? items,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/packages/$id/add-to-cart',
        data: {
          if (items != null && items.isNotEmpty)
            'items': items.map((e) => e.toJson()).toList(),
        },
      );
      return response.data ?? {};
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<PackageSubscription> subscribe(
    String id, {
    List<PackageItemInput>? items,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/packages/$id/subscribe',
        data: {
          if (items != null && items.isNotEmpty)
            'items': items.map((e) => e.toJson()).toList(),
        },
      );
      return PackageSubscription.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<List<PackageListItem>> adminListPackages() async {
    try {
      final response =
          await _dio.get<List<dynamic>>('/admin/packages');
      return (response.data ?? [])
          .map((e) => PackageListItem.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<PantryPackage> adminCreatePackage(
    CreateAdminPackageRequest request,
  ) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/admin/packages',
        data: request.toJson(),
      );
      return PantryPackage.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<PantryPackage> adminUpdatePackage(
    String id,
    UpdateAdminPackageRequest request,
  ) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/admin/packages/$id',
        data: request.toJson()
          ..removeWhere((_, v) => v == null),
      );
      return PantryPackage.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<PantryPackage> adminDeactivatePackage(String id) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/admin/packages/$id/deactivate',
      );
      return PantryPackage.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<List<DiscountTier>> adminListTiers() async {
    try {
      final response =
          await _dio.get<List<dynamic>>('/admin/packages/tiers');
      return (response.data ?? [])
          .map((e) => DiscountTier.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<DiscountTier> adminCreateTier(
    CreateDiscountTierRequest request,
  ) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/admin/packages/tiers',
        data: request.toJson(),
      );
      return DiscountTier.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<DiscountTier> adminUpdateTier(
    String id,
    UpdateDiscountTierRequest request,
  ) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/admin/packages/tiers/$id',
        data: request.toJson()..removeWhere((_, v) => v == null),
      );
      return DiscountTier.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<DiscountTier> adminDeactivateTier(String id) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/admin/packages/tiers/$id/deactivate',
      );
      return DiscountTier.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }
}
