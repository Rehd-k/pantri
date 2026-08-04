import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/dio_client.dart';
import '../domain/package_models.dart';
import 'packages_api.dart';

class PackagesRepository {
  PackagesRepository(this._api);

  final PackagesApi _api;

  Future<List<PackageListItem>> listPackages({
    bool includeCommunity = false,
  }) =>
      _api.listPackages(includeCommunity: includeCommunity);

  Future<PantryPackage> getById(String id) => _api.getById(id);

  Future<PantryPackage> getByShareSlug(String slug) =>
      _api.getByShareSlug(slug);

  Future<MinePackagesResponse> listMine() => _api.listMine();

  Future<PantryPackage> createCommunity(
    CreateCommunityPackageRequest request,
  ) =>
      _api.createCommunity(request);

  Future<PantryPackage> customizePreview(
    String id,
    List<PackageItemInput> items,
  ) =>
      _api.customizePreview(id, items);

  Future<void> addToCart(
    String id, {
    List<PackageItemInput>? items,
  }) =>
      _api.addToCart(id, items: items);

  Future<PackageSubscription> subscribe(
    String id, {
    List<PackageItemInput>? items,
  }) =>
      _api.subscribe(id, items: items);

  Future<List<PackageListItem>> adminListPackages() =>
      _api.adminListPackages();

  Future<PantryPackage> adminCreatePackage(
    CreateAdminPackageRequest request,
  ) =>
      _api.adminCreatePackage(request);

  Future<PantryPackage> adminUpdatePackage(
    String id,
    UpdateAdminPackageRequest request,
  ) =>
      _api.adminUpdatePackage(id, request);

  Future<PantryPackage> adminDeactivatePackage(String id) =>
      _api.adminDeactivatePackage(id);

  Future<List<DiscountTier>> adminListTiers() => _api.adminListTiers();

  Future<DiscountTier> adminCreateTier(CreateDiscountTierRequest request) =>
      _api.adminCreateTier(request);

  Future<DiscountTier> adminUpdateTier(
    String id,
    UpdateDiscountTierRequest request,
  ) =>
      _api.adminUpdateTier(id, request);

  Future<DiscountTier> adminDeactivateTier(String id) =>
      _api.adminDeactivateTier(id);
}

final packagesApiProvider = Provider<PackagesApi>((ref) {
  return PackagesApi(ref.watch(dioProvider));
});

final packagesRepositoryProvider = Provider<PackagesRepository>((ref) {
  return PackagesRepository(ref.watch(packagesApiProvider));
});
