import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../nutrition/domain/nutrition_models.dart';
import '../data/inventory_repository.dart';

final householdStockProvider =
    FutureProvider.autoDispose<List<HouseholdStockItem>>((ref) {
  return ref.watch(inventoryRepositoryProvider).listStock();
});

final restockAlertsProvider =
    FutureProvider.autoDispose<List<RestockAlert>>((ref) {
  return ref.watch(inventoryRepositoryProvider).listAlerts();
});
