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

/// Tab a cold-start deep link wants applied when [EmployeeShell] is created.
final requestedEmployeeTabProvider =
    NotifierProvider<RequestedEmployeeTabNotifier, int?>(
  RequestedEmployeeTabNotifier.new,
);

class RequestedEmployeeTabNotifier extends Notifier<int?> {
  @override
  int? build() => null;

  void request(int index) => state = index;

  void clear() => state = null;

  int? take() {
    final value = state;
    state = null;
    return value;
  }
}

final employeeDashboardProvider =
    FutureProvider.autoDispose<EmployeeDashboard>((ref) async {
  return ref.watch(homeRepositoryProvider).getDashboard();
});
