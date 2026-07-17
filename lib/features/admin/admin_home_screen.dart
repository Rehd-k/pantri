import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/network/api_exception.dart';
import '../../core/theme/app_spacing.dart';
import '../../core/widgets/app_button.dart';
import '../../core/widgets/app_card.dart';
import '../auth/data/auth_repository.dart';
import '../auth/domain/auth_user.dart';
import '../auth/domain/user_role.dart';
import '../shell/role_home_shell.dart';

final pendingUsersProvider =
    FutureProvider.autoDispose<List<AuthUser>>((ref) async {
  return ref.watch(authRepositoryProvider).listPendingUsers();
});

class AdminHomeScreen extends ConsumerWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RoleHomeShell(
      role: UserRole.admin,
      extra: const _PendingApprovalsSection(),
    );
  }
}

class _PendingApprovalsSection extends ConsumerWidget {
  const _PendingApprovalsSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pendingAsync = ref.watch(pendingUsersProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Pending approvals',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: AppSpacing.md),
        pendingAsync.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, _) => Text(
            error is ApiException ? error.message : error.toString(),
            style: TextStyle(color: Theme.of(context).colorScheme.error),
          ),
          data: (users) {
            if (users.isEmpty) {
              return AppCard(
                child: Text(
                  'No pending supplier or logistics accounts.',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                ),
              );
            }
            return Column(
              children: [
                for (final user in users) ...[
                  _PendingUserTile(user: user),
                  const SizedBox(height: AppSpacing.md),
                ],
              ],
            );
          },
        ),
      ],
    );
  }
}

class _PendingUserTile extends ConsumerStatefulWidget {
  const _PendingUserTile({required this.user});

  final AuthUser user;

  @override
  ConsumerState<_PendingUserTile> createState() => _PendingUserTileState();
}

class _PendingUserTileState extends ConsumerState<_PendingUserTile> {
  bool _approving = false;

  Future<void> _approve() async {
    setState(() => _approving = true);
    try {
      await ref.read(authRepositoryProvider).approveUser(widget.user.id);
      ref.invalidate(pendingUsersProvider);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Approved ${widget.user.email}')),
        );
      }
    } on ApiException catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.message)),
        );
      }
    } finally {
      if (mounted) setState(() => _approving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = widget.user;
    final detail = user.businessName ?? user.fleetName ?? user.role.apiValue;

    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${user.firstName} ${user.lastName}',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(user.email),
          Text('${user.role.apiValue} · $detail'),
          const SizedBox(height: AppSpacing.md),
          AppButton(
            label: 'Approve',
            loading: _approving,
            onPressed: _approving ? null : _approve,
          ),
        ],
      ),
    );
  }
}
