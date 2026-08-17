import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/packages_repository.dart';
import '../domain/package_models.dart';

final curatedPackagesProvider =
    FutureProvider.autoDispose<List<PackageListItem>>((ref) async {
  final all = await ref.watch(packagesRepositoryProvider).listPackages();
  return all.where((p) => p.kind == 'CURATED').toList();
});

final communityPackagesProvider =
    FutureProvider.autoDispose<List<PackageListItem>>((ref) async {
  final all = await ref
      .watch(packagesRepositoryProvider)
      .listPackages(includeCommunity: true);
  return all.where((p) => p.kind == 'COMMUNITY').toList();
});

final packageDetailProvider =
    FutureProvider.autoDispose.family<PantryPackage, String>((ref, id) async {
  return ref.watch(packagesRepositoryProvider).getById(id);
});

final minePackagesProvider =
    FutureProvider.autoDispose<MinePackagesResponse>((ref) async {
  return ref.watch(packagesRepositoryProvider).listMine();
});
