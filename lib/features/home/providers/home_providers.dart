import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/home_repository.dart';
import '../domain/employee_dashboard.dart';

/// Employee shell tab index (Home=0 … Profile=4).
final employeeTabIndexProvider =
    NotifierProvider<EmployeeTabIndexNotifier, int>(
  EmployeeTabIndexNotifier.new,
);

class EmployeeTabIndexNotifier extends Notifier<int> {
  @override
  int build() => 0;

  void setIndex(int index) => state = index;
}

final employeeDashboardProvider =
    FutureProvider.autoDispose<EmployeeDashboard>((ref) async {
  return ref.watch(homeRepositoryProvider).getDashboard();
});
