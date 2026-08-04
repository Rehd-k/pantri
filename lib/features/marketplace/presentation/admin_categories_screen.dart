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
import '../domain/create_category_request.dart';
import '../domain/marketplace_category.dart';
import '../domain/update_category_request.dart';
import '../providers/marketplace_providers.dart';
import 'widgets/marketplace_widgets.dart';

@RoutePage()
class AdminCategoriesScreen extends ConsumerWidget {
  const AdminCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(adminCategoriesProvider);

    return AdminScaffold(
      title: 'Marketplace categories',
      actions: [
        IconButton(
          tooltip: 'Add category',
          onPressed: () => context.router.push(AdminCategoryFormRoute()),
          icon: const Icon(Icons.add),
        ),
      ],
      body: async.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Text(
              error is ApiException ? error.message : error.toString(),
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          ),
        ),
        data: (categories) {
          if (categories.isEmpty) {
            return AppEmptyState(
              icon: Icons.category_outlined,
              title: 'No categories',
              message: 'Create the first marketplace category.',
              actionLabel: 'Add category',
              onAction: () => context.router.push(AdminCategoryFormRoute()),
            );
          }
          return ListView.separated(
            padding: const EdgeInsets.all(AppSpacing.lg),
            itemCount: categories.length,
            separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.md),
            itemBuilder: (context, index) {
              final category = categories[index];
              return AppCard(
                onTap: () => context.router.push(
                  AdminCategoryFormRoute(categoryId: category.id),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: parseHexColor(category.accentColor),
                      backgroundImage: NetworkImage(category.imageUrl),
                      onBackgroundImageError: (_, __) {},
                      child: category.imageUrl.isEmpty
                          ? const Icon(Icons.category_outlined)
                          : null,
                    ),
                    const SizedBox(width: AppSpacing.md),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            category.name,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            'Order ${category.sortOrder} · '
                            '${category.isActive ? 'Active' : 'Inactive'}',
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
    );
  }
}

@RoutePage()
class AdminCategoryFormScreen extends ConsumerStatefulWidget {
  const AdminCategoryFormScreen({super.key, this.categoryId});

  final String? categoryId;

  @override
  ConsumerState<AdminCategoryFormScreen> createState() =>
      _AdminCategoryFormScreenState();
}

class _AdminCategoryFormScreenState
    extends ConsumerState<AdminCategoryFormScreen> {
  final _nameController = TextEditingController();
  final _imageUrlController = TextEditingController();
  final _accentController = TextEditingController(text: '#F5E6C8');
  final _sortController = TextEditingController(text: '0');
  bool _isActive = true;
  bool _loading = false;
  bool _hydrated = false;
  String? _error;

  bool get _isEdit => widget.categoryId != null;

  @override
  void dispose() {
    _nameController.dispose();
    _imageUrlController.dispose();
    _accentController.dispose();
    _sortController.dispose();
    super.dispose();
  }

  void _hydrate(MarketplaceCategory category) {
    if (_hydrated) return;
    _hydrated = true;
    _nameController.text = category.name;
    _imageUrlController.text = category.imageUrl;
    _accentController.text = category.accentColor;
    _sortController.text = '${category.sortOrder}';
    _isActive = category.isActive;
  }

  Future<void> _save() async {
    setState(() {
      _loading = true;
      _error = null;
    });

    final repo = ref.read(marketplaceRepositoryProvider);
    final sortOrder = int.tryParse(_sortController.text.trim()) ?? 0;

    try {
      if (_isEdit) {
        await repo.updateCategory(
          widget.categoryId!,
          UpdateCategoryRequest(
            name: _nameController.text.trim(),
            imageUrl: _imageUrlController.text.trim(),
            accentColor: _accentController.text.trim(),
            sortOrder: sortOrder,
            isActive: _isActive,
          ),
        );
      } else {
        await repo.createCategory(
          CreateCategoryRequest(
            name: _nameController.text.trim(),
            imageUrl: _imageUrlController.text.trim(),
            accentColor: _accentController.text.trim(),
            sortOrder: sortOrder,
            isActive: _isActive,
          ),
        );
      }
      ref.invalidate(adminCategoriesProvider);
      ref.invalidate(marketplaceCategoriesProvider);
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
          .deactivateCategory(widget.categoryId!);
      ref.invalidate(adminCategoriesProvider);
      ref.invalidate(marketplaceCategoriesProvider);
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
    if (_isEdit) {
      final async = ref.watch(adminCategoriesProvider);
      async.whenData((categories) {
        final match = categories.where((c) => c.id == widget.categoryId);
        if (match.isNotEmpty) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted) {
              setState(() => _hydrate(match.first));
            }
          });
        }
      });
    }

    return AdminScaffold(
      title: _isEdit ? 'Edit category' : 'New category',
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        children: [
          AppTextField(
            controller: _nameController,
            label: 'Name',
            hint: 'Rice & Grains',
          ),
          const SizedBox(height: AppSpacing.lg),
          AppTextField(
            controller: _imageUrlController,
            label: 'Image URL',
            hint: 'https://...',
            keyboardType: TextInputType.url,
          ),
          const SizedBox(height: AppSpacing.lg),
          AppTextField(
            controller: _accentController,
            label: 'Accent color (hex)',
            hint: '#F5E6C8',
          ),
          const SizedBox(height: AppSpacing.lg),
          AppTextField(
            controller: _sortController,
            label: 'Sort order',
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: AppSpacing.lg),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text('Active'),
            value: _isActive,
            onChanged: _loading
                ? null
                : (value) => setState(() => _isActive = value),
          ),
          if (_error != null) ...[
            const SizedBox(height: AppSpacing.md),
            Text(
              _error!,
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          ],
          const SizedBox(height: AppSpacing.xl),
          AppButton(
            label: _isEdit ? 'Save changes' : 'Create category',
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
