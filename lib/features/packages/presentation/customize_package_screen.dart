import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/utils/money_kobo.dart';
import '../../../core/widgets/app_button.dart';
import '../../marketplace/domain/marketplace_product.dart';
import '../../marketplace/domain/measure_models.dart';
import '../../marketplace/presentation/marketplace_search_screen.dart';
import '../data/packages_repository.dart';
import '../domain/package_models.dart';

class CustomizePackageScreen extends ConsumerStatefulWidget {
  const CustomizePackageScreen({super.key, required this.package});

  final PantryPackage package;

  @override
  ConsumerState<CustomizePackageScreen> createState() =>
      _CustomizePackageScreenState();
}

class _CustomizePackageScreenState
    extends ConsumerState<CustomizePackageScreen> {
  late List<PackageItem> _items;
  PantryPackage? _preview;
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _items = List.of(widget.package.items);
    _preview = widget.package;
  }

  List<PackageItemInput> get _payload => _items
      .map(
        (i) => PackageItemInput(
          packId: i.packId,
          quantity: i.quantity,
          sortOrder: i.sortOrder,
        ),
      )
      .toList();

  Future<void> _refreshPreview() async {
    if (_items.isEmpty) {
      setState(() => _preview = null);
      return;
    }
    setState(() => _loading = true);
    try {
      final preview = await ref
          .read(packagesRepositoryProvider)
          .customizePreview(widget.package.id, _payload);
      if (mounted) setState(() => _preview = preview);
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e is ApiException ? e.message : e.toString()),
        ),
      );
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _addProduct() async {
    final product = await Navigator.of(context).push<MarketplaceProduct>(
      MaterialPageRoute(
        builder: (_) => const _ProductPickerBridge(),
      ),
    );
    if (product == null) return;
    if (!mounted) return;

    final pack = await _pickPack(context, product);
    if (pack == null || !mounted) return;

    final existingIndex = _items.indexWhere((i) => i.packId == pack.id);
    setState(() {
      if (existingIndex >= 0) {
        final existing = _items[existingIndex];
        _items[existingIndex] = existing.copyWith(
          quantity: existing.quantity + 1,
          lineWholesaleKobo: pack.priceKobo * (existing.quantity + 1),
          lineRetailKobo: pack.retailPriceKobo * (existing.quantity + 1),
        );
      } else {
        _items.add(
          PackageItem(
            id: 'local-${pack.id}',
            packId: pack.id,
            productId: product.id,
            quantity: 1,
            sortOrder: _items.length,
            name: product.name,
            brand: pack.brand,
            packageLabel: pack.packageLabel,
            imageUrl: pack.imageUrl.isNotEmpty ? pack.imageUrl : product.imageUrl,
            priceKobo: pack.priceKobo,
            retailPriceKobo: pack.retailPriceKobo,
            lineWholesaleKobo: pack.priceKobo,
            lineRetailKobo: pack.retailPriceKobo,
          ),
        );
      }
    });
    await _refreshPreview();
  }

  Future<ProductPack?> _pickPack(
    BuildContext context,
    MarketplaceProduct product,
  ) async {
    final packs = product.activePacks.isNotEmpty
        ? product.activePacks
        : product.packs;
    if (packs.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('This product has no sellable packs')),
      );
      return null;
    }
    if (packs.length == 1) return packs.first;
    return showModalBottomSheet<ProductPack>(
      context: context,
      builder: (context) {
        return SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(AppSpacing.lg),
                child: Text(
                  'Choose pack size',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
              ),
              for (final pack in packs)
                ListTile(
                  title: Text('${product.name} · ${pack.packageLabel}'),
                  subtitle: Text(
                    '${pack.brand} · ${MoneyKobo.formatNaira(pack.priceKobo)}',
                  ),
                  onTap: () => Navigator.of(context).pop(pack),
                ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final pricing = _preview?.pricing ?? widget.package.pricing;

    return Scaffold(
      appBar: AppBar(title: const Text('Customize package')),
      body: Column(
        children: [
          if (_loading) const LinearProgressIndicator(minHeight: 2),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(AppSpacing.lg),
              itemCount: _items.length,
              separatorBuilder: (_, __) =>
                  const SizedBox(height: AppSpacing.md),
              itemBuilder: (context, index) {
                final item = _items[index];
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      item.imageUrl,
                      width: 48,
                      height: 48,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) =>
                          const Icon(Icons.inventory_2_outlined),
                    ),
                  ),
                  title: Text(item.name),
                  subtitle: Text(
                    '${item.packageLabel} · ${MoneyKobo.formatNaira(item.priceKobo)}',
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () async {
                          setState(() {
                            if (item.quantity <= 1) {
                              _items.removeAt(index);
                            } else {
                              _items[index] = item.copyWith(
                                quantity: item.quantity - 1,
                              );
                            }
                          });
                          await _refreshPreview();
                        },
                        icon: const Icon(Icons.remove_circle_outline),
                      ),
                      Text('${item.quantity}'),
                      IconButton(
                        onPressed: () async {
                          setState(() {
                            _items[index] =
                                item.copyWith(quantity: item.quantity + 1);
                          });
                          await _refreshPreview();
                        },
                        icon: const Icon(Icons.add_circle_outline),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Estimated total ${MoneyKobo.formatNaira(pricing.totalKobo)}'
                    '${pricing.discountPercent > 0 ? ' · ${pricing.discountPercent}% off' : ''}',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: AppSpacing.md),
                  AppButton(
                    label: 'Add product',
                    variant: AppButtonVariant.outlined,
                    icon: Icons.add,
                    onPressed: _addProduct,
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  AppButton(
                    label: 'Apply customization',
                    onPressed: _items.isEmpty || _preview == null
                        ? null
                        : () => Navigator.of(context).pop(_preview),
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

/// Opens marketplace search; returning a product requires a small bridge.
/// Users tap a product card via a dedicated picker mode.
class _ProductPickerBridge extends StatelessWidget {
  const _ProductPickerBridge();

  @override
  Widget build(BuildContext context) {
    return MarketplaceSearchScreen(
      pickMode: true,
      onProductPicked: (product) {
        Navigator.of(context).pop(product);
      },
    );
  }
}
