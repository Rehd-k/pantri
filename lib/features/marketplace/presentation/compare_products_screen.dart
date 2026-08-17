import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/utils/money_kobo.dart';
import '../../../core/widgets/app_card.dart';
import '../../cart/providers/cart_notifier.dart';
import '../domain/marketplace_product.dart';
import '../providers/marketplace_providers.dart';

class CompareProductsScreen extends ConsumerWidget {
  const CompareProductsScreen({
    super.key,
    required this.productIdA,
    required this.productIdB,
  });

  final String productIdA;
  final String productIdB;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final aAsync = ref.watch(productDetailProvider(productIdA));
    final bAsync = ref.watch(productDetailProvider(productIdB));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Compare Products'),
      ),
      body: aAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('$e')),
        data: (productA) => bAsync.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e, _) => Center(child: Text('$e')),
          data: (productB) => _CompareBody(
            productA: productA,
            productB: productB,
          ),
        ),
      ),
    );
  }
}

class _CompareBody extends ConsumerWidget {
  const _CompareBody({
    required this.productA,
    required this.productB,
  });

  final MarketplaceProduct productA;
  final MarketplaceProduct productB;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final aBest = productA.priceKobo <= productB.priceKobo;
    final rows = _buildRows(productA, productB);

    return ListView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      children: [
        Text(
          'Compare Products',
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: AppSpacing.lg),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _CompareProductCard(
                product: productA,
                bestValue: aBest,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.sm,
                vertical: AppSpacing.xxl,
              ),
              child: CircleAvatar(
                radius: 18,
                backgroundColor:
                    Theme.of(context).colorScheme.surfaceContainerHighest,
                child: Text(
                  'VS',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ),
            ),
            Expanded(
              child: _CompareProductCard(
                product: productB,
                bestValue: !aBest,
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.lg),
        AppCard(
          child: Column(
            children: [
              for (var i = 0; i < rows.length; i++) ...[
                _CompareRow(row: rows[i]),
                if (i < rows.length - 1) const Divider(height: AppSpacing.lg),
              ],
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.lg),
        _NutritionCompareSection(productA: productA, productB: productB),
        const SizedBox(height: AppSpacing.lg),
        Row(
          children: [
            Expanded(
              child: FilledButton.icon(
                onPressed: () => _add(context, ref, productA),
                icon: const Icon(Icons.shopping_cart_outlined),
                label: const Text('Add to Cart'),
              ),
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: FilledButton.tonalIcon(
                onPressed: () => _add(context, ref, productB),
                icon: const Icon(Icons.shopping_cart_outlined),
                label: const Text('Add to Cart'),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Future<void> _add(
    BuildContext context,
    WidgetRef ref,
    MarketplaceProduct product,
  ) async {
    try {
      final packId = product.cheapestPack?.id;
      if (packId == null) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('This product has no sellable packs'),
            ),
          );
        }
        return;
      }
      await ref.read(cartNotifierProvider.notifier).addProduct(packId);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Added ${product.name} to cart')),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(e is ApiException ? e.message : e.toString()),
          ),
        );
      }
    }
  }

  List<_RowData> _buildRows(
    MarketplaceProduct a,
    MarketplaceProduct b,
  ) {
    final rows = <_RowData>[
      _RowData(
        label: 'Wholesale price',
        left: MoneyKobo.formatNaira(a.priceKobo),
        right: MoneyKobo.formatNaira(b.priceKobo),
        leftWins: a.priceKobo < b.priceKobo,
        rightWins: b.priceKobo < a.priceKobo,
      ),
      _RowData(
        label: 'Package size',
        left: a.packageLabel,
        right: b.packageLabel,
      ),
    ];

    if (a.origin.isNotEmpty || b.origin.isNotEmpty) {
      rows.add(
        _RowData(
          label: 'Origin',
          left: a.origin.isEmpty ? '—' : a.origin,
          right: b.origin.isEmpty ? '—' : b.origin,
        ),
      );
    }

    rows.add(
      _RowData(
        label: 'Reviews',
        left:
            '${a.averageRating.toStringAsFixed(1)} (${a.reviewCount} reviews)',
        right:
            '${b.averageRating.toStringAsFixed(1)} (${b.reviewCount} reviews)',
        leftWins: a.averageRating > b.averageRating,
        rightWins: b.averageRating > a.averageRating,
      ),
    );

    return rows;
  }
}

class _CompareProductCard extends StatelessWidget {
  const _CompareProductCard({
    required this.product,
    required this.bestValue,
  });

  final MarketplaceProduct product;
  final bool bestValue;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        if (bestValue)
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xFF1B7A4E),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(AppRadius.md),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.star, size: 14, color: Colors.white),
                const SizedBox(width: 4),
                Text(
                  'Best Value',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ],
            ),
          ),
        Container(
          decoration: BoxDecoration(
            color: colorScheme.surfaceContainerHighest,
            borderRadius: bestValue
                ? BorderRadius.vertical(bottom: Radius.circular(AppRadius.md))
                : AppRadius.borderLg,
          ),
          padding: const EdgeInsets.all(AppSpacing.sm),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: ClipRRect(
                  borderRadius: AppRadius.borderMd,
                  child: Image.network(
                    product.imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) =>
                        const Icon(Icons.inventory_2_outlined),
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              Text(
                product.brand,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Text(
                product.packageLabel,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
              ),
              Text(
                MoneyKobo.formatNaira(product.priceKobo),
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w800,
                      color: colorScheme.tertiary,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _RowData {
  const _RowData({
    required this.label,
    required this.left,
    required this.right,
    this.leftWins = false,
    this.rightWins = false,
  });

  final String label;
  final String left;
  final String right;
  final bool leftWins;
  final bool rightWins;
}

class _CompareRow extends StatelessWidget {
  const _CompareRow({required this.row});

  final _RowData row;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _Cell(text: row.left, wins: row.leftWins),
        ),
        SizedBox(
          width: 88,
          child: Text(
            row.label,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
          ),
        ),
        Expanded(
          child: _Cell(text: row.right, wins: row.rightWins, alignEnd: true),
        ),
      ],
    );
  }
}

class _Cell extends StatelessWidget {
  const _Cell({
    required this.text,
    required this.wins,
    this.alignEnd = false,
  });

  final String text;
  final bool wins;
  final bool alignEnd;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          alignEnd ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (wins && !alignEnd) ...[
          const Icon(Icons.check_circle, size: 16, color: Color(0xFF1B7A4E)),
          const SizedBox(width: 4),
        ],
        Flexible(
          child: Text(
            text,
            textAlign: alignEnd ? TextAlign.right : TextAlign.left,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: wins ? FontWeight.w700 : null,
                ),
          ),
        ),
        if (wins && alignEnd) ...[
          const SizedBox(width: 4),
          const Icon(Icons.check_circle, size: 16, color: Color(0xFF1B7A4E)),
        ],
      ],
    );
  }
}

class _NutritionCompareSection extends StatelessWidget {
  const _NutritionCompareSection({
    required this.productA,
    required this.productB,
  });

  final MarketplaceProduct productA;
  final MarketplaceProduct productB;

  @override
  Widget build(BuildContext context) {
    final a = productA.nutrition;
    final b = productB.nutrition;
    final hasFacts = a.hasValues || b.hasValues;
    final rows = <_RowData>[
      _nutrientRow('Calories', a.energyKcal, b.energyKcal, 'kcal', false),
      _nutrientRow('Protein', _grams(a.proteinMg), _grams(b.proteinMg), 'g', true),
      _nutrientRow('Carbs', _grams(a.carbsMg), _grams(b.carbsMg), 'g', true),
      _nutrientRow('Fat', _grams(a.fatMg), _grams(b.fatMg), 'g', false),
      _nutrientRow('Fiber', _grams(a.fiberMg), _grams(b.fiberMg), 'g', true),
      _nutrientRow('Sugar', _grams(a.sugarMg), _grams(b.sugarMg), 'g', false),
      _nutrientRow('Sodium', a.sodiumMg, b.sodiumMg, 'mg', false),
      _nutrientRow(
        'Iron',
        _grams(a.ironUg),
        _grams(b.ironUg),
        'mg',
        true,
      ),
    ];
    final allergenA = productA.allergens.map((e) => e.name).join(', ');
    final allergenB = productB.allergens.map((e) => e.name).join(', ');
    if (allergenA.isNotEmpty || allergenB.isNotEmpty) {
      rows.add(
        _RowData(
          label: 'Allergens',
          left: allergenA.isEmpty ? 'None listed' : allergenA,
          right: allergenB.isEmpty ? 'None listed' : allergenB,
        ),
      );
    }

    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nutrition',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            'Per 100g serving',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
          ),
          const SizedBox(height: AppSpacing.md),
          if (!hasFacts)
            Text(
              'Nutrition facts are not listed for these products yet.',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
            )
          else
            for (var i = 0; i < rows.length; i++) ...[
              _CompareRow(row: rows[i]),
              if (i < rows.length - 1) const Divider(height: AppSpacing.lg),
            ],
        ],
      ),
    );
  }

  _RowData _nutrientRow(
    String label,
    int left,
    int right,
    String unit,
    bool higherIsBetter,
  ) {
    bool leftWins = false;
    bool rightWins = false;
    if (left != right && (left > 0 || right > 0)) {
      if (higherIsBetter) {
        leftWins = left > right;
        rightWins = right > left;
      } else {
        leftWins = left < right;
        rightWins = right < left;
      }
    }
    return _RowData(
      label: label,
      left: left == 0 ? '—' : '$left $unit',
      right: right == 0 ? '—' : '$right $unit',
      leftWins: leftWins,
      rightWins: rightWins,
    );
  }

  int _grams(int milligrams) => (milligrams / 1000).round();
}
