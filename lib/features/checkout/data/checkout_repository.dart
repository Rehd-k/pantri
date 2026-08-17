import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/dio_client.dart';
import '../domain/checkout_models.dart';
import 'checkout_api.dart';

class CheckoutRepository {
  CheckoutRepository(this._api);

  final CheckoutApi _api;

  Future<EmployeeLocation> getLocation() => _api.getLocation();

  Future<EmployeeLocation> updateLocation(
    UpdateEmployeeLocationRequest request,
  ) =>
      _api.updateLocation(request);

  Future<List<PickupPoint>> listEmployeePickupPoints() =>
      _api.listEmployeePickupPoints();

  Future<CheckoutResponse> checkout(CheckoutRequest request) =>
      _api.checkout(request);
}

final checkoutApiProvider = Provider<CheckoutApi>((ref) {
  return CheckoutApi(ref.watch(dioProvider));
});

final checkoutRepositoryProvider = Provider<CheckoutRepository>((ref) {
  return CheckoutRepository(ref.watch(checkoutApiProvider));
});
