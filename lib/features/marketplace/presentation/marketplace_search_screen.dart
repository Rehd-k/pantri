import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_empty_state.dart';
import '../../cart/providers/cart_notifier.dart';
import '../domain/marketplace_product.dart';
import '../providers/marketplace_providers.dart';
import 'product_details_screen.dart';
import 'widgets/marketplace_widgets.dart';

class MarketplaceSearchScreen extends ConsumerStatefulWidget {
  const MarketplaceSearchScreen({
    super.key,
    this.initialQuery,
    this.categoryId,
    this.categoryName,
    this.pickMode = false,
    this.onProductPicked,
  });

  final String? initialQuery;
  final String? categoryId;
  final String? categoryName;
  final bool pickMode;
  final ValueChanged<MarketplaceProduct>? onProductPicked;

  @override
  ConsumerState<MarketplaceSearchScreen> createState() =>
      _MarketplaceSearchScreenState();
}

class _MarketplaceSearchScreenState
    extends ConsumerState<MarketplaceSearchScreen> {
  late final TextEditingController _queryController;
  String? _selectedSubcategoryId;
  Timer? _debounce;
  String _query = '';

  @override
  void initState() {
    super.initState();
    _query = widget.initialQuery?.trim() ?? '';
    _queryController = TextEditingController(text: _query);
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _queryController.dispose();
    super.dispose();
  }

  void _onQueryChanged(String value) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 320), () {
      if (!mounted) return;
      setState(() => _query = value.trim());
    });
  }

  ProductSearchParams get _params => ProductSearchParams(
        q: _query.isEmpty ? null : _query,
        categoryId: widget.categoryId,
        subcategoryId: _selectedSubcategoryId,
      );

  String get _resultsLabel {
    if (_query.isNotEmpty) return _query;
    return widget.categoryName ?? 'products';
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final resultsAsync = ref.watch(productSearchProvider(_params));
    final subsAsync = widget.categoryId == null
        ? null
        : ref.watch(activeSubcategoriesProvider(widget.categoryId!));

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.sm,
                AppSpacing.sm,
                AppSpacing.lg,
                AppSpacing.sm,
              ),
              child: Row(
                children: [
                  IconButton(
                    tooltip: 'Back',
                    onPressed: () => Navigator.of(context).maybePop(),
                    icon: Icon(Icons.arrow_back, color: colorScheme.tertiary),
                  ),
                  Expanded(
                    child: TextField(
                      controller: _queryController,
                      textInputAction: TextInputAction.search,
                      onChanged: _onQueryChanged,
                      onSubmitted: (value) {
                        _debounce?.cancel();
                        setState(() => _query = value.trim());
                      },
                      decoration: InputDecoration(
                        hintText: 'Search marketplace...',
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: _queryController.text.isEmpty
                            ? null
                            : IconButton(
                                tooltip: 'Clear',
                                onPressed: () {
                                  _queryController.clear();
                                  setState(() {
                                    _query = '';
                                    _selectedSubcategoryId = null;
                                  });
                                },
                                icon: const Icon(Icons.close),
                              ),
                        filled: true,
                        fillColor: colorScheme.surfaceContainerHighest,
                        border: OutlineInputBorder(
                          borderRadius: AppRadius.borderMd,
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: AppRadius.borderMd,
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: AppRadius.borderMd,
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Material(
                    color: colorScheme.surfaceContainerHighest,
                    shape: const CircleBorder(),
                    child: IconButton(
                      tooltip: 'Filters',
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Use subcategory chips to filter results',
                            ),
                          ),
                        );
                      },
                      icon: Icon(Icons.tune, color: colorScheme.tertiary),
                    ),
                  ),
                ],
              ),
            ),
            if (subsAsync != null)
              SizedBox(
                height: 44,
                child: subsAsync.when(
                  loading: () => const SizedBox.shrink(),
                  error: (_, __) => const SizedBox.shrink(),
                  data: (subs) {
                    if (subs.isEmpty) return const SizedBox.shrink();
                    return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.lg,
                      ),
                      itemCount: subs.length,
                      separatorBuilder: (_, __) =>
                          const SizedBox(width: AppSpacing.sm),
                      itemBuilder: (context, index) {
                        final sub = subs[index];
                        final selected = _selectedSubcategoryId == sub.id;
                        return FilterChip(
                          selected: selected,
                          showCheckmark: true,
                          label: Text(sub.name),
                          onSelected: (value) {
                            setState(() {
                              _selectedSubcategoryId =
                                  value ? sub.id : null;
                            });
                          },
                          selectedColor: colorScheme.tertiaryContainer,
                          checkmarkColor: colorScheme.onTertiaryContainer,
                          labelStyle: TextStyle(
                            color: selected
                                ? colorScheme.onTertiaryContainer
                                : colorScheme.onSurface,
                            fontWeight:
                                selected ? FontWeight.w700 : FontWeight.w500,
                          ),
                          backgroundColor: colorScheme.surfaceContainerHighest,
                          side: BorderSide.none,
                        );
                      },
                    );
                  },
                ),
              ),
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
                    child: Text(
                      "Results for '$_resultsLabel'",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                  ),
                  resultsAsync.when(
                    loading: () => const SizedBox.shrink(),
                    error: (_, __) => const SizedBox.shrink(),
                    data: (data) => Text(
                      '${data.total} items found',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: resultsAsync.when(
                loading: () =>
                    const Center(child: CircularProgressIndicator()),
                error: (error, _) => Center(
                  child: Padding(
                    padding: const EdgeInsets.all(AppSpacing.lg),
                    child: Text(
                      error is ApiException
                          ? error.message
                          : error.toString(),
                      style: TextStyle(color: colorScheme.error),
                    ),
                  ),
                ),
                data: (data) {
                  if (data.items.isEmpty) {
                    return const AppEmptyState(
                      icon: Icons.search_off,
                      title: 'No products found',
                      message: 'Try another search or subcategory filter.',
                    );
                  }
                  return GridView.builder(
                    padding: const EdgeInsets.fromLTRB(
                      AppSpacing.lg,
                      0,
                      AppSpacing.lg,
                      AppSpacing.xl,
                    ),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: AppSpacing.md,
                      crossAxisSpacing: AppSpacing.md,
                      childAspectRatio: 0.58,
                    ),
                    itemCount: data.items.length,
                    itemBuilder: (context, index) {
                      final product = data.items[index];
                      return MarketplaceProductCard(
                        product: product,
                        onTap: () {
                          if (widget.pickMode) {
                            widget.onProductPicked?.call(product);
                            return;
                          }
                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder: (_) => ProductDetailsScreen(
                                productId: product.id,
                              ),
                            ),
                          );
                        },
                        onAdd: widget.pickMode
                            ? () {
                                widget.onProductPicked?.call(product);
                              }
                            : () async {
                          try {
                            await ref
                                .read(cartNotifierProvider.notifier)
                                .addProduct(product.id);
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Added ${product.name} to cart',
                                  ),
                                ),
                              );
                            }
                          } catch (e) {
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    e is ApiException
                                        ? e.message
                                        : e.toString(),
                                  ),
                                ),
                              );
                            }
                          }
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
