import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/dio_client.dart';
import '../domain/delivery_settings.dart';
import 'delivery_settings_api.dart';

class DeliverySettingsRepository {
  DeliverySettingsRepository(this._api);

  final DeliverySettingsApi _api;

  Future<DeliverySettings> getSettings() => _api.getSettings();

  Future<DeliverySettings> updateSettings(
    UpdateDeliverySettingsRequest request,
  ) =>
      _api.updateSettings(request);
}

final deliverySettingsApiProvider = Provider<DeliverySettingsApi>((ref) {
  return DeliverySettingsApi(ref.watch(dioProvider));
});

final deliverySettingsRepositoryProvider =
    Provider<DeliverySettingsRepository>((ref) {
  return DeliverySettingsRepository(ref.watch(deliverySettingsApiProvider));
});
