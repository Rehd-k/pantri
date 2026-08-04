import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/utils/money_kobo.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_empty_state.dart';
import '../../auth/providers/auth_notifier.dart';
import '../../auth/providers/auth_state.dart';
import '../domain/package_models.dart';
import '../providers/packages_providers.dart';
import 'create_package_screen.dart';
import 'package_details_screen.dart';

class PackagesScreen extends ConsumerStatefulWidget {
  const PackagesScreen({super.key});

  @override
  ConsumerState<PackagesScreen> createState() => _PackagesScreenState();
}

class _PackagesScreenState extends ConsumerState<PackagesScreen> {
  int _segment = 0; // 0 curated, 1 community

  Future<void> _openCreatePackage(BuildContext context) async {
    await Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => const CreatePackageScreen(),
      ),
    );
    ref.invalidate(communityPackagesProvider);
    ref.invalidate(minePackagesProvider);
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final canPop = Navigator.of(context).canPop();
    final auth = ref.watch(authNotifierProvider);
    final user = auth is AuthAuthenticated ? auth.user : null;
    final initials = user == null
        ? '?'
        : '${user.firstName.isNotEmpty ? user.firstName[0] : ''}'
            '${user.lastName.isNotEmpty ? user.lastName[0] : ''}'
            .toUpperCase();

    final asyncList = _segment == 0
        ? ref.watch(curatedPackagesProvider)
        : ref.watch(communityPackagesProvider);

    return Scaffold(
      backgroundColor: colorScheme.surfaceContainerLowest,
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openCreatePackage(context),
        backgroundColor: colorScheme.tertiary,
        foregroundColor: colorScheme.onTertiary,
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            ref.invalidate(curatedPackagesProvider);
            ref.invalidate(communityPackagesProvider);
            await Future.wait([
              ref.read(curatedPackagesProvider.future),
              ref.read(communityPackagesProvider.future),
            ]);
          },
          child: CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    AppSpacing.lg,
                    AppSpacing.md,
                    AppSpacing.lg,
                    AppSpacing.sm,
                  ),
                  child: Row(
                    children: [
                      if (canPop)
                        IconButton(
                          tooltip: 'Back',
                          onPressed: () => Navigator.of(context).maybePop(),
                          icon: Icon(
                            Icons.arrow_back,
                            color: colorScheme.tertiary,
                          ),
                        ),
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: colorScheme.tertiaryContainer,
                        foregroundColor: colorScheme.onTertiaryContainer,
                        child: Text(
                          initials,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        tooltip: 'Notifications',
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_outlined,
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _segment == 0
                            ? 'Curated Packages'
                            : 'Community Packages',
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.w800,
                            ),
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      Text(
                        _segment == 0
                            ? 'Wholesale savings, tailored for your household size. Select a base package to streamline your monthly pantry restock.'
                            : 'Packages created and shared by people like you.',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                            ),
                      ),
                      const SizedBox(height: AppSpacing.lg),
                      SegmentedButton<int>(
                        segments: const [
                          ButtonSegment(
                            value: 0,
                            label: Text('Curated'),
                            icon: Icon(Icons.auto_awesome_outlined, size: 16),
                          ),
                          ButtonSegment(
                            value: 1,
                            label: Text('Community'),
                            icon: Icon(Icons.groups_outlined, size: 16),
                          ),
                        ],
                        selected: {_segment},
                        onSelectionChanged: (s) =>
                            setState(() => _segment = s.first),
                      ),
                      const SizedBox(height: AppSpacing.md),
                      AppButton(
                        label: 'Create your own package',
                        variant: AppButtonVariant.outlined,
                        icon: Icons.add,
                        onPressed: () => _openCreatePackage(context),
                      ),
                      const SizedBox(height: AppSpacing.lg),
                    ],
                  ),
                ),
              ),
              asyncList.when(
                loading: () => const SliverFillRemaining(
                  child: Center(child: CircularProgressIndicator()),
                ),
                error: (e, _) => SliverFillRemaining(
                  child: AppEmptyState(
                    icon: Icons.error_outline,
                    title: 'Could not load packages',
                    message: e is ApiException ? e.message : e.toString(),
                  ),
                ),
                data: (packages) {
                  if (packages.isEmpty) {
                    return SliverFillRemaining(
                      child: AppEmptyState(
                        icon: Icons.inventory_2_outlined,
                        title: _segment == 0
                            ? 'No curated packages yet'
                            : 'No public community packages',
                        message: _segment == 0
                            ? 'Check back soon or ask an admin to publish packages.'
                            : 'Use the create package button to share your own package.',
                      ),
                    );
                  }
                  return SliverPadding(
                    padding: const EdgeInsets.fromLTRB(
                      AppSpacing.lg,
                      0,
                      AppSpacing.lg,
                      100,
                    ),
                    sliver: SliverList.separated(
                      itemCount: packages.length,
                      separatorBuilder: (_, __) =>
                          const SizedBox(height: AppSpacing.lg),
                      itemBuilder: (context, index) {
                        return _PackageCard(
                          package: packages[index],
                          onView: () {
                            Navigator.of(context).push(
                              MaterialPageRoute<void>(
                                builder: (_) => PackageDetailsScreen(
                                  packageId: packages[index].id,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PackageCard extends StatelessWidget {
  const _PackageCard({
    required this.package,
    required this.onView,
  });

  final PackageListItem package;
  final VoidCallback onView;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Material(
      color: colorScheme.surface,
      elevation: 1,
      shadowColor: colorScheme.shadow.withValues(alpha: 0.08),
      borderRadius: AppRadius.borderLg,
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              package.coverImageUrl,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => ColoredBox(
                color: colorScheme.surfaceContainerHighest,
                child: Icon(
                  Icons.image_not_supported_outlined,
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        package.name,
                        style: textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    if (package.isPopular)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.sm,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF8B6914),
                          borderRadius: AppRadius.borderSm,
                        ),
                        child: Text(
                          'POPULAR',
                          style: textTheme.labelSmall?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.4,
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  package.itemSummary.isEmpty
                      ? package.description
                      : package.itemSummary,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: AppSpacing.lg),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Monthly deduction',
                            style: textTheme.labelSmall?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                          Text(
                            MoneyKobo.formatNaira(package.pricing.totalKobo),
                            style: textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w800,
                              color: colorScheme.tertiary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (package.pricing.savingsKobo > 0)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.md,
                          vertical: AppSpacing.sm,
                        ),
                        decoration: BoxDecoration(
                          color: colorScheme.primary.withValues(alpha: 0.12),
                          borderRadius: BorderRadius.circular(999),
                        ),
                        child: Text(
                          'Save ${MoneyKobo.formatNaira(package.pricing.savingsKobo)}',
                          style: textTheme.labelMedium?.copyWith(
                            color: colorScheme.primary,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: AppSpacing.lg),
                AppButton(
                  label: 'View Details',
                  onPressed: onView,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
