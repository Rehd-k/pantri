import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/theme/app_spacing.dart';
import '../../core/widgets/app_card.dart';
import '../auth/domain/auth_user.dart';
import '../auth/domain/user_role.dart';
import '../auth/providers/auth_notifier.dart';
import '../auth/providers/auth_state.dart';

class RoleHomeShell extends ConsumerWidget {
  const RoleHomeShell({
    super.key,
    required this.role,
    this.extra,
  });

  final UserRole role;
  final Widget? extra;

  String get _title => switch (role) {
        UserRole.admin => 'Admin',
        UserRole.employer => 'Employer',
        UserRole.employee => 'Employee',
        UserRole.supplier => 'Supplier',
        UserRole.logistics => 'Logistics',
      };

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authNotifierProvider);
    final user = authState is AuthAuthenticated ? authState.user : null;

    return Scaffold(
      appBar: AppBar(
        title: Text('$_title home'),
        actions: [
          IconButton(
            tooltip: 'Log out',
            onPressed: () => ref.read(authNotifierProvider.notifier).logout(),
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.xl),
        children: [
          if (user != null) _UserSummaryCard(user: user),
          if (extra != null) ...[
            const SizedBox(height: AppSpacing.lg),
            extra!,
          ],
          const SizedBox(height: AppSpacing.xl),
          Text(
            'More $_title tools will appear here.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
          ),
        ],
      ),
    );
  }
}

class _UserSummaryCard extends StatelessWidget {
  const _UserSummaryCard({required this.user});

  final AuthUser user;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${user.firstName} ${user.lastName}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(user.email),
          if (user.companyName != null) ...[
            const SizedBox(height: AppSpacing.sm),
            Text('Company: ${user.companyName}'),
          ],
          if (user.businessName != null) ...[
            const SizedBox(height: AppSpacing.sm),
            Text('Business: ${user.businessName}'),
          ],
          if (user.fleetName != null) ...[
            const SizedBox(height: AppSpacing.sm),
            Text('Fleet: ${user.fleetName}'),
          ],
        ],
      ),
    );
  }
}
