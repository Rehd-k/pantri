import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_text_field.dart';
import '../data/checkout_repository.dart';
import '../domain/checkout_models.dart';
import '../providers/checkout_providers.dart';

class SetLocationScreen extends ConsumerStatefulWidget {
  const SetLocationScreen({super.key});

  @override
  ConsumerState<SetLocationScreen> createState() => _SetLocationScreenState();
}

class _SetLocationScreenState extends ConsumerState<SetLocationScreen> {
  final _address = TextEditingController();
  final _city = TextEditingController();
  final _state = TextEditingController();
  final _lat = TextEditingController();
  final _lng = TextEditingController();
  bool _saving = false;
  bool _prefilled = false;

  @override
  void dispose() {
    _address.dispose();
    _city.dispose();
    _state.dispose();
    _lat.dispose();
    _lng.dispose();
    super.dispose();
  }

  void _prefill(EmployeeLocation location) {
    if (_prefilled) return;
    _address.text = location.addressLine ?? '';
    _city.text = location.city ?? '';
    _state.text = location.state ?? '';
    _lat.text = location.latitude?.toString() ?? '';
    _lng.text = location.longitude?.toString() ?? '';
    _prefilled = true;
  }

  Future<void> _save() async {
    final address = _address.text.trim();
    final city = _city.text.trim();
    final lat = double.tryParse(_lat.text.trim());
    final lng = double.tryParse(_lng.text.trim());
    if (address.isEmpty || city.isEmpty || lat == null || lng == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Enter address, city, latitude, and longitude'),
        ),
      );
      return;
    }

    setState(() => _saving = true);
    try {
      final state = _state.text.trim();
      await ref.read(checkoutRepositoryProvider).updateLocation(
            UpdateEmployeeLocationRequest(
              addressLine: address,
              city: city,
              state: state.isEmpty ? null : state,
              latitude: lat,
              longitude: lng,
            ),
          );
      ref.invalidate(employeeLocationProvider);
      if (!mounted) return;
      Navigator.of(context).pop(true);
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
    final async = ref.watch(employeeLocationProvider);
    async.whenData(_prefill);

    return Scaffold(
      appBar: AppBar(title: const Text('Your location')),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        children: [
          Text(
            'We use your location to rank company pickup points by distance.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
          ),
          const SizedBox(height: AppSpacing.lg),
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
          const SizedBox(height: AppSpacing.xl),
          AppButton(
            label: _saving ? 'Saving…' : 'Save location',
            loading: _saving,
            onPressed: _saving ? null : _save,
          ),
        ],
      ),
    );
  }
}
