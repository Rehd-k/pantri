import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/router/app_router.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_empty_state.dart';
import '../../admin/admin_shell.dart';
import '../providers/checkout_providers.dart';

@RoutePage()
class AdminCompaniesScreen extends ConsumerWidget {
  const AdminCompaniesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(adminCompaniesProvider);

    return AdminScaffold(
      title: 'Companies',
      body: async.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => AppEmptyState(
          icon: Icons.error_outline,
          title: 'Failed to load',
          message: e is ApiException ? e.message : e.toString(),
          actionLabel: 'Retry',
          onAction: () => ref.invalidate(adminCompaniesProvider),
        ),
        data: (companies) {
          if (companies.isEmpty) {
            return const AppEmptyState(
              icon: Icons.business_outlined,
              title: 'No companies',
              message: 'Employers appear here after they register.',
            );
          }
          return ListView.separated(
            padding: const EdgeInsets.all(AppSpacing.lg),
            itemCount: companies.length,
            separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.md),
            itemBuilder: (context, index) {
              final company = companies[index];
              return ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.outlineVariant,
                  ),
                ),
                leading: Icon(
                  Icons.business_outlined,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
                title: Text(company.name),
                subtitle: Text('Invite: ${company.inviteCode}'),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => context.router.push(
                  AdminPickupPointsRoute(
                    companyId: company.id,
                    companyName: company.name,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
