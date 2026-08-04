import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/cart_notifier.dart';

/// Marketplace cart FAB with quantity badge.
class CartFab extends ConsumerWidget {
  const CartFab({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(cartItemCountProvider);
    final colorScheme = Theme.of(context).colorScheme;

    return FloatingActionButton(
      onPressed: onPressed,
      tooltip: 'Cart',
      backgroundColor: colorScheme.tertiary,
      foregroundColor: colorScheme.onTertiary,
      child: Badge(
        isLabelVisible: count > 0,
        label: Text(
          count > 99 ? '99+' : '$count',
          style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w700),
        ),
        backgroundColor: colorScheme.primary,
        textColor: colorScheme.onPrimary,
        child: const Icon(Icons.shopping_cart_outlined),
      ),
    );
  }
}
