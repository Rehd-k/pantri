import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/utils/money_kobo.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_empty_state.dart';
import '../../cart/domain/cart.dart';
import '../../cart/providers/cart_notifier.dart';
import '../data/checkout_repository.dart';
import '../domain/checkout_models.dart';
import '../providers/checkout_providers.dart';

class SelectPickupPointScreen extends ConsumerStatefulWidget {
  const SelectPickupPointScreen({super.key});

  @override
  ConsumerState<SelectPickupPointScreen> createState() =>
      _SelectPickupPointScreenState();
}

class _SelectPickupPointScreenState
    extends ConsumerState<SelectPickupPointScreen> {
  String? _selectedId;
  bool _submitting = false;

  Future<void> _confirm(PickupPoint point, Cart cart) async {
    final confirmed = await showModalBottomSheet<bool>(
      context: context,
      isScrollControlled: true,
      builder: (ctx) => _ConfirmCheckoutSheet(
        point: point,
        cart: cart,
      ),
    );
    if (confirmed != true || !mounted) return;

    setState(() => _submitting = true);
    try {
      final result = await ref.read(checkoutRepositoryProvider).checkout(
            CheckoutRequest(pickupPointId: point.id),
          );
      await ref.read(cartNotifierProvider.notifier).load();
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Order placed · ${MoneyKobo.formatNaira(result.reservedKobo)} '
            'reserved on your credit account',
          ),
        ),
      );
      Navigator.of(context).popUntil((route) => route.isFirst);
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e is ApiException ? e.message : e.toString()),
        ),
      );
    } finally {
      if (mounted) setState(() => _submitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final async = ref.watch(employeePickupPointsProvider);
    final cartState = ref.watch(cartNotifierProvider);
    final cart = switch (cartState) {
      CartLoaded(:final cart) => cart,
      CartLoading(:final previous) => previous,
      CartError(:final previous) => previous,
      _ => null,
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Select pickup point')),
      body: async.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => AppEmptyState(
          icon: Icons.error_outline,
          title: 'Could not load points',
          message: e is ApiException ? e.message : e.toString(),
          actionLabel: 'Retry',
          onAction: () => ref.invalidate(employeePickupPointsProvider),
        ),
        data: (points) {
          if (points.isEmpty) {
            return const AppEmptyState(
              icon: Icons.place_outlined,
              title: 'No pickup points',
              message:
                  'Your company has no active pickup hubs yet. Contact your admin.',
            );
          }
          return ListView.separated(
            padding: const EdgeInsets.all(AppSpacing.lg),
            itemCount: points.length,
            separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.md),
            itemBuilder: (context, index) {
              final point = points[index];
              final selected = _selectedId == point.id;
              return Material(
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                borderRadius: AppRadius.borderLg,
                child: InkWell(
                  borderRadius: AppRadius.borderLg,
                  onTap: _submitting
                      ? null
                      : () => setState(() => _selectedId = point.id),
                  child: Padding(
                    padding: const EdgeInsets.all(AppSpacing.md),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          selected
                              ? Icons.radio_button_checked
                              : Icons.radio_button_off,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                        const SizedBox(width: AppSpacing.md),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                point.label,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(height: AppSpacing.xs),
                              Text(
                                '${point.addressLine}, ${point.city}'
                                '${point.state != null ? ', ${point.state}' : ''}',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              if (point.distanceKm != null) ...[
                                const SizedBox(height: AppSpacing.xs),
                                Text(
                                  '${point.distanceKm!.toStringAsFixed(1)} km away',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .tertiary,
                                        fontWeight: FontWeight.w700,
                                      ),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: AppButton(
            label: _submitting ? 'Placing order…' : 'Continue',
            loading: _submitting,
            onPressed: _submitting ||
                    _selectedId == null ||
                    cart == null ||
                    cart.items.isEmpty
                ? null
                : () {
                    final points =
                        ref.read(employeePickupPointsProvider).asData?.value;
                    final point =
                        points?.where((p) => p.id == _selectedId).firstOrNull;
                    if (point == null) return;
                    _confirm(point, cart);
                  },
          ),
        ),
      ),
    );
  }
}

class _ConfirmCheckoutSheet extends StatelessWidget {
  const _ConfirmCheckoutSheet({
    required this.point,
    required this.cart,
  });

  final PickupPoint point;
  final Cart cart;

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
            'Confirm checkout',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: AppSpacing.md),
          Text(
            'Pickup: ${point.label}',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            '${point.addressLine}, ${point.city}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: AppSpacing.lg),
          _row(context, 'Subtotal', MoneyKobo.formatNaira(cart.subtotalKobo)),
          const SizedBox(height: AppSpacing.sm),
          _row(
            context,
            'Estimated delivery',
            cart.appliedDeliveryFeeKobo == 0
                ? 'Free'
                : MoneyKobo.formatNaira(cart.appliedDeliveryFeeKobo),
          ),
          const SizedBox(height: AppSpacing.sm),
          _row(
            context,
            'Total',
            MoneyKobo.formatNaira(cart.totalKobo),
            emphasize: true,
          ),
          const SizedBox(height: AppSpacing.md),
          Text(
            'This total will be reserved against your revolving credit '
            'account and repaid via payroll deduction.',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
          ),
          const SizedBox(height: AppSpacing.lg),
          AppButton(
            label: 'Pay with credit',
            onPressed: () => Navigator.of(context).pop(true),
          ),
          const SizedBox(height: AppSpacing.sm),
          AppButton(
            label: 'Cancel',
            variant: AppButtonVariant.outlined,
            onPressed: () => Navigator.of(context).pop(false),
          ),
        ],
      ),
    );
  }

  Widget _row(
    BuildContext context,
    String label,
    String value, {
    bool emphasize = false,
  }) {
    final style = emphasize
        ? Theme.of(context).textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w800,
            )
        : Theme.of(context).textTheme.bodyMedium;
    return Row(
      children: [
        Text(label, style: style),
        const Spacer(),
        Text(value, style: style),
      ],
    );
  }
}
