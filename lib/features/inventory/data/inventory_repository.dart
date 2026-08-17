import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/dio_client.dart';
import '../../nutrition/domain/nutrition_models.dart';
import 'inventory_api.dart';

class InventoryRepository {
  InventoryRepository(this._api);

  final InventoryApi _api;

  Future<List<HouseholdStockItem>> listStock() => _api.listStock();

  Future<HouseholdStockItem> addStock({
    required String productId,
    required int quantity,
    String? measureUnitId,
  }) =>
      _api.addStock(
        productId: productId,
        quantity: quantity,
        measureUnitId: measureUnitId,
      );

  Future<HouseholdStockItem> updateStock({
    required String stockId,
    int? quantityCanonical,
    int? restockThresholdCanonical,
  }) =>
      _api.updateStock(
        stockId: stockId,
        quantityCanonical: quantityCanonical,
        restockThresholdCanonical: restockThresholdCanonical,
      );

  Future<List<RestockAlert>> listAlerts() => _api.listAlerts();

  Future<RestockAlert> stockUp(String alertId) => _api.stockUp(alertId);

  Future<RestockAlert> dismiss(String alertId) => _api.dismiss(alertId);
}

final inventoryApiProvider = Provider<InventoryApi>((ref) {
  return InventoryApi(ref.watch(dioProvider));
});

final inventoryRepositoryProvider = Provider<InventoryRepository>((ref) {
  return InventoryRepository(ref.watch(inventoryApiProvider));
});
