import 'package:dio/dio.dart';

import '../../../core/network/dio_client.dart';
import '../domain/order_models.dart';

class OrdersApi {
  OrdersApi(this._dio);

  final Dio _dio;

  Future<List<EmployeeOrder>> listMine() async {
    try {
      final response = await _dio.get<List<dynamic>>('/employees/me/orders');
      return (response.data ?? [])
          .map((item) => EmployeeOrder.fromJson(item as Map<String, dynamic>))
          .toList(growable: false);
    } on DioException catch (error) {
      throw mapDioError(error);
    }
  }

  Future<EmployeeOrder> getMine(String id) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/employees/me/orders/$id',
      );
      return EmployeeOrder.fromJson(response.data!);
    } on DioException catch (error) {
      throw mapDioError(error);
    }
  }
}
