import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/router/app_router.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/utils/money_kobo.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_card.dart';
import '../../../core/widgets/app_empty_state.dart';
import '../../../core/widgets/app_text_field.dart';
import '../../admin/admin_shell.dart';
import '../data/marketplace_repository.dart';
import '../domain/create_product_request.dart';
import '../domain/marketplace_product.dart';
import '../domain/perfect_for_item.dart';
import '../domain/update_product_request.dart';
import '../providers/marketplace_providers.dart';

@RoutePage()
class AdminProductsScreen extends ConsumerWidget {
  const AdminProductsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(adminProductsProvider);

    return AdminScaffold(
      title: 'Products',
      actions: [
        IconButton(
          tooltip: 'Add product',
          onPressed: () async {
            await context.router.push(AdminProductFormRoute());
            ref.invalidate(adminProductsProvider);
          },
          icon: const Icon(Icons.add),
        ),
      ],
      body: async.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(
          child: Text(
            error is ApiException ? error.message : error.toString(),
          ),
        ),
        data: (data) {
          if (data.items.isEmpty) {
            return AppEmptyState(
              icon: Icons.inventory_2_outlined,
              title: 'No products',
              message: 'Add the first marketplace product.',
              actionLabel: 'Add product',
              onAction: () => context.router.push(AdminProductFormRoute()),
            );
          }
          return ListView.separated(
            padding: const EdgeInsets.all(AppSpacing.lg),
            itemCount: data.items.length,
            separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.md),
            itemBuilder: (context, index) {
              final product = data.items[index];
              return AppCard(
                onTap: () async {
                  await context.router.push(
                    AdminProductFormRoute(productId: product.id),
                  );
                  ref.invalidate(adminProductsProvider);
                },
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        product.imageUrl,
                        width: 56,
                        height: 56,
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) =>
                            const Icon(Icons.inventory_2_outlined),
                      ),
                    ),
                    const SizedBox(width: AppSpacing.md),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${product.name} ${product.packageLabel}',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          Text(
                            '${product.brand} · ${product.categoryName} / '
                            '${product.subcategoryName}',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSurfaceVariant,
                                ),
                          ),
                          Text(
                            MoneyKobo.formatNaira(product.priceKobo),
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.tertiary,
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.chevron_right),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

@RoutePage()
class AdminProductFormScreen extends ConsumerStatefulWidget {
  const AdminProductFormScreen({super.key, this.productId});

  final String? productId;

  @override
  ConsumerState<AdminProductFormScreen> createState() =>
      _AdminProductFormScreenState();
}

class _AdminProductFormScreenState
    extends ConsumerState<AdminProductFormScreen> {
  final _nameController = TextEditingController();
  final _brandController = TextEditingController();
  final _packageController = TextEditingController();
  final _imageController = TextEditingController();
  final _priceController = TextEditingController();
  final _retailController = TextEditingController();
  final _tagsController = TextEditingController();
  final _sortController = TextEditingController(text: '0');
  final _descriptionController = TextEditingController();
  final _originController = TextEditingController();
  final _bulkController = TextEditingController(text: '0');
  String? _categoryId;
  String? _subcategoryId;
  DateTime? _expiresAt;
  bool _isVerified = false;
  bool _isActive = true;
  bool _loading = false;
  bool _hydrated = false;
  String? _error;
  final List<_NutritionRow> _nutritionRows = [];
  final List<_PerfectForRow> _perfectForRows = [];

  bool get _isEdit => widget.productId != null;

  @override
  void dispose() {
    _nameController.dispose();
    _brandController.dispose();
    _packageController.dispose();
    _imageController.dispose();
    _priceController.dispose();
    _retailController.dispose();
    _tagsController.dispose();
    _sortController.dispose();
    _descriptionController.dispose();
    _originController.dispose();
    _bulkController.dispose();
    for (final row in _nutritionRows) {
      row.dispose();
    }
    for (final row in _perfectForRows) {
      row.dispose();
    }
    super.dispose();
  }

  void _hydrate(MarketplaceProduct product) {
    if (_hydrated) return;
    _hydrated = true;
    _nameController.text = product.name;
    _brandController.text = product.brand;
    _packageController.text = product.packageLabel;
    _imageController.text = product.imageUrl;
    _priceController.text = (product.priceKobo / 100).toStringAsFixed(
      product.priceKobo % 100 == 0 ? 0 : 2,
    );
    _retailController.text = (product.retailPriceKobo / 100).toStringAsFixed(
      product.retailPriceKobo % 100 == 0 ? 0 : 2,
    );
    _tagsController.text = product.tags.join(', ');
    _sortController.text = '${product.sortOrder}';
    _descriptionController.text = product.description;
    _originController.text = product.origin;
    _bulkController.text = '${product.bulkAllocationClaimedPercent}';
    _expiresAt = product.expiresAt != null
        ? DateTime.tryParse(product.expiresAt!)
        : null;
    _isVerified = product.isVerified;
    _categoryId = product.categoryId;
    _subcategoryId = product.subcategoryId;
    _isActive = product.isActive;
    for (final entry in product.nutritionFacts.entries) {
      _nutritionRows.add(_NutritionRow(key: entry.key, value: entry.value));
    }
    for (final item in product.perfectFor) {
      _perfectForRows.add(
        _PerfectForRow(
          title: item.title,
          description: item.description,
          imageUrl: item.imageUrl,
        ),
      );
    }
  }

  List<String> _parseTags(String raw) {
    return raw
        .split(',')
        .map((t) => t.trim())
        .where((t) => t.isNotEmpty)
        .toList();
  }

  Map<String, String> _nutritionMap() {
    final map = <String, String>{};
    for (final row in _nutritionRows) {
      final key = row.keyController.text.trim();
      final value = row.valueController.text.trim();
      if (key.isNotEmpty && value.isNotEmpty) {
        map[key] = value;
      }
    }
    return map;
  }

  List<PerfectForItem> _perfectForItems() {
    return _perfectForRows
        .map(
          (row) => PerfectForItem(
            title: row.titleController.text.trim(),
            description: row.descriptionController.text.trim(),
            imageUrl: row.imageController.text.trim(),
          ),
        )
        .where(
          (item) =>
              item.title.isNotEmpty &&
              item.description.isNotEmpty &&
              item.imageUrl.isNotEmpty,
        )
        .toList();
  }

  Future<void> _pickExpiry() async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: _expiresAt ?? DateTime(now.year + 1),
      firstDate: DateTime(now.year - 1),
      lastDate: DateTime(now.year + 10),
    );
    if (picked != null) {
      setState(() => _expiresAt = picked);
    }
  }

  Future<void> _save() async {
    final priceKobo = MoneyKobo.parseNairaToKobo(_priceController.text);
    final retailKobo = MoneyKobo.parseNairaToKobo(_retailController.text);
    if (_categoryId == null || _subcategoryId == null) {
      setState(() => _error = 'Select category and subcategory');
      return;
    }
    if (priceKobo == null || retailKobo == null) {
      setState(() => _error = 'Enter valid prices in naira');
      return;
    }
    final bulk = int.tryParse(_bulkController.text.trim()) ?? 0;
    if (bulk < 0 || bulk > 100) {
      setState(() => _error = 'Bulk allocation must be 0–100');
      return;
    }

    setState(() {
      _loading = true;
      _error = null;
    });
    final repo = ref.read(marketplaceRepositoryProvider);
    final sortOrder = int.tryParse(_sortController.text.trim()) ?? 0;
    // Empty string clears expiry on update (API maps '' → null).
    final expiresAt = _expiresAt?.toUtc().toIso8601String() ??
        (_isEdit ? '' : null);
    try {
      if (_isEdit) {
        await repo.updateProduct(
          widget.productId!,
          UpdateProductRequest(
            categoryId: _categoryId,
            subcategoryId: _subcategoryId,
            name: _nameController.text.trim(),
            brand: _brandController.text.trim(),
            packageLabel: _packageController.text.trim(),
            imageUrl: _imageController.text.trim(),
            priceKobo: priceKobo,
            retailPriceKobo: retailKobo,
            description: _descriptionController.text.trim(),
            origin: _originController.text.trim(),
            expiresAt: expiresAt,
            isVerified: _isVerified,
            bulkAllocationClaimedPercent: bulk,
            nutritionFacts: _nutritionMap(),
            perfectFor: _perfectForItems(),
            tags: _parseTags(_tagsController.text),
            sortOrder: sortOrder,
            isActive: _isActive,
          ),
        );
      } else {
        await repo.createProduct(
          CreateProductRequest(
            categoryId: _categoryId!,
            subcategoryId: _subcategoryId!,
            name: _nameController.text.trim(),
            brand: _brandController.text.trim(),
            packageLabel: _packageController.text.trim(),
            imageUrl: _imageController.text.trim(),
            priceKobo: priceKobo,
            retailPriceKobo: retailKobo,
            description: _descriptionController.text.trim(),
            origin: _originController.text.trim(),
            expiresAt: expiresAt,
            isVerified: _isVerified,
            bulkAllocationClaimedPercent: bulk,
            nutritionFacts: _nutritionMap(),
            perfectFor: _perfectForItems(),
            tags: _parseTags(_tagsController.text),
            sortOrder: sortOrder,
            isActive: _isActive,
          ),
        );
      }
      ref.invalidate(adminProductsProvider);
      if (mounted) context.router.maybePop();
    } catch (e) {
      setState(() {
        _error = e is ApiException ? e.message : e.toString();
      });
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _deactivate() async {
    if (!_isEdit) return;
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      await ref
          .read(marketplaceRepositoryProvider)
          .deactivateProduct(widget.productId!);
      ref.invalidate(adminProductsProvider);
      if (mounted) context.router.maybePop();
    } catch (e) {
      setState(() {
        _error = e is ApiException ? e.message : e.toString();
      });
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final categoriesAsync = ref.watch(adminCategoriesProvider);
    final subsAsync = ref.watch(adminSubcategoriesProvider(_categoryId));

    if (_isEdit) {
      final productsAsync = ref.watch(adminProductsProvider);
      productsAsync.whenData((data) {
        final match = data.items.where((p) => p.id == widget.productId);
        if (match.isNotEmpty) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted) setState(() => _hydrate(match.first));
          });
        }
      });
    }

    return AdminScaffold(
      title: _isEdit ? 'Edit product' : 'New product',
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        children: [
          categoriesAsync.when(
            loading: () => const LinearProgressIndicator(),
            error: (e, _) => Text('$e'),
            data: (categories) {
              return DropdownButtonFormField<String>(
                key: ValueKey('prod-cat-$_categoryId'),
                initialValue: _categoryId,
                decoration: const InputDecoration(labelText: 'Category'),
                items: categories
                    .map(
                      (c) => DropdownMenuItem(value: c.id, child: Text(c.name)),
                    )
                    .toList(),
                onChanged: _loading
                    ? null
                    : (value) => setState(() {
                          _categoryId = value;
                          _subcategoryId = null;
                        }),
              );
            },
          ),
          const SizedBox(height: AppSpacing.lg),
          subsAsync.when(
            loading: () => const LinearProgressIndicator(),
            error: (e, _) => Text('$e'),
            data: (subs) {
              return DropdownButtonFormField<String>(
                key: ValueKey('prod-sub-$_subcategoryId-$_categoryId'),
                initialValue: _subcategoryId,
                decoration: const InputDecoration(labelText: 'Subcategory'),
                items: subs
                    .map(
                      (s) => DropdownMenuItem(value: s.id, child: Text(s.name)),
                    )
                    .toList(),
                onChanged: _loading
                    ? null
                    : (value) => setState(() => _subcategoryId = value),
              );
            },
          ),
          const SizedBox(height: AppSpacing.lg),
          AppTextField(
            controller: _nameController,
            label: 'Name',
            hint: 'Premium Long Grain Rice',
          ),
          const SizedBox(height: AppSpacing.lg),
          AppTextField(
            controller: _brandController,
            label: 'Brand',
            hint: 'Royal Farms',
          ),
          const SizedBox(height: AppSpacing.lg),
          AppTextField(
            controller: _packageController,
            label: 'Package size',
            hint: '5kg',
          ),
          const SizedBox(height: AppSpacing.lg),
          AppTextField(
            controller: _imageController,
            label: 'Image URL',
            keyboardType: TextInputType.url,
          ),
          const SizedBox(height: AppSpacing.lg),
          AppTextField(
            controller: _priceController,
            label: 'Wholesale price (₦)',
            hint: '5800',
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
          ),
          const SizedBox(height: AppSpacing.lg),
          AppTextField(
            controller: _retailController,
            label: 'Retail / market price (₦)',
            hint: '6500',
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
          ),
          const SizedBox(height: AppSpacing.lg),
          AppTextField(
            controller: _descriptionController,
            label: 'About this item',
            maxLines: 4,
          ),
          const SizedBox(height: AppSpacing.lg),
          AppTextField(
            controller: _originController,
            label: 'Origin / location',
            hint: 'Benue, Nigeria',
          ),
          const SizedBox(height: AppSpacing.lg),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text('Expiry date'),
            subtitle: Text(
              _expiresAt == null
                  ? 'Not set'
                  : '${_expiresAt!.year}-${_expiresAt!.month.toString().padLeft(2, '0')}-${_expiresAt!.day.toString().padLeft(2, '0')}',
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (_expiresAt != null)
                  IconButton(
                    tooltip: 'Clear',
                    onPressed: _loading
                        ? null
                        : () => setState(() => _expiresAt = null),
                    icon: const Icon(Icons.clear),
                  ),
                IconButton(
                  tooltip: 'Pick date',
                  onPressed: _loading ? null : _pickExpiry,
                  icon: const Icon(Icons.calendar_today_outlined),
                ),
              ],
            ),
          ),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text('PantryPay Verified'),
            value: _isVerified,
            onChanged:
                _loading ? null : (v) => setState(() => _isVerified = v),
          ),
          AppTextField(
            controller: _bulkController,
            label: 'Bulk allocation claimed (%)',
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: AppSpacing.xl),
          Text(
            'Nutritional facts',
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: AppSpacing.sm),
          for (var i = 0; i < _nutritionRows.length; i++) ...[
            Row(
              children: [
                Expanded(
                  child: AppTextField(
                    controller: _nutritionRows[i].keyController,
                    label: 'Label',
                    hint: 'Calories',
                  ),
                ),
                const SizedBox(width: AppSpacing.sm),
                Expanded(
                  child: AppTextField(
                    controller: _nutritionRows[i].valueController,
                    label: 'Value',
                    hint: '130 kcal',
                  ),
                ),
                IconButton(
                  onPressed: _loading
                      ? null
                      : () => setState(() {
                            _nutritionRows.removeAt(i).dispose();
                          }),
                  icon: const Icon(Icons.remove_circle_outline),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.sm),
          ],
          OutlinedButton.icon(
            onPressed: _loading
                ? null
                : () => setState(() => _nutritionRows.add(_NutritionRow())),
            icon: const Icon(Icons.add),
            label: const Text('Add nutrition row'),
          ),
          const SizedBox(height: AppSpacing.xl),
          Text(
            'Perfect for',
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: AppSpacing.sm),
          for (var i = 0; i < _perfectForRows.length; i++) ...[
            AppCard(
              child: Column(
                children: [
                  AppTextField(
                    controller: _perfectForRows[i].titleController,
                    label: 'Title',
                    hint: 'Party Jollof Rice',
                  ),
                  const SizedBox(height: AppSpacing.md),
                  AppTextField(
                    controller: _perfectForRows[i].descriptionController,
                    label: 'Description',
                    maxLines: 2,
                  ),
                  const SizedBox(height: AppSpacing.md),
                  AppTextField(
                    controller: _perfectForRows[i].imageController,
                    label: 'Image URL',
                    keyboardType: TextInputType.url,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton.icon(
                      onPressed: _loading
                          ? null
                          : () => setState(() {
                                _perfectForRows.removeAt(i).dispose();
                              }),
                      icon: const Icon(Icons.delete_outline),
                      label: const Text('Remove'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.md),
          ],
          OutlinedButton.icon(
            onPressed: _loading
                ? null
                : () => setState(() => _perfectForRows.add(_PerfectForRow())),
            icon: const Icon(Icons.add),
            label: const Text('Add perfect-for item'),
          ),
          const SizedBox(height: AppSpacing.lg),
          AppTextField(
            controller: _tagsController,
            label: 'Tags (comma-separated)',
            hint: 'rice, long grain, staple',
          ),
          const SizedBox(height: AppSpacing.lg),
          AppTextField(
            controller: _sortController,
            label: 'Sort order',
            keyboardType: TextInputType.number,
          ),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text('Active'),
            value: _isActive,
            onChanged:
                _loading ? null : (v) => setState(() => _isActive = v),
          ),
          if (_error != null)
            Text(
              _error!,
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          const SizedBox(height: AppSpacing.xl),
          AppButton(
            label: _isEdit ? 'Save changes' : 'Create product',
            loading: _loading,
            onPressed: _loading ? null : _save,
          ),
          if (_isEdit) ...[
            const SizedBox(height: AppSpacing.md),
            AppButton(
              label: 'Deactivate',
              variant: AppButtonVariant.destructive,
              loading: _loading,
              onPressed: _loading ? null : _deactivate,
            ),
          ],
        ],
      ),
    );
  }
}

class _NutritionRow {
  _NutritionRow({String key = '', String value = ''})
      : keyController = TextEditingController(text: key),
        valueController = TextEditingController(text: value);

  final TextEditingController keyController;
  final TextEditingController valueController;

  void dispose() {
    keyController.dispose();
    valueController.dispose();
  }
}

class _PerfectForRow {
  _PerfectForRow({
    String title = '',
    String description = '',
    String imageUrl = '',
  })  : titleController = TextEditingController(text: title),
        descriptionController = TextEditingController(text: description),
        imageController = TextEditingController(text: imageUrl);

  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final TextEditingController imageController;

  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    imageController.dispose();
  }
}
