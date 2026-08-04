import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/delivery_settings_repository.dart';
import '../domain/delivery_settings.dart';

final adminDeliverySettingsProvider =
    FutureProvider.autoDispose<DeliverySettings>((ref) {
  return ref.watch(deliverySettingsRepositoryProvider).getSettings();
});
