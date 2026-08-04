import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/dio_client.dart';
import '../domain/employee_dashboard.dart';
import 'home_api.dart';

final homeApiProvider = Provider<HomeApi>((ref) {
  return HomeApi(ref.watch(dioProvider));
});

final homeRepositoryProvider = Provider<HomeRepository>((ref) {
  return HomeRepository(api: ref.watch(homeApiProvider));
});

class HomeRepository {
  HomeRepository({required HomeApi api}) : _api = api;

  final HomeApi _api;

  Future<EmployeeDashboard> getDashboard() => _api.getDashboard();
}
