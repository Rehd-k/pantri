import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/theme/app_spacing.dart';
import '../../core/widgets/app_button.dart';
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
          if (user?.role == UserRole.employer &&
              user?.companyInviteCode != null) ...[
            const SizedBox(height: AppSpacing.lg),
            _InviteCodeCard(inviteCode: user!.companyInviteCode!),
          ],
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

class _InviteCodeCard extends StatelessWidget {
  const _InviteCodeCard({required this.inviteCode});

  final String inviteCode;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Employee invite code',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: AppSpacing.sm),
          SelectableText(
            inviteCode,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  letterSpacing: 2,
                  fontWeight: FontWeight.w700,
                ),
          ),
          const SizedBox(height: AppSpacing.md),
          AppButton(
            label: 'Copy code',
            icon: Icons.copy,
            variant: AppButtonVariant.outlined,
            onPressed: () async {
              await Clipboard.setData(ClipboardData(text: inviteCode));
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Invite code copied')),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
