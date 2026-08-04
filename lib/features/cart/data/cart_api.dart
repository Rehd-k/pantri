import 'package:dio/dio.dart';

import '../../../core/network/dio_client.dart';
import '../domain/cart.dart';

class CartApi {
  CartApi(this._dio);

  final Dio _dio;

  Future<Cart> getCart() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>('/cart');
      return Cart.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<Cart> addItem({
    required String productId,
    int quantity = 1,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/cart/items',
        data: {'productId': productId, 'quantity': quantity},
      );
      return Cart.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<Cart> updateItem({
    required String productId,
    required int quantity,
  }) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/cart/items/$productId',
        data: {'quantity': quantity},
      );
      return Cart.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<Cart> removeItem(String productId) async {
    try {
      final response = await _dio.delete<Map<String, dynamic>>(
        '/cart/items/$productId',
      );
      return Cart.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<Cart> clearCart() async {
    try {
      final response = await _dio.delete<Map<String, dynamic>>('/cart');
      return Cart.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }
}
