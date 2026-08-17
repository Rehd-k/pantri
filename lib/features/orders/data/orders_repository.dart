import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/dio_client.dart';
import '../domain/order_models.dart';
import 'orders_api.dart';

final ordersApiProvider = Provider<OrdersApi>(
  (ref) => OrdersApi(ref.watch(dioProvider)),
);

final ordersRepositoryProvider = Provider<OrdersRepository>(
  (ref) => OrdersRepository(ref.watch(ordersApiProvider)),
);

class OrdersRepository {
  OrdersRepository(this._api);

  final OrdersApi _api;

  Future<List<EmployeeOrder>> listMine() => _api.listMine();

  Future<EmployeeOrder> getMine(String id) => _api.getMine(id);
}
