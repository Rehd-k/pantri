import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/utils/money_kobo.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_empty_state.dart';
import '../../cart/providers/cart_notifier.dart';
import '../data/packages_repository.dart';
import '../domain/package_models.dart';
import '../providers/packages_providers.dart';
import 'customize_package_screen.dart';

class PackageDetailsScreen extends ConsumerStatefulWidget {
  const PackageDetailsScreen({super.key, required this.packageId});

  final String packageId;

  @override
  ConsumerState<PackageDetailsScreen> createState() =>
      _PackageDetailsScreenState();
}

class _PackageDetailsScreenState extends ConsumerState<PackageDetailsScreen> {
  PantryPackage? _override;
  bool _busy = false;

  List<PackageItemInput> _itemsPayload(PantryPackage pkg) => pkg.items
      .map(
        (i) => PackageItemInput(
          packId: i.packId,
          quantity: i.quantity,
          sortOrder: i.sortOrder,
        ),
      )
      .toList();

  Future<void> _subscribe(PantryPackage pkg) async {
    setState(() => _busy = true);
    try {
      await ref.read(packagesRepositoryProvider).subscribe(
            pkg.id,
            items: _itemsPayload(pkg),
          );
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Subscription pending — payroll setup coming soon.'),
        ),
      );
      ref.invalidate(minePackagesProvider);
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e is ApiException ? e.message : e.toString()),
        ),
      );
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _addToCart(PantryPackage pkg) async {
    setState(() => _busy = true);
    try {
      await ref.read(packagesRepositoryProvider).addToCart(
            pkg.id,
            items: _itemsPayload(pkg),
          );
      await ref.read(cartNotifierProvider.notifier).load();
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Package items added to cart')),
      );
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e is ApiException ? e.message : e.toString()),
        ),
      );
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _share(PantryPackage pkg) async {
    final buffer = StringBuffer()
      ..writeln(pkg.name)
      ..writeln(pkg.description)
      ..writeln(pkg.shareUrl);
    if (pkg.shareBannerUrl.isNotEmpty) {
      buffer.writeln(pkg.shareBannerUrl);
    }
    await Share.share(buffer.toString());
  }

  @override
  Widget build(BuildContext context) {
    final async = ref.watch(packageDetailProvider(widget.packageId));
    final colorScheme = Theme.of(context).colorScheme;

    return async.when(
      loading: () => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
      error: (e, _) => Scaffold(
        appBar: AppBar(),
        body: AppEmptyState(
          icon: Icons.error_outline,
          title: 'Package unavailable',
          message: e is ApiException ? e.message : e.toString(),
        ),
      ),
      data: (loaded) {
        final pkg = _override ?? loaded;
        final pricing = pkg.pricing;
        final visibleItems = pkg.items.take(3).toList();
        final moreCount = pkg.items.length - visibleItems.length;

        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 240,
                pinned: true,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.share_outlined),
                    onPressed: () => _share(pkg),
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.network(
                    pkg.coverImageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => ColoredBox(
                      color: colorScheme.surfaceContainerHighest,
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Transform.translate(
                  offset: const Offset(0, -24),
                  child: Container(
                    decoration: BoxDecoration(
                      color: colorScheme.surface,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(24),
                      ),
                    ),
                    padding: const EdgeInsets.fromLTRB(
                      AppSpacing.lg,
                      AppSpacing.xl,
                      AppSpacing.lg,
                      120,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (pkg.isPopular)
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: AppSpacing.md,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: colorScheme.primary.withValues(alpha: 0.12),
                              borderRadius: BorderRadius.circular(999),
                            ),
                            child: Text(
                              'Most Popular Bundle',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(
                                    color: colorScheme.primary,
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                          ),
                        if (pkg.isPopular) const SizedBox(height: AppSpacing.md),
                        Text(
                          pkg.name,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(height: AppSpacing.sm),
                        Text(
                          pkg.description,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                              ),
                        ),
                        const SizedBox(height: AppSpacing.xl),
                        _buildTierSavingsCard(pricing),
                        const SizedBox(height: AppSpacing.xl),
                        Text(
                          'Included Provisions',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(height: AppSpacing.md),
                        GridView.count(
                          crossAxisCount: 2,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          mainAxisSpacing: AppSpacing.md,
                          crossAxisSpacing: AppSpacing.md,
                          childAspectRatio: 1.35,
                          children: [
                            for (final item in visibleItems)
                              _ProvisionCard(
                                title: item.name,
                                subtitle:
                                    '${item.quantity}× ${item.packageLabel}',
                                imageUrl: item.imageUrl,
                              ),
                            if (moreCount > 0)
                              _ProvisionCard(
                                title: 'View $moreCount more',
                                subtitle: 'items',
                                icon: Icons.add,
                              ),
                          ],
                        ),
                        const SizedBox(height: AppSpacing.lg),
                        AppButton(
                          label: 'Customize this Package',
                          variant: AppButtonVariant.outlined,
                          icon: Icons.tune,
                          onPressed: () async {
                            final result =
                                await Navigator.of(context).push<PantryPackage>(
                              MaterialPageRoute(
                                builder: (_) => CustomizePackageScreen(
                                  package: pkg,
                                ),
                              ),
                            );
                            if (result != null && mounted) {
                              setState(() => _override = result);
                            }
                          },
                        ),
                        const SizedBox(height: AppSpacing.xl),
                        Text(
                          'Logistics & Payroll',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(height: AppSpacing.md),
                        const _InfoRow(
                          icon: Icons.local_shipping_outlined,
                          title: 'Monthly Delivery',
                          body:
                              'Arrives securely packaged at your designated location every 30 days.',
                        ),
                        const SizedBox(height: AppSpacing.md),
                        const _InfoRow(
                          icon: Icons.account_balance_outlined,
                          title: 'Payroll Deduction',
                          body:
                              'Deducted from your salary across your employer payroll schedule once activated.',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: SafeArea(
            child: Material(
              elevation: 8,
              color: colorScheme.surface,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  AppSpacing.lg,
                  AppSpacing.md,
                  AppSpacing.lg,
                  AppSpacing.md,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Cost',
                            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                  color: colorScheme.onSurfaceVariant,
                                ),
                          ),
                          Text(
                            MoneyKobo.formatNaira(pricing.totalKobo),
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      tooltip: 'Add to cart',
                      onPressed: _busy ? null : () => _addToCart(pkg),
                      icon: const Icon(Icons.add_shopping_cart_outlined),
                    ),
                    const SizedBox(width: AppSpacing.sm),
                    Flexible(
                      child: AppButton(
                        label: _busy ? 'Working…' : 'Confirm & Subscribe',
                        icon: Icons.arrow_forward,
                        onPressed: _busy ? null : () => _subscribe(pkg),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildTierSavingsCard(PackagePricing pricing) {
    final colorScheme = Theme.of(context).colorScheme;
    final applied = pricing.appliedTier;
    final next = pricing.nextTier;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        border: Border.all(color: colorScheme.outlineVariant),
        borderRadius: AppRadius.borderMd,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  applied == null
                      ? 'TIER SAVINGS'
                      : '${applied.label} SAVINGS UNLOCKED',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: colorScheme.primary,
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ),
              Text(
                '${pricing.discountPercent}% Off Retail',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          ClipRRect(
            borderRadius: BorderRadius.circular(999),
            child: LinearProgressIndicator(
              value: next == null ? 1 : pricing.nextTierProgress,
              minHeight: 8,
              backgroundColor: colorScheme.surfaceContainerHighest,
              color: colorScheme.primary,
            ),
          ),
          if (next != null) ...[
            const SizedBox(height: AppSpacing.sm),
            Center(
              child: Text(
                'Next tier at ${MoneyKobo.formatNaira(next.minSpendKobo)} total spend',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _ProvisionCard extends StatelessWidget {
  const _ProvisionCard({
    required this.title,
    required this.subtitle,
    this.imageUrl,
    this.icon,
  });

  final String title;
  final String subtitle;
  final String? imageUrl;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        border: Border.all(color: colorScheme.outlineVariant),
        borderRadius: AppRadius.borderMd,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (icon != null)
            Icon(icon, color: colorScheme.tertiary)
          else if (imageUrl != null)
            ClipRRect(
              borderRadius: AppRadius.borderSm,
              child: Image.network(
                imageUrl!,
                height: 36,
                width: 36,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) =>
                    Icon(Icons.inventory_2_outlined, color: colorScheme.tertiary),
              ),
            )
          else
            Icon(Icons.inventory_2_outlined, color: colorScheme.tertiary),
          const Spacer(),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
          Text(
            subtitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
          ),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({
    required this.icon,
    required this.title,
    required this.body,
  });

  final IconData icon;
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: colorScheme.tertiary,
          foregroundColor: colorScheme.onTertiary,
          child: Icon(icon, size: 20),
        ),
        const SizedBox(width: AppSpacing.md),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 4),
              Text(
                body,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
