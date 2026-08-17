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
    required String packId,
    int quantity = 1,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/cart/items',
        data: {'packId': packId, 'quantity': quantity},
      );
      return Cart.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<Cart> updateItem({
    required String packId,
    required int quantity,
  }) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/cart/items/$packId',
        data: {'quantity': quantity},
      );
      return Cart.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<Cart> removeItem(String packId) async {
    try {
      final response = await _dio.delete<Map<String, dynamic>>(
        '/cart/items/$packId',
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
