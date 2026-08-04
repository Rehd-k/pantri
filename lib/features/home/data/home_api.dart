import 'package:dio/dio.dart';

import '../../../core/network/dio_client.dart';
import '../domain/employee_dashboard.dart';

class HomeApi {
  HomeApi(this._dio);

  final Dio _dio;

  Future<EmployeeDashboard> getDashboard() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/employees/me/dashboard',
      );
      return EmployeeDashboard.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }
}
