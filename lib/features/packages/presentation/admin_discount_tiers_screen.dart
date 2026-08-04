import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/utils/money_kobo.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_empty_state.dart';
import '../../../core/widgets/app_text_field.dart';
import '../../admin/admin_shell.dart';
import '../data/packages_repository.dart';
import '../domain/package_models.dart';
import '../providers/packages_providers.dart';

@RoutePage()
class AdminDiscountTiersScreen extends ConsumerWidget {
  const AdminDiscountTiersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(adminDiscountTiersProvider);

    return AdminScaffold(
      title: 'Discount tiers',
      actions: [
        IconButton(
          tooltip: 'Add tier',
          onPressed: () => _openForm(context, ref),
          icon: const Icon(Icons.add),
        ),
      ],
      body: async.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => AppEmptyState(
          icon: Icons.error_outline,
          title: 'Failed to load',
          message: e is ApiException ? e.message : e.toString(),
        ),
        data: (tiers) {
          if (tiers.isEmpty) {
            return AppEmptyState(
              icon: Icons.percent_outlined,
              title: 'No discount tiers',
              message: 'Add spend thresholds that unlock package savings.',
              actionLabel: 'Add tier',
              onAction: () => _openForm(context, ref),
            );
          }
          return ListView.separated(
            padding: const EdgeInsets.all(AppSpacing.lg),
            itemCount: tiers.length,
            separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.md),
            itemBuilder: (context, index) {
              final tier = tiers[index];
              return ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.outlineVariant,
                  ),
                ),
                title: Text(
                  '${tier.label} · ${tier.discountPercent}% off',
                ),
                subtitle: Text(
                  'From ${MoneyKobo.formatNaira(tier.minSpendKobo)} retail'
                  ' · ${tier.isActive ? 'Active' : 'Inactive'}',
                ),
                trailing: const Icon(Icons.edit_outlined),
                onTap: () => _openForm(context, ref, tier: tier),
              );
            },
          );
        },
      ),
    );
  }

  Future<void> _openForm(
    BuildContext context,
    WidgetRef ref, {
    DiscountTier? tier,
  }) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (ctx) => _TierFormSheet(tier: tier),
    );
    ref.invalidate(adminDiscountTiersProvider);
  }
}

class _TierFormSheet extends ConsumerStatefulWidget {
  const _TierFormSheet({this.tier});

  final DiscountTier? tier;

  @override
  ConsumerState<_TierFormSheet> createState() => _TierFormSheetState();
}

class _TierFormSheetState extends ConsumerState<_TierFormSheet> {
  late final TextEditingController _label;
  late final TextEditingController _minNaira;
  late final TextEditingController _percent;
  late final TextEditingController _sort;
  late bool _active;
  bool _saving = false;

  @override
  void initState() {
    super.initState();
    final t = widget.tier;
    _label = TextEditingController(text: t?.label ?? '');
    _minNaira = TextEditingController(
      text: t == null ? '' : (t.minSpendKobo / 100).toStringAsFixed(0),
    );
    _percent =
        TextEditingController(text: t == null ? '' : '${t.discountPercent}');
    _sort = TextEditingController(text: '${t?.sortOrder ?? 0}');
    _active = t?.isActive ?? true;
  }

  @override
  void dispose() {
    _label.dispose();
    _minNaira.dispose();
    _percent.dispose();
    _sort.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final label = _label.text.trim();
    final minNaira = int.tryParse(_minNaira.text.trim());
    final percent = int.tryParse(_percent.text.trim());
    if (label.isEmpty || minNaira == null || percent == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Fill label, min spend (₦), and percent')),
      );
      return;
    }

    setState(() => _saving = true);
    try {
      final repo = ref.read(packagesRepositoryProvider);
      if (widget.tier == null) {
        await repo.adminCreateTier(
          CreateDiscountTierRequest(
            label: label,
            minSpendKobo: minNaira * 100,
            discountPercent: percent,
            sortOrder: int.tryParse(_sort.text.trim()) ?? 0,
            isActive: _active,
          ),
        );
      } else {
        await repo.adminUpdateTier(
          widget.tier!.id,
          UpdateDiscountTierRequest(
            label: label,
            minSpendKobo: minNaira * 100,
            discountPercent: percent,
            sortOrder: int.tryParse(_sort.text.trim()) ?? 0,
            isActive: _active,
          ),
        );
      }
      if (mounted) Navigator.of(context).pop();
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e is ApiException ? e.message : e.toString()),
        ),
      );
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.viewInsetsOf(context).bottom;
    return Padding(
      padding: EdgeInsets.fromLTRB(
        AppSpacing.lg,
        AppSpacing.lg,
        AppSpacing.lg,
        AppSpacing.lg + bottom,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            widget.tier == null ? 'New discount tier' : 'Edit discount tier',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: AppSpacing.lg),
          AppTextField(controller: _label, label: 'Label (e.g. TIER 3)'),
          const SizedBox(height: AppSpacing.md),
          AppTextField(
            controller: _minNaira,
            label: 'Min retail spend (₦)',
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: AppSpacing.md),
          AppTextField(
            controller: _percent,
            label: 'Discount percent',
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: AppSpacing.md),
          AppTextField(
            controller: _sort,
            label: 'Sort order',
            keyboardType: TextInputType.number,
          ),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text('Active'),
            value: _active,
            onChanged: (v) => setState(() => _active = v),
          ),
          AppButton(
            label: _saving ? 'Saving…' : 'Save',
            loading: _saving,
            onPressed: _saving ? null : _save,
          ),
          if (widget.tier != null) ...[
            const SizedBox(height: AppSpacing.sm),
            AppButton(
              label: 'Deactivate',
              variant: AppButtonVariant.outlined,
              onPressed: _saving
                  ? null
                  : () async {
                      await ref
                          .read(packagesRepositoryProvider)
                          .adminDeactivateTier(widget.tier!.id);
                      if (context.mounted) Navigator.of(context).pop();
                    },
            ),
          ],
        ],
      ),
    );
  }
}
