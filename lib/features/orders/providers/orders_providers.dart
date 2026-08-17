import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/orders_repository.dart';
import '../domain/order_models.dart';

final employeeOrdersProvider = FutureProvider.autoDispose<List<EmployeeOrder>>((
  ref,
) {
  return ref.watch(ordersRepositoryProvider).listMine();
});

final employeeOrderProvider = FutureProvider.autoDispose
    .family<EmployeeOrder, String>((ref, id) {
      return ref.watch(ordersRepositoryProvider).getMine(id);
    });
