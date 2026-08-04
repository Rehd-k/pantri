import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/utils/money_kobo.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_empty_state.dart';
import '../../checkout/data/checkout_repository.dart';
import '../../checkout/presentation/select_pickup_point_screen.dart';
import '../../checkout/presentation/set_location_screen.dart';
import '../domain/cart.dart';
import '../domain/cart_item.dart';
import '../providers/cart_notifier.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(cartNotifierProvider.notifier).load();
    });
  }

  Future<void> _startCheckout(BuildContext context) async {
    try {
      final location =
          await ref.read(checkoutRepositoryProvider).getLocation();
      if (!context.mounted) return;
      if (!location.isSet) {
        final saved = await Navigator.of(context).push<bool>(
          MaterialPageRoute(builder: (_) => const SetLocationScreen()),
        );
        if (saved != true || !context.mounted) return;
      }
      await Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => const SelectPickupPointScreen()),
      );
    } catch (e) {
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(cartNotifierProvider);
    final colorScheme = Theme.of(context).colorScheme;

    final cart = switch (state) {
      CartLoaded(:final cart) => cart,
      CartLoading(:final previous) => previous,
      CartError(:final previous) => previous,
      _ => null,
    };
    final loading = state is CartLoading;
    final errorMessage = switch (state) {
      CartError(:final message) => message,
      _ => null,
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        actions: [
          if (cart != null && cart.items.isNotEmpty)
            TextButton(
              onPressed: loading
                  ? null
                  : () => ref.read(cartNotifierProvider.notifier).clear(),
              child: const Text('Clear'),
            ),
        ],
      ),
      body: Column(
        children: [
          if (errorMessage != null)
            MaterialBanner(
              content: Text(errorMessage),
              backgroundColor: colorScheme.errorContainer,
              actions: [
                TextButton(
                  onPressed: () =>
                      ref.read(cartNotifierProvider.notifier).load(),
                  child: const Text('Retry'),
                ),
              ],
            ),
          Expanded(
            child: cart == null && loading
                ? const Center(child: CircularProgressIndicator())
                : cart == null || cart.items.isEmpty
                    ? AppEmptyState(
                        icon: Icons.shopping_cart_outlined,
                        title: 'Your cart is empty',
                        message: 'Browse the marketplace and tap Add.',
                        actionLabel: 'Back to marketplace',
                        onAction: () => Navigator.of(context).maybePop(),
                      )
                    : ListView(
                        padding: const EdgeInsets.all(AppSpacing.lg),
                        children: [
                          _FreeDeliveryProgress(cart: cart),
                          const SizedBox(height: AppSpacing.lg),
                          ...[
                            for (var i = 0; i < cart.items.length; i++) ...[
                              if (i > 0)
                                const SizedBox(height: AppSpacing.md),
                              _CartItemTile(
                                item: cart.items[i],
                                enabled: !loading,
                              ),
                            ],
                          ],
                          const SizedBox(height: AppSpacing.lg),
                          _OrderSummary(cart: cart),
                        ],
                      ),
          ),
          if (cart != null && cart.items.isNotEmpty)
            SafeArea(
              top: false,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(AppSpacing.lg),
                decoration: BoxDecoration(
                  color: colorScheme.surfaceContainerHighest,
                  border: Border(
                    top: BorderSide(
                      color: colorScheme.outline.withValues(alpha: 0.3),
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Total payment',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const Spacer(),
                        Text(
                          MoneyKobo.formatNaira(cart.totalKobo),
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    color: colorScheme.tertiary,
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.md),
                    AppButton(
                      label: 'Checkout',
                      onPressed: loading ? null : () => _startCheckout(context),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _FreeDeliveryProgress extends StatelessWidget {
  const _FreeDeliveryProgress({required this.cart});

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final progress = cart.freeDeliveryMinKobo <= 0
        ? 1.0
        : (cart.subtotalKobo / cart.freeDeliveryMinKobo).clamp(0.0, 1.0);

    final statusText = cart.qualifiesForFreeDelivery
        ? 'Unlocked'
        : '${MoneyKobo.formatNaira(cart.amountUntilFreeDeliveryKobo)} away';

    final hintText = cart.qualifiesForFreeDelivery
        ? "You've unlocked free wholesale delivery."
        : 'Add ${MoneyKobo.formatNaira(cart.amountUntilFreeDeliveryKobo)} more to qualify for free wholesale delivery.';

    return Material(
      color: colorScheme.surfaceContainerHighest,
      borderRadius: AppRadius.borderLg,
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Free Delivery Progress',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ),
                Text(
                  statusText,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: colorScheme.tertiary,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.sm),
            ClipRRect(
              borderRadius: BorderRadius.circular(999),
              child: LinearProgressIndicator(
                value: progress,
                minHeight: 8,
                backgroundColor: colorScheme.surfaceContainerLow,
                color: colorScheme.tertiary,
              ),
            ),
            const SizedBox(height: AppSpacing.sm),
            Text(
              hintText,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class _OrderSummary extends StatelessWidget {
  const _OrderSummary({required this.cart});

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Material(
      color: colorScheme.surfaceContainerHighest,
      borderRadius: AppRadius.borderLg,
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order Summary',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
            const SizedBox(height: AppSpacing.md),
            _SummaryRow(
              label: 'Subtotal',
              value: MoneyKobo.formatNaira(cart.subtotalKobo),
            ),
            const SizedBox(height: AppSpacing.sm),
            _SummaryRow(
              label: 'Estimated Delivery',
              value: cart.appliedDeliveryFeeKobo == 0
                  ? 'Free'
                  : MoneyKobo.formatNaira(cart.appliedDeliveryFeeKobo),
              valueColor: cart.appliedDeliveryFeeKobo == 0
                  ? colorScheme.tertiary
                  : null,
            ),
            const SizedBox(height: AppSpacing.md),
            Divider(color: colorScheme.outline.withValues(alpha: 0.3)),
            const SizedBox(height: AppSpacing.sm),
            _SummaryRow(
              label: 'Total',
              value: MoneyKobo.formatNaira(cart.totalKobo),
              emphasize: true,
            ),
          ],
        ),
      ),
    );
  }
}

class _SummaryRow extends StatelessWidget {
  const _SummaryRow({
    required this.label,
    required this.value,
    this.valueColor,
    this.emphasize = false,
  });

  final String label;
  final String value;
  final Color? valueColor;
  final bool emphasize;

  @override
  Widget build(BuildContext context) {
    final style = emphasize
        ? Theme.of(context).textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w800,
            )
        : Theme.of(context).textTheme.bodyMedium;

    return Row(
      children: [
        Text(label, style: style),
        const Spacer(),
        Text(
          value,
          style: style?.copyWith(
            color: valueColor,
            fontWeight: emphasize ? FontWeight.w800 : FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class _CartItemTile extends ConsumerWidget {
  const _CartItemTile({
    required this.item,
    required this.enabled,
  });

  final CartItem item;
  final bool enabled;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final notifier = ref.read(cartNotifierProvider.notifier);

    return Material(
      color: colorScheme.surfaceContainerHighest,
      borderRadius: AppRadius.borderLg,
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: AppRadius.borderMd,
              child: Image.network(
                item.imageUrl,
                width: 72,
                height: 72,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => ColoredBox(
                  color: colorScheme.surface,
                  child: const SizedBox(
                    width: 72,
                    height: 72,
                    child: Icon(Icons.inventory_2_outlined),
                  ),
                ),
              ),
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${item.name} ${item.packageLabel}',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  Text(
                    item.brand,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  Text(
                    MoneyKobo.formatNaira(item.unitPriceKobo),
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: colorScheme.tertiary,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Row(
                    children: [
                      _QtyButton(
                        icon: Icons.remove,
                        onPressed: !enabled
                            ? null
                            : () => notifier.setQuantity(
                                  item.productId,
                                  item.quantity - 1,
                                ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.md,
                        ),
                        child: Text(
                          '${item.quantity}',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                      ),
                      _QtyButton(
                        icon: Icons.add,
                        onPressed: !enabled
                            ? null
                            : () => notifier.setQuantity(
                                  item.productId,
                                  item.quantity + 1,
                                ),
                      ),
                      const Spacer(),
                      Text(
                        MoneyKobo.formatNaira(item.lineTotalKobo),
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            IconButton(
              tooltip: 'Remove',
              onPressed: !enabled
                  ? null
                  : () => notifier.removeProduct(item.productId),
              icon: Icon(Icons.delete_outline, color: colorScheme.error),
            ),
          ],
        ),
      ),
    );
  }
}

class _QtyButton extends StatelessWidget {
  const _QtyButton({required this.icon, this.onPressed});

  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Material(
      color: colorScheme.surface,
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.sm),
          child: Icon(icon, size: 18, color: colorScheme.tertiary),
        ),
      ),
    );
  }
}
