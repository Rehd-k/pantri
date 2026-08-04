import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/router/app_router.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_card.dart';
import '../../../core/widgets/app_empty_state.dart';
import '../../../core/widgets/app_text_field.dart';
import '../../admin/admin_shell.dart';
import '../data/marketplace_repository.dart';
import '../domain/create_subcategory_request.dart';
import '../domain/marketplace_subcategory.dart';
import '../domain/update_subcategory_request.dart';
import '../providers/marketplace_providers.dart';

@RoutePage()
class AdminSubcategoriesScreen extends ConsumerStatefulWidget {
  const AdminSubcategoriesScreen({super.key, this.categoryId});

  final String? categoryId;

  @override
  ConsumerState<AdminSubcategoriesScreen> createState() =>
      _AdminSubcategoriesScreenState();
}

class _AdminSubcategoriesScreenState
    extends ConsumerState<AdminSubcategoriesScreen> {
  String? _categoryId;

  @override
  void initState() {
    super.initState();
    _categoryId = widget.categoryId;
  }

  @override
  Widget build(BuildContext context) {
    final categoriesAsync = ref.watch(adminCategoriesProvider);
    final subsAsync = ref.watch(adminSubcategoriesProvider(_categoryId));

    return AdminScaffold(
      title: 'Subcategories',
      actions: [
        IconButton(
          tooltip: 'Add subcategory',
          onPressed: () async {
            await context.router.push(
              AdminSubcategoryFormRoute(categoryId: _categoryId),
            );
            ref.invalidate(adminSubcategoriesProvider(_categoryId));
          },
          icon: const Icon(Icons.add),
        ),
      ],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: categoriesAsync.when(
              loading: () => const LinearProgressIndicator(),
              error: (e, _) => Text('$e'),
              data: (categories) {
                return DropdownButtonFormField<String?>(
                  key: ValueKey('cat-filter-$_categoryId'),
                  initialValue: _categoryId,
                  decoration: const InputDecoration(
                    labelText: 'Filter by category',
                  ),
                  items: [
                    const DropdownMenuItem<String?>(
                      value: null,
                      child: Text('All categories'),
                    ),
                    ...categories.map(
                      (c) => DropdownMenuItem<String?>(
                        value: c.id,
                        child: Text(c.name),
                      ),
                    ),
                  ],
                  onChanged: (value) => setState(() => _categoryId = value),
                );
              },
            ),
          ),
          Expanded(
            child: subsAsync.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, _) => Center(
                child: Text(
                  error is ApiException ? error.message : error.toString(),
                ),
              ),
              data: (subs) {
                if (subs.isEmpty) {
                  return AppEmptyState(
                    icon: Icons.account_tree_outlined,
                    title: 'No subcategories',
                    message: 'Create subcategories for a category.',
                    actionLabel: 'Add subcategory',
                    onAction: () => context.router.push(
                      AdminSubcategoryFormRoute(categoryId: _categoryId),
                    ),
                  );
                }
                return ListView.separated(
                  padding: const EdgeInsets.all(AppSpacing.lg),
                  itemCount: subs.length,
                  separatorBuilder: (_, __) =>
                      const SizedBox(height: AppSpacing.md),
                  itemBuilder: (context, index) {
                    final sub = subs[index];
                    return AppCard(
                      onTap: () async {
                        await context.router.push(
                          AdminSubcategoryFormRoute(
                            categoryId: sub.categoryId,
                            subcategoryId: sub.id,
                          ),
                        );
                        ref.invalidate(adminSubcategoriesProvider(_categoryId));
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  sub.name,
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                Text(
                                  'Order ${sub.sortOrder} · '
                                  '${sub.isActive ? 'Active' : 'Inactive'}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSurfaceVariant,
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
          ),
        ],
      ),
    );
  }
}

@RoutePage()
class AdminSubcategoryFormScreen extends ConsumerStatefulWidget {
  const AdminSubcategoryFormScreen({
    super.key,
    this.categoryId,
    this.subcategoryId,
  });

  final String? categoryId;
  final String? subcategoryId;

  @override
  ConsumerState<AdminSubcategoryFormScreen> createState() =>
      _AdminSubcategoryFormScreenState();
}

class _AdminSubcategoryFormScreenState
    extends ConsumerState<AdminSubcategoryFormScreen> {
  final _nameController = TextEditingController();
  final _sortController = TextEditingController(text: '0');
  String? _categoryId;
  bool _isActive = true;
  bool _loading = false;
  bool _hydrated = false;
  String? _error;

  bool get _isEdit => widget.subcategoryId != null;

  @override
  void initState() {
    super.initState();
    _categoryId = widget.categoryId;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _sortController.dispose();
    super.dispose();
  }

  void _hydrate(MarketplaceSubcategory sub) {
    if (_hydrated) return;
    _hydrated = true;
    _nameController.text = sub.name;
    _sortController.text = '${sub.sortOrder}';
    _categoryId = sub.categoryId;
    _isActive = sub.isActive;
  }

  Future<void> _save() async {
    if (_categoryId == null || _categoryId!.isEmpty) {
      setState(() => _error = 'Select a category');
      return;
    }
    setState(() {
      _loading = true;
      _error = null;
    });
    final repo = ref.read(marketplaceRepositoryProvider);
    final sortOrder = int.tryParse(_sortController.text.trim()) ?? 0;
    try {
      if (_isEdit) {
        await repo.updateSubcategory(
          widget.subcategoryId!,
          UpdateSubcategoryRequest(
            name: _nameController.text.trim(),
            sortOrder: sortOrder,
            isActive: _isActive,
          ),
        );
      } else {
        await repo.createSubcategory(
          CreateSubcategoryRequest(
            categoryId: _categoryId!,
            name: _nameController.text.trim(),
            sortOrder: sortOrder,
            isActive: _isActive,
          ),
        );
      }
      ref.invalidate(adminSubcategoriesProvider(null));
      ref.invalidate(adminSubcategoriesProvider(_categoryId));
      if (widget.categoryId != null) {
        ref.invalidate(activeSubcategoriesProvider(widget.categoryId!));
      }
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
          .deactivateSubcategory(widget.subcategoryId!);
      ref.invalidate(adminSubcategoriesProvider(null));
      ref.invalidate(adminSubcategoriesProvider(_categoryId));
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
    if (_isEdit && _categoryId != null) {
      final async = ref.watch(adminSubcategoriesProvider(_categoryId));
      async.whenData((subs) {
        final match = subs.where((s) => s.id == widget.subcategoryId);
        if (match.isNotEmpty) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted) setState(() => _hydrate(match.first));
          });
        }
      });
    }

    return AdminScaffold(
      title: _isEdit ? 'Edit subcategory' : 'New subcategory',
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        children: [
          categoriesAsync.when(
            loading: () => const LinearProgressIndicator(),
            error: (e, _) => Text('$e'),
            data: (categories) {
              return DropdownButtonFormField<String>(
                key: ValueKey('sub-cat-$_categoryId'),
                initialValue: _categoryId,
                decoration: const InputDecoration(labelText: 'Category'),
                items: categories
                    .map(
                      (c) => DropdownMenuItem(
                        value: c.id,
                        child: Text(c.name),
                      ),
                    )
                    .toList(),
                onChanged: _isEdit || _loading
                    ? null
                    : (value) => setState(() => _categoryId = value),
              );
            },
          ),
          const SizedBox(height: AppSpacing.lg),
          AppTextField(
            controller: _nameController,
            label: 'Name',
            hint: 'Long Grain',
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
            label: _isEdit ? 'Save changes' : 'Create subcategory',
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
