import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/utils/money_kobo.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_empty_state.dart';
import '../../home/domain/employee_dashboard.dart';
import '../../home/providers/home_providers.dart';
import '../data/credit_repository.dart';
import '../domain/credit_account.dart';
import '../domain/credit_account_status.dart';
import '../domain/ledger_entry.dart';
import '../providers/credit_providers.dart';

class CreditAccountScreen extends ConsumerStatefulWidget {
  const CreditAccountScreen({super.key});

  @override
  ConsumerState<CreditAccountScreen> createState() =>
      _CreditAccountScreenState();
}

class _CreditAccountScreenState extends ConsumerState<CreditAccountScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >
        _scrollController.position.maxScrollExtent - 200) {
      ref.read(ledgerNotifierProvider.notifier).loadMore();
    }
  }

  Future<void> _refresh() async {
    ref.invalidate(creditAccountProvider);
    ref.invalidate(employeeDashboardProvider);
    await Future.wait([
      ref.read(creditAccountProvider.future),
      ref.read(ledgerNotifierProvider.notifier).load(),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final async = ref.watch(creditAccountProvider);
    final dashAsync = ref.watch(employeeDashboardProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Credit account')),
      body: async.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => AppEmptyState(
          icon: Icons.error_outline,
          title: 'Could not load credit account',
          message: e is ApiException ? e.message : e.toString(),
          actionLabel: 'Retry',
          onAction: () => ref.invalidate(creditAccountProvider),
        ),
        data: (account) {
          final nextDeduction = dashAsync.asData?.value.nextDeduction;
          return RefreshIndicator(
            onRefresh: _refresh,
            child: ListView(
              controller: _scrollController,
              padding: const EdgeInsets.all(AppSpacing.lg),
              children: [
                _BalanceOverviewCard(account: account),
                const SizedBox(height: AppSpacing.lg),
                _InterestPayoffCard(
                  account: account,
                  nextDeduction: nextDeduction,
                ),
                const SizedBox(height: AppSpacing.lg),
                _DeductionPercentEditor(),
                const SizedBox(height: AppSpacing.xl),
                Text(
                  'Recent activity',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: AppSpacing.md),
                const _LedgerList(),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _BalanceOverviewCard extends StatelessWidget {
  const _BalanceOverviewCard({required this.account});

  final CreditAccount account;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final limit = account.effectiveLimitKobo;
    final progress = limit <= 0
        ? 0.0
        : (account.totalOwedKobo / limit).clamp(0.0, 1.0);

    return Material(
      color: colorScheme.surfaceContainerHighest,
      elevation: 1,
      shadowColor: colorScheme.shadow.withValues(alpha: 0.08),
      borderRadius: AppRadius.borderLg,
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xl),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'TOTAL OWED',
                    style: textTheme.labelSmall?.copyWith(
                      letterSpacing: 0.8,
                      fontWeight: FontWeight.w600,
                      color: colorScheme.onSurface.withValues(alpha: 0.55),
                    ),
                  ),
                ),
                _StatusChip(status: account.status),
              ],
            ),
            const SizedBox(height: AppSpacing.md),
            Text(
              MoneyKobo.formatNaira(account.totalOwedKobo),
              style: textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.w800,
                color: colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            ClipRRect(
              borderRadius: AppRadius.borderFull,
              child: LinearProgressIndicator(
                value: progress,
                minHeight: 8,
                backgroundColor: colorScheme.outline.withValues(alpha: 0.25),
                color: colorScheme.primary,
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            _row(context, 'Credit limit', MoneyKobo.formatNaira(limit)),
            const SizedBox(height: AppSpacing.sm),
            _row(
              context,
              'Principal outstanding',
              MoneyKobo.formatNaira(account.principalOutstandingKobo),
            ),
            const SizedBox(height: AppSpacing.sm),
            _row(
              context,
              'Reserved (pending orders)',
              MoneyKobo.formatNaira(account.reservedKobo),
            ),
            const SizedBox(height: AppSpacing.sm),
            _row(
              context,
              'Available to spend',
              MoneyKobo.formatNaira(account.availableKobo),
              emphasize: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget _row(
    BuildContext context,
    String label,
    String value, {
    bool emphasize = false,
  }) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Row(
      children: [
        Text(
          label,
          style: textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSurface.withValues(alpha: 0.65),
          ),
        ),
        const Spacer(),
        Text(
          value,
          style: emphasize
              ? textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w800,
                  color: colorScheme.primary,
                )
              : textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}

class _StatusChip extends StatelessWidget {
  const _StatusChip({required this.status});

  final CreditAccountStatus status;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final (label, color) = switch (status) {
      CreditAccountStatus.active => ('Active', colorScheme.primary),
      CreditAccountStatus.frozen => ('Frozen', colorScheme.error),
      CreditAccountStatus.closed => (
        'Closed',
        colorScheme.onSurface.withValues(alpha: 0.5),
      ),
    };
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: 2,
      ),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: AppRadius.borderFull,
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: color,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class _InterestPayoffCard extends StatelessWidget {
  const _InterestPayoffCard({required this.account, this.nextDeduction});

  final CreditAccount account;
  final NextDeduction? nextDeduction;

  /// Simple client-side estimate: months to clear [CreditAccount.totalOwedKobo]
  /// at the current scheduled monthly deduction amount. This mirrors what the
  /// server would project but does not account for future interest accrual.
  int? get _estimatedPayoffMonths {
    final monthly = nextDeduction?.amountKobo;
    if (monthly == null || monthly <= 0) return null;
    if (account.totalOwedKobo <= 0) return 0;
    return (account.totalOwedKobo / monthly).ceil();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final months = _estimatedPayoffMonths;

    return Material(
      color: colorScheme.tertiary,
      elevation: 1,
      shadowColor: colorScheme.shadow.withValues(alpha: 0.12),
      borderRadius: AppRadius.borderLg,
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xl),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ACCRUED INTEREST (UNPOSTED)',
              style: textTheme.labelSmall?.copyWith(
                letterSpacing: 0.8,
                fontWeight: FontWeight.w600,
                color: colorScheme.onTertiary.withValues(alpha: 0.75),
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            Text(
              MoneyKobo.formatNaira(account.accruedInterestUnpostedKobo),
              style: textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w800,
                color: colorScheme.onTertiary,
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.lg,
                vertical: AppSpacing.md,
              ),
              decoration: BoxDecoration(
                color: colorScheme.onTertiary.withValues(alpha: 0.12),
                borderRadius: AppRadius.borderMd,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.trending_down_rounded,
                    size: 18,
                    color: colorScheme.onTertiary.withValues(alpha: 0.9),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Expanded(
                    child: Text(
                      months == null
                          ? 'Estimated payoff unavailable'
                          : months == 0
                          ? 'Paid off at next deduction'
                          : 'Estimated payoff in $months '
                                '${months == 1 ? 'month' : 'months'}',
                      style: textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onTertiary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DeductionPercentEditor extends ConsumerStatefulWidget {
  @override
  ConsumerState<_DeductionPercentEditor> createState() =>
      _DeductionPercentEditorState();
}

class _DeductionPercentEditorState
    extends ConsumerState<_DeductionPercentEditor> {
  double? _draftPercent;
  bool _saving = false;

  Future<void> _save() async {
    final percent = _draftPercent;
    if (percent == null) return;
    setState(() => _saving = true);
    try {
      await ref
          .read(creditRepositoryProvider)
          .updateDeductionPercent(percent.round());
      ref.invalidate(employeeDashboardProvider);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Payroll deduction set to ${percent.round()}%')),
      );
      setState(() => _draftPercent = null);
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e is ApiException ? e.message : e.toString())),
      );
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Material(
      color: colorScheme.surfaceContainerHighest,
      elevation: 1,
      shadowColor: colorScheme.shadow.withValues(alpha: 0.08),
      borderRadius: AppRadius.borderLg,
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xl),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payroll deduction percent',
              style: textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: AppSpacing.xs),
            Text(
              'Choose how much of your monthly salary goes toward repaying '
              'your credit balance.',
              style: textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurface.withValues(alpha: 0.6),
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            Text(
              '${(_draftPercent ?? 20).round()}%',
              style: textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w800,
                color: colorScheme.primary,
              ),
            ),
            Slider(
              value: _draftPercent ?? 20,
              min: 0,
              max: 100,
              divisions: 100,
              label: '${(_draftPercent ?? 20).round()}%',
              onChanged: _saving
                  ? null
                  : (value) => setState(() => _draftPercent = value),
            ),
            const SizedBox(height: AppSpacing.sm),
            AppButton(
              label: _saving ? 'Saving…' : 'Save',
              loading: _saving,
              onPressed: _saving || _draftPercent == null ? null : _save,
            ),
          ],
        ),
      ),
    );
  }
}

class _LedgerList extends ConsumerWidget {
  const _LedgerList();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(ledgerNotifierProvider);

    return switch (state) {
      LedgerInitial() || LedgerLoading(previous: null) => const Padding(
        padding: EdgeInsets.symmetric(vertical: AppSpacing.xxl),
        child: Center(child: CircularProgressIndicator()),
      ),
      LedgerError(:final message, previous: null) => AppEmptyState(
        icon: Icons.error_outline,
        title: 'Could not load activity',
        message: message,
        actionLabel: 'Retry',
        onAction: () => ref.read(ledgerNotifierProvider.notifier).load(),
      ),
      LedgerLoading(:final previous) when previous != null => _LedgerEntries(
        loaded: previous,
      ),
      LedgerError(:final previous) when previous != null => _LedgerEntries(
        loaded: previous,
      ),
      LedgerLoaded() => _LedgerEntries(loaded: state),
      _ => const SizedBox.shrink(),
    };
  }
}

class _LedgerEntries extends StatelessWidget {
  const _LedgerEntries({required this.loaded});

  final LedgerLoaded loaded;

  @override
  Widget build(BuildContext context) {
    if (loaded.entries.isEmpty) {
      return const AppEmptyState(
        icon: Icons.receipt_long_outlined,
        title: 'No activity yet',
        message: 'Your credit ledger entries will show up here.',
      );
    }
    return Column(
      children: [
        ...loaded.entries.map(
          (entry) => Padding(
            padding: const EdgeInsets.only(bottom: AppSpacing.sm),
            child: _LedgerTile(entry: entry),
          ),
        ),
        if (loaded.loadingMore)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: AppSpacing.lg),
            child: Center(child: CircularProgressIndicator()),
          ),
      ],
    );
  }
}

class _LedgerTile extends StatelessWidget {
  const _LedgerTile({required this.entry});

  final LedgerEntry entry;

  String _formatDate(String isoDate) {
    final parsed = DateTime.tryParse(isoDate);
    if (parsed == null) return isoDate;
    return DateFormat('MMM d, y · h:mm a').format(parsed.toLocal());
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final isDebit = entry.entryType.isDebit;
    final amountColor = isDebit ? colorScheme.error : colorScheme.primary;
    final sign = isDebit ? '+' : '−';

    return Material(
      color: colorScheme.surfaceContainerHighest,
      borderRadius: AppRadius.borderMd,
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Row(
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: amountColor.withValues(alpha: 0.12),
                shape: BoxShape.circle,
              ),
              child: Icon(
                isDebit
                    ? Icons.arrow_upward_rounded
                    : Icons.arrow_downward_rounded,
                size: 18,
                color: amountColor,
              ),
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    entry.entryType.label,
                    style: textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    _formatDate(entry.createdAt),
                    style: textTheme.labelSmall?.copyWith(
                      color: colorScheme.onSurface.withValues(alpha: 0.55),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              '$sign${MoneyKobo.formatNaira(entry.amountKobo)}',
              style: textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w800,
                color: amountColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
