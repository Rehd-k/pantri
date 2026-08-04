import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_empty_state.dart';
import '../../../core/widgets/app_text_field.dart';
import '../../admin/admin_shell.dart';
import '../data/checkout_repository.dart';
import '../domain/checkout_models.dart';
import '../providers/checkout_providers.dart';

@RoutePage()
class AdminPickupPointsScreen extends ConsumerWidget {
  const AdminPickupPointsScreen({
    super.key,
    required this.companyId,
    required this.companyName,
  });

  final String companyId;
  final String companyName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(adminPickupPointsProvider(companyId));

    return AdminScaffold(
      title: 'Pickup · $companyName',
      actions: [
        IconButton(
          tooltip: 'Add pickup point',
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
          actionLabel: 'Retry',
          onAction: () => ref.invalidate(adminPickupPointsProvider(companyId)),
        ),
        data: (points) {
          if (points.isEmpty) {
            return AppEmptyState(
              icon: Icons.place_outlined,
              title: 'No pickup points',
              message: 'Add hubs where employees can collect orders.',
              actionLabel: 'Add point',
              onAction: () => _openForm(context, ref),
            );
          }
          return ListView.separated(
            padding: const EdgeInsets.all(AppSpacing.lg),
            itemCount: points.length,
            separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.md),
            itemBuilder: (context, index) {
              final point = points[index];
              return ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.outlineVariant,
                  ),
                ),
                title: Text(point.label),
                subtitle: Text(
                  '${point.addressLine}, ${point.city}'
                  '${point.state != null ? ', ${point.state}' : ''}'
                  ' · ${point.isActive ? 'Active' : 'Inactive'}',
                ),
                trailing: const Icon(Icons.edit_outlined),
                onTap: () => _openForm(context, ref, point: point),
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
    PickupPoint? point,
  }) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (ctx) => _PickupPointFormSheet(
        companyId: companyId,
        point: point,
      ),
    );
    ref.invalidate(adminPickupPointsProvider(companyId));
  }
}

class _PickupPointFormSheet extends ConsumerStatefulWidget {
  const _PickupPointFormSheet({
    required this.companyId,
    this.point,
  });

  final String companyId;
  final PickupPoint? point;

  @override
  ConsumerState<_PickupPointFormSheet> createState() =>
      _PickupPointFormSheetState();
}

class _PickupPointFormSheetState extends ConsumerState<_PickupPointFormSheet> {
  late final TextEditingController _label;
  late final TextEditingController _address;
  late final TextEditingController _city;
  late final TextEditingController _state;
  late final TextEditingController _lat;
  late final TextEditingController _lng;
  late bool _active;
  bool _saving = false;

  @override
  void initState() {
    super.initState();
    final p = widget.point;
    _label = TextEditingController(text: p?.label ?? '');
    _address = TextEditingController(text: p?.addressLine ?? '');
    _city = TextEditingController(text: p?.city ?? '');
    _state = TextEditingController(text: p?.state ?? '');
    _lat = TextEditingController(
      text: p == null ? '' : p.latitude.toString(),
    );
    _lng = TextEditingController(
      text: p == null ? '' : p.longitude.toString(),
    );
    _active = p?.isActive ?? true;
  }

  @override
  void dispose() {
    _label.dispose();
    _address.dispose();
    _city.dispose();
    _state.dispose();
    _lat.dispose();
    _lng.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final label = _label.text.trim();
    final address = _address.text.trim();
    final city = _city.text.trim();
    final lat = double.tryParse(_lat.text.trim());
    final lng = double.tryParse(_lng.text.trim());
    if (label.isEmpty ||
        address.isEmpty ||
        city.isEmpty ||
        lat == null ||
        lng == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Fill label, address, city, latitude, and longitude'),
        ),
      );
      return;
    }

    setState(() => _saving = true);
    try {
      final repo = ref.read(checkoutRepositoryProvider);
      final state = _state.text.trim();
      if (widget.point == null) {
        await repo.adminCreatePickupPoint(
          widget.companyId,
          CreatePickupPointRequest(
            label: label,
            addressLine: address,
            city: city,
            state: state.isEmpty ? null : state,
            latitude: lat,
            longitude: lng,
            isActive: _active,
          ),
        );
      } else {
        await repo.adminUpdatePickupPoint(
          widget.point!.id,
          UpdatePickupPointRequest(
            label: label,
            addressLine: address,
            city: city,
            state: state.isEmpty ? null : state,
            latitude: lat,
            longitude: lng,
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
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              widget.point == null ? 'New pickup point' : 'Edit pickup point',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: AppSpacing.lg),
            AppTextField(controller: _label, label: 'Label'),
            const SizedBox(height: AppSpacing.md),
            AppTextField(controller: _address, label: 'Address line'),
            const SizedBox(height: AppSpacing.md),
            AppTextField(controller: _city, label: 'City'),
            const SizedBox(height: AppSpacing.md),
            AppTextField(controller: _state, label: 'State (optional)'),
            const SizedBox(height: AppSpacing.md),
            AppTextField(
              controller: _lat,
              label: 'Latitude',
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
            ),
            const SizedBox(height: AppSpacing.md),
            AppTextField(
              controller: _lng,
              label: 'Longitude',
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
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
            if (widget.point != null) ...[
              const SizedBox(height: AppSpacing.sm),
              AppButton(
                label: 'Deactivate',
                variant: AppButtonVariant.outlined,
                onPressed: _saving
                    ? null
                    : () async {
                        await ref
                            .read(checkoutRepositoryProvider)
                            .adminDeactivatePickupPoint(widget.point!.id);
                        if (context.mounted) Navigator.of(context).pop();
                      },
              ),
            ],
          ],
        ),
      ),
    );
  }
}
