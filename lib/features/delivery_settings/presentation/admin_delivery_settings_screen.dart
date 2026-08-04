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
import '../data/delivery_settings_repository.dart';
import '../domain/delivery_settings.dart';
import '../providers/delivery_settings_providers.dart';

@RoutePage()
class AdminDeliverySettingsScreen extends ConsumerStatefulWidget {
  const AdminDeliverySettingsScreen({super.key});

  @override
  ConsumerState<AdminDeliverySettingsScreen> createState() =>
      _AdminDeliverySettingsScreenState();
}

class _AdminDeliverySettingsScreenState
    extends ConsumerState<AdminDeliverySettingsScreen> {
  final _freeMinController = TextEditingController();
  final _feeController = TextEditingController();
  bool _initialized = false;
  bool _saving = false;

  @override
  void dispose() {
    _freeMinController.dispose();
    _feeController.dispose();
    super.dispose();
  }

  void _syncControllers(DeliverySettings settings) {
    if (_initialized) return;
    _freeMinController.text =
        (settings.freeDeliveryMinKobo / 100).toStringAsFixed(0);
    _feeController.text =
        (settings.deliveryFeeKobo / 100).toStringAsFixed(0);
    _initialized = true;
  }

  Future<void> _save() async {
    final freeMin = MoneyKobo.parseNairaToKobo(_freeMinController.text);
    final fee = MoneyKobo.parseNairaToKobo(_feeController.text);
    if (freeMin == null || fee == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Enter valid amounts in Naira for both fields'),
        ),
      );
      return;
    }

    setState(() => _saving = true);
    try {
      await ref.read(deliverySettingsRepositoryProvider).updateSettings(
            UpdateDeliverySettingsRequest(
              freeDeliveryMinKobo: freeMin,
              deliveryFeeKobo: fee,
            ),
          );
      ref.invalidate(adminDeliverySettingsProvider);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Delivery settings saved')),
      );
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
    final async = ref.watch(adminDeliverySettingsProvider);

    return AdminScaffold(
      title: 'Delivery settings',
      body: async.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => AppEmptyState(
          icon: Icons.error_outline,
          title: 'Failed to load',
          message: e is ApiException ? e.message : e.toString(),
          actionLabel: 'Retry',
          onAction: () => ref.invalidate(adminDeliverySettingsProvider),
        ),
        data: (settings) {
          _syncControllers(settings);
          return ListView(
            padding: const EdgeInsets.all(AppSpacing.lg),
            children: [
              Text(
                'These values apply to every employee cart.',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
              ),
              const SizedBox(height: AppSpacing.lg),
              AppTextField(
                controller: _freeMinController,
                label: 'Free delivery minimum (₦)',
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: AppSpacing.md),
              AppTextField(
                controller: _feeController,
                label: 'Estimated delivery fee (₦)',
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: AppSpacing.xl),
              AppButton(
                label: _saving ? 'Saving…' : 'Save',
                loading: _saving,
                onPressed: _saving ? null : _save,
              ),
            ],
          );
        },
      ),
    );
  }
}
