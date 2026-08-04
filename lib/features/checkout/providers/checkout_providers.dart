import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/checkout_repository.dart';
import '../domain/checkout_models.dart';

final employeeLocationProvider =
    FutureProvider.autoDispose<EmployeeLocation>((ref) {
  return ref.watch(checkoutRepositoryProvider).getLocation();
});

final employeePickupPointsProvider =
    FutureProvider.autoDispose<List<PickupPoint>>((ref) {
  return ref.watch(checkoutRepositoryProvider).listEmployeePickupPoints();
});

final adminCompaniesProvider =
    FutureProvider.autoDispose<List<CompanyListItem>>((ref) {
  return ref.watch(checkoutRepositoryProvider).adminListCompanies();
});

final adminPickupPointsProvider =
    FutureProvider.autoDispose.family<List<PickupPoint>, String>((ref, companyId) {
  return ref.watch(checkoutRepositoryProvider).adminListPickupPoints(companyId);
});
