import 'package:dio/dio.dart';

import '../../../core/network/dio_client.dart';
import '../domain/wishlist_item.dart';

class WishlistApi {
  WishlistApi(this._dio);

  final Dio _dio;

  Future<WishlistListResponse> list() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>('/wishlist');
      return WishlistListResponse.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<WishlistStatus> status(String productId) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/wishlist/$productId/status',
      );
      return WishlistStatus.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<WishlistItem> add(String productId) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/wishlist/$productId',
      );
      return WishlistItem.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<WishlistStatus> remove(String productId) async {
    try {
      final response = await _dio.delete<Map<String, dynamic>>(
        '/wishlist/$productId',
      );
      return WishlistStatus.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }
}
