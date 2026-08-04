import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/router/app_router.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/utils/money_kobo.dart';
import '../../../core/widgets/app_empty_state.dart';
import '../../admin/admin_shell.dart';
import '../providers/packages_providers.dart';

@RoutePage()
class AdminPackagesScreen extends ConsumerWidget {
  const AdminPackagesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(adminPackagesProvider);

    return AdminScaffold(
      title: 'Packages',
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await context.router.push(AdminPackageFormRoute());
          ref.invalidate(adminPackagesProvider);
        },
        child: const Icon(Icons.add),
      ),
      body: async.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => AppEmptyState(
          icon: Icons.error_outline,
          title: 'Failed to load',
          message: e is ApiException ? e.message : e.toString(),
        ),
        data: (packages) {
          if (packages.isEmpty) {
            return const AppEmptyState(
              icon: Icons.inventory_2_outlined,
              title: 'No curated packages',
              message: 'Create the first Bachelor / Family package.',
            );
          }
          return ListView.separated(
            padding: const EdgeInsets.all(AppSpacing.lg),
            itemCount: packages.length,
            separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.md),
            itemBuilder: (context, index) {
              final pkg = packages[index];
              return ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.outlineVariant,
                  ),
                ),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    pkg.coverImageUrl,
                    width: 56,
                    height: 56,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) =>
                        const Icon(Icons.image_not_supported_outlined),
                  ),
                ),
                title: Text(pkg.name),
                subtitle: Text(
                  '${MoneyKobo.formatNaira(pkg.pricing.totalKobo)} · ${pkg.itemCount} items'
                  '${pkg.isPopular ? ' · Popular' : ''}',
                ),
                trailing: const Icon(Icons.chevron_right),
                onTap: () async {
                  await context.router.push(
                    AdminPackageFormRoute(packageId: pkg.id),
                  );
                  ref.invalidate(adminPackagesProvider);
                },
              );
            },
          );
        },
      ),
    );
  }
}
