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
}
