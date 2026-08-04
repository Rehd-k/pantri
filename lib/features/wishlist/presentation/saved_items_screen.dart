import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/utils/money_kobo.dart';
import '../../../core/widgets/app_empty_state.dart';
import '../../cart/providers/cart_notifier.dart';
import '../../marketplace/presentation/compare_products_screen.dart';
import '../domain/wishlist_item.dart';
import '../providers/wishlist_providers.dart';

class SavedItemsScreen extends ConsumerStatefulWidget {
  const SavedItemsScreen({super.key});

  @override
  ConsumerState<SavedItemsScreen> createState() => _SavedItemsScreenState();
}

class _SavedItemsScreenState extends ConsumerState<SavedItemsScreen> {
  bool _selecting = false;
  final Set<String> _selectedIds = {};

  void _toggleSelect(String productId) {
    setState(() {
      if (_selectedIds.contains(productId)) {
        _selectedIds.remove(productId);
      } else {
        if (_selectedIds.length >= 2) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Select exactly 2 products to compare')),
          );
          return;
        }
        _selectedIds.add(productId);
      }
    });
  }

  void _openCompare() {
    if (_selectedIds.length != 2) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Select exactly 2 products to compare')),
      );
      return;
    }
    final ids = _selectedIds.toList();
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => CompareProductsScreen(
          productIdA: ids[0],
          productIdB: ids[1],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final async = ref.watch(wishlistProvider);
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved Items'),
        actions: [
          if (async.value != null && async.value!.total >= 2)
            TextButton(
              onPressed: () {
                setState(() {
                  _selecting = !_selecting;
                  _selectedIds.clear();
                });
              },
              child: Text(_selecting ? 'Cancel' : 'Compare'),
            ),
        ],
      ),
      body: async.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Text(
              error is ApiException ? error.message : error.toString(),
            ),
          ),
        ),
        data: (data) {
          if (data.items.isEmpty) {
            return const AppEmptyState(
              icon: Icons.favorite_border,
              title: 'No saved items',
              message:
                  'Tap the heart on a product to save it here for later.',
            );
          }

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  AppSpacing.lg,
                  AppSpacing.md,
                  AppSpacing.lg,
                  AppSpacing.sm,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Saved Items',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(fontWeight: FontWeight.w800),
                          ),
                          Text(
                            '${data.total} item${data.total == 1 ? '' : 's'} in your wishlist',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: colorScheme.onSurfaceVariant),
                          ),
                        ],
                      ),
                    ),
                    OutlinedButton.icon(
                      onPressed: () {
                        final lines = data.items
                            .map(
                              (i) =>
                                  '${i.name} ${i.packageLabel} — ${MoneyKobo.formatNaira(i.priceKobo)}',
                            )
                            .join('\n');
                        Share.share('My Pantri wishlist:\n$lines');
                      },
                      icon: const Icon(Icons.ios_share_outlined, size: 18),
                      label: const Text('Share'),
                    ),
                  ],
                ),
              ),
              if (data.priceDropCount > 0)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.lg,
                    vertical: AppSpacing.sm,
                  ),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(AppSpacing.md),
                    decoration: BoxDecoration(
                      color: colorScheme.primaryContainer.withValues(alpha: 0.55),
                      borderRadius: AppRadius.borderLg,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.sell_outlined,
                          color: colorScheme.onPrimaryContainer,
                        ),
                        const SizedBox(width: AppSpacing.sm),
                        Expanded(
                          child: Text(
                            'Price Drop Alert! ${data.priceDropCount} item${data.priceDropCount == 1 ? '' : 's'} in your wishlist have dropped in price since you saved them.',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              if (_selecting)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Select 2 products (${_selectedIds.length}/2)',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ),
                      FilledButton(
                        onPressed:
                            _selectedIds.length == 2 ? _openCompare : null,
                        child: const Text('Compare'),
                      ),
                    ],
                  ),
                ),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(AppSpacing.lg),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: AppSpacing.md,
                    crossAxisSpacing: AppSpacing.md,
                    childAspectRatio: 0.62,
                  ),
                  itemCount: data.items.length,
                  itemBuilder: (context, index) {
                    final item = data.items[index];
                    final selected = _selectedIds.contains(item.productId);
                    return _SavedItemCard(
                      item: item,
                      selecting: _selecting,
                      selected: selected,
                      onTap: _selecting
                          ? () => _toggleSelect(item.productId)
                          : null,
                      onAddToCart: () async {
                        try {
                          await ref
                              .read(cartNotifierProvider.notifier)
                              .addProduct(item.productId);
                          if (context.mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Added ${item.name} to cart'),
                              ),
                            );
                          }
                        } catch (e) {
                          if (context.mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  e is ApiException ? e.message : e.toString(),
                                ),
                              ),
                            );
                          }
                        }
                      },
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _SavedItemCard extends StatelessWidget {
  const _SavedItemCard({
    required this.item,
    required this.selecting,
    required this.selected,
    required this.onTap,
    required this.onAddToCart,
  });

  final WishlistItem item;
  final bool selecting;
  final bool selected;
  final VoidCallback? onTap;
  final VoidCallback onAddToCart;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final scarce = item.bulkAllocationClaimedPercent >= 90;

    return Material(
      color: colorScheme.surfaceContainerHighest,
      elevation: 1,
      borderRadius: AppRadius.borderLg,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadius.borderLg,
        child: Container(
          decoration: selected
              ? BoxDecoration(
                  borderRadius: AppRadius.borderLg,
                  border: Border.all(color: colorScheme.primary, width: 2),
                )
              : null,
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: AppRadius.borderMd,
                        child: Image.network(
                          item.imageUrl,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => ColoredBox(
                            color: colorScheme.surfaceContainerHighest,
                            child: const Icon(Icons.inventory_2_outlined),
                          ),
                        ),
                      ),
                    ),
                    if (item.priceDropped)
                      Positioned(
                        top: AppSpacing.xs,
                        left: AppSpacing.xs,
                        child: _Badge(
                          label:
                              '↓ ${MoneyKobo.formatNaira(item.dropAmountKobo)} less',
                          background: const Color(0xFFC62828),
                        ),
                      )
                    else if (scarce)
                      Positioned(
                        top: AppSpacing.xs,
                        left: AppSpacing.xs,
                        child: const _Badge(
                          label: 'Almost gone',
                          background: Color(0xFFE65100),
                        ),
                      ),
                    if (selecting)
                      Positioned(
                        top: AppSpacing.xs,
                        right: AppSpacing.xs,
                        child: Icon(
                          selected
                              ? Icons.check_circle
                              : Icons.circle_outlined,
                          color: selected
                              ? colorScheme.primary
                              : colorScheme.onSurface,
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              Text(
                '${item.name} ${item.packageLabel}'.trim(),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: AppSpacing.xs),
              Row(
                children: [
                  Text(
                    MoneyKobo.formatNaira(item.priceKobo),
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                  if (item.priceDropped) ...[
                    const SizedBox(width: AppSpacing.xs),
                    Text(
                      MoneyKobo.formatNaira(item.priceKoboAtSave),
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            decoration: TextDecoration.lineThrough,
                            color: colorScheme.onSurfaceVariant,
                          ),
                    ),
                  ],
                ],
              ),
              const SizedBox(height: AppSpacing.sm),
              FilledButton.icon(
                onPressed: selecting ? null : onAddToCart,
                icon: const Icon(Icons.shopping_cart_outlined, size: 16),
                label: const Text('Add to Cart'),
                style: FilledButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Badge extends StatelessWidget {
  const _Badge({required this.label, required this.background});

  final String label;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: 2,
      ),
      decoration: BoxDecoration(
        color: background,
        borderRadius: AppRadius.borderSm,
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
      ),
    );
  }
}
