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
import '../domain/create_banner_request.dart';
import '../domain/marketplace_banner.dart';
import '../domain/update_banner_request.dart';
import '../providers/marketplace_providers.dart';
import 'widgets/marketplace_widgets.dart';

@RoutePage()
class AdminBannersScreen extends ConsumerWidget {
  const AdminBannersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(adminBannersProvider);

    return AdminScaffold(
      title: 'Marketplace banners',
      actions: [
        IconButton(
          tooltip: 'Add banner',
          onPressed: () => context.router.push(AdminBannerFormRoute()),
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
        data: (banners) {
          if (banners.isEmpty) {
            return AppEmptyState(
              icon: Icons.campaign_outlined,
              title: 'No banners',
              message: 'Create a promo banner for the marketplace.',
              actionLabel: 'Add banner',
              onAction: () => context.router.push(AdminBannerFormRoute()),
            );
          }
          return ListView.separated(
            padding: const EdgeInsets.all(AppSpacing.lg),
            itemCount: banners.length,
            separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.md),
            itemBuilder: (context, index) {
              final banner = banners[index];
              return AppCard(
                onTap: () => context.router.push(
                  AdminBannerFormRoute(bannerId: banner.id),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      banner.title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    Text(
                      '${banner.badgeLabel} · Order ${banner.sortOrder} · '
                      '${banner.isActive ? 'Active' : 'Inactive'}',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context)
                                .colorScheme
                                .onSurfaceVariant,
                          ),
                    ),
                    const SizedBox(height: AppSpacing.sm),
                    MarketplacePromoBanner(banner: banner),
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
class AdminBannerFormScreen extends ConsumerStatefulWidget {
  const AdminBannerFormScreen({super.key, this.bannerId});

  final String? bannerId;

  @override
  ConsumerState<AdminBannerFormScreen> createState() =>
      _AdminBannerFormScreenState();
}

class _AdminBannerFormScreenState extends ConsumerState<AdminBannerFormScreen> {
  final _badgeController = TextEditingController(text: 'Bulk Savings');
  final _titleController = TextEditingController();
  final _subtitleController = TextEditingController();
  final _ctaLabelController = TextEditingController(text: 'Shop Deals');
  final _ctaRouteController = TextEditingController();
  final _gradientStartController = TextEditingController(text: '#1A3A5C');
  final _gradientEndController = TextEditingController(text: '#2D6A8F');
  final _sortController = TextEditingController(text: '0');
  bool _isActive = true;
  bool _loading = false;
  bool _hydrated = false;
  String? _error;

  bool get _isEdit => widget.bannerId != null;

  @override
  void dispose() {
    _badgeController.dispose();
    _titleController.dispose();
    _subtitleController.dispose();
    _ctaLabelController.dispose();
    _ctaRouteController.dispose();
    _gradientStartController.dispose();
    _gradientEndController.dispose();
    _sortController.dispose();
    super.dispose();
  }

  void _hydrate(MarketplaceBanner banner) {
    if (_hydrated) return;
    _hydrated = true;
    _badgeController.text = banner.badgeLabel;
    _titleController.text = banner.title;
    _subtitleController.text = banner.subtitle;
    _ctaLabelController.text = banner.ctaLabel;
    _ctaRouteController.text = banner.ctaRoute ?? '';
    _gradientStartController.text = banner.gradientStart;
    _gradientEndController.text = banner.gradientEnd;
    _sortController.text = '${banner.sortOrder}';
    _isActive = banner.isActive;
  }

  Future<void> _save() async {
    setState(() {
      _loading = true;
      _error = null;
    });

    final repo = ref.read(marketplaceRepositoryProvider);
    final sortOrder = int.tryParse(_sortController.text.trim()) ?? 0;
    final ctaRoute = _ctaRouteController.text.trim();

    try {
      if (_isEdit) {
        await repo.updateBanner(
          widget.bannerId!,
          UpdateBannerRequest(
            badgeLabel: _badgeController.text.trim(),
            title: _titleController.text.trim(),
            subtitle: _subtitleController.text.trim(),
            ctaLabel: _ctaLabelController.text.trim(),
            ctaRoute: ctaRoute.isEmpty ? null : ctaRoute,
            gradientStart: _gradientStartController.text.trim(),
            gradientEnd: _gradientEndController.text.trim(),
            sortOrder: sortOrder,
            isActive: _isActive,
          ),
        );
      } else {
        await repo.createBanner(
          CreateBannerRequest(
            badgeLabel: _badgeController.text.trim(),
            title: _titleController.text.trim(),
            subtitle: _subtitleController.text.trim(),
            ctaLabel: _ctaLabelController.text.trim(),
            ctaRoute: ctaRoute.isEmpty ? null : ctaRoute,
            gradientStart: _gradientStartController.text.trim(),
            gradientEnd: _gradientEndController.text.trim(),
            sortOrder: sortOrder,
            isActive: _isActive,
          ),
        );
      }
      ref.invalidate(adminBannersProvider);
      ref.invalidate(marketplaceBannersProvider);
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
          .deactivateBanner(widget.bannerId!);
      ref.invalidate(adminBannersProvider);
      ref.invalidate(marketplaceBannersProvider);
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
      final async = ref.watch(adminBannersProvider);
      async.whenData((banners) {
        final match = banners.where((b) => b.id == widget.bannerId);
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
      title: _isEdit ? 'Edit banner' : 'New banner',
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        children: [
          AppTextField(
            controller: _badgeController,
            label: 'Badge label',
            hint: 'Bulk Savings',
          ),
          const SizedBox(height: AppSpacing.lg),
          AppTextField(
            controller: _titleController,
            label: 'Title',
            hint: 'Stock up & Save',
          ),
          const SizedBox(height: AppSpacing.lg),
          AppTextField(
            controller: _subtitleController,
            label: 'Subtitle',
            maxLines: 2,
          ),
          const SizedBox(height: AppSpacing.lg),
          AppTextField(
            controller: _ctaLabelController,
            label: 'CTA label',
            hint: 'Shop Deals',
          ),
          const SizedBox(height: AppSpacing.lg),
          AppTextField(
            controller: _ctaRouteController,
            label: 'CTA route (optional)',
          ),
          const SizedBox(height: AppSpacing.lg),
          AppTextField(
            controller: _gradientStartController,
            label: 'Gradient start (hex)',
            hint: '#1A3A5C',
          ),
          const SizedBox(height: AppSpacing.lg),
          AppTextField(
            controller: _gradientEndController,
            label: 'Gradient end (hex)',
            hint: '#2D6A8F',
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
            label: _isEdit ? 'Save changes' : 'Create banner',
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
