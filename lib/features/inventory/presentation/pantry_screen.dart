import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_empty_state.dart';
import '../../../core/widgets/app_text_field.dart';
import '../../marketplace/providers/marketplace_providers.dart';
import '../../nutrition/domain/nutrition_models.dart';
import '../data/inventory_repository.dart';
import '../providers/inventory_providers.dart';
import 'restock_sheet.dart';

class PantryScreen extends ConsumerWidget {
  const PantryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stockAsync = ref.watch(householdStockProvider);
    final alertsAsync = ref.watch(restockAlertsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('My pantry'),
        actions: [
          IconButton(
            tooltip: 'Add item',
            onPressed: () => _openAdd(context),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(householdStockProvider);
          ref.invalidate(restockAlertsProvider);
          await Future.wait([
            ref.read(householdStockProvider.future),
            ref.read(restockAlertsProvider.future),
          ]);
        },
        child: stockAsync.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e, _) => AppEmptyState(
            icon: Icons.error_outline,
            title: 'Could not load pantry',
            message: e is ApiException ? e.message : e.toString(),
          ),
          data: (items) {
            final alerts = alertsAsync.asData?.value ?? const <RestockAlert>[];
            if (items.isEmpty) {
              return ListView(
                children: [
                  AppEmptyState(
                    icon: Icons.kitchen_outlined,
                    title: 'Pantry is empty',
                    message:
                        'Add what you already have at home, or wait for a fulfilled order to restock it.',
                    actionLabel: 'Add item',
                    onAction: () => _openAdd(context),
                  ),
                ],
              );
            }
            return ListView(
              padding: const EdgeInsets.all(AppSpacing.xl),
              children: [
                if (alerts.isNotEmpty) ...[
                  ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: AppRadius.borderMd,
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                    ),
                    leading: const Icon(Icons.warning_amber_outlined),
                    title: Text(
                      '${alerts.length} item${alerts.length == 1 ? '' : 's'} need a restock',
                    ),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () => showRestockSheet(context, ref, alerts: alerts),
                  ),
                  const SizedBox(height: AppSpacing.lg),
                ],
                for (final item in items) ...[
                  _StockTile(item: item),
                  const SizedBox(height: AppSpacing.md),
                ],
              ],
            );
          },
        ),
      ),
    );
  }

  void _openAdd(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => const AddPantryItemScreen()),
    );
  }
}

class _StockTile extends ConsumerWidget {
  const _StockTile({required this.item});

  final HouseholdStockItem item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: AppRadius.borderMd,
        side: BorderSide(color: colorScheme.outlineVariant),
      ),
      leading: ClipRRect(
        borderRadius: AppRadius.borderSm,
        child: Image.network(
          item.product.imageUrl,
          width: 48,
          height: 48,
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) => const Icon(Icons.inventory_2_outlined),
        ),
      ),
      title: Text(item.product.name),
      subtitle: Text(
        item.isEmpty
            ? 'Finished'
            : '${item.displayQuantity} ${item.displayUnit}',
      ),
      trailing: item.isLow
          ? Chip(
              label: Text(item.isEmpty ? 'Empty' : 'Low'),
              visualDensity: VisualDensity.compact,
            )
          : null,
      onTap: () => _editQuantity(context, ref),
    );
  }

  Future<void> _editQuantity(BuildContext context, WidgetRef ref) async {
    final controller = TextEditingController(
      text: item.quantityCanonical.toString(),
    );
    final value = await showDialog<int>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Update ${item.product.name}'),
        content: AppTextField(
          controller: controller,
          label: 'Canonical quantity',
          keyboardType: TextInputType.number,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () =>
                Navigator.pop(context, int.tryParse(controller.text.trim())),
            child: const Text('Save'),
          ),
        ],
      ),
    );
    if (value == null || !context.mounted) return;
    try {
      await ref.read(inventoryRepositoryProvider).updateStock(
            stockId: item.id,
            quantityCanonical: value,
          );
      ref.invalidate(householdStockProvider);
      ref.invalidate(restockAlertsProvider);
    } catch (e) {
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e is ApiException ? e.message : e.toString())),
      );
    }
  }
}

class AddPantryItemScreen extends ConsumerStatefulWidget {
  const AddPantryItemScreen({super.key, this.initialProductId});

  final String? initialProductId;

  @override
  ConsumerState<AddPantryItemScreen> createState() =>
      _AddPantryItemScreenState();
}

class _AddPantryItemScreenState extends ConsumerState<AddPantryItemScreen> {
  final _search = TextEditingController();
  final _quantity = TextEditingController(text: '1');
  String? _productId;
  bool _saving = false;

  @override
  void initState() {
    super.initState();
    _productId = widget.initialProductId;
  }

  @override
  void dispose() {
    _search.dispose();
    _quantity.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final results = ref.watch(
      productSearchProvider(
        ProductSearchParams(q: _search.text.trim()),
      ),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Add to pantry')),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.xl),
        child: Column(
          children: [
            AppTextField(
              controller: _search,
              label: 'Search catalog',
              onChanged: (_) => setState(() {}),
            ),
            const SizedBox(height: AppSpacing.md),
            AppTextField(
              controller: _quantity,
              label: 'Quantity (recipe units)',
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: AppSpacing.lg),
            Expanded(
              child: results.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (e, _) => Text('$e'),
                data: (page) {
                  final items = page.items;
                  if (items.isEmpty) {
                    return const AppEmptyState(
                      icon: Icons.search_off,
                      title: 'No products',
                      message: 'Try another search term.',
                    );
                  }
                  return ListView.separated(
                    itemCount: items.length,
                    separatorBuilder: (_, __) =>
                        const SizedBox(height: AppSpacing.sm),
                    itemBuilder: (context, index) {
                      final product = items[index];
                      final selected = product.id == _productId;
                      return ListTile(
                        selected: selected,
                        shape: RoundedRectangleBorder(
                          borderRadius: AppRadius.borderMd,
                        ),
                        leading: ClipRRect(
                          borderRadius: AppRadius.borderSm,
                          child: Image.network(
                            product.imageUrl,
                            width: 44,
                            height: 44,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(product.name),
                        subtitle: Text(product.packageLabel),
                        onTap: () => setState(() => _productId = product.id),
                      );
                    },
                  );
                },
              ),
            ),
            AppButton(
              label: 'Add to pantry',
              expanded: true,
              loading: _saving,
              onPressed: _productId == null ? null : _save,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _save() async {
    final qty = int.tryParse(_quantity.text.trim()) ?? 0;
    if (_productId == null || qty < 1) return;
    setState(() => _saving = true);
    try {
      await ref.read(inventoryRepositoryProvider).addStock(
            productId: _productId!,
            quantity: qty,
          );
      ref.invalidate(householdStockProvider);
      if (!mounted) return;
      Navigator.of(context).pop();
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e is ApiException ? e.message : e.toString())),
      );
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }
}
