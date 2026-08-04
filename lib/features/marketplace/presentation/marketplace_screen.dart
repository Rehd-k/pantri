import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_empty_state.dart';
import '../../auth/providers/auth_notifier.dart';
import '../../auth/providers/auth_state.dart';
import '../../packages/presentation/packages_screen.dart';
import '../providers/marketplace_providers.dart';
import 'marketplace_search_screen.dart';
import 'widgets/marketplace_widgets.dart';

class MarketplaceScreen extends ConsumerWidget {
  const MarketplaceScreen({super.key});

  void _openSearch(
    BuildContext context, {
    String? query,
    String? categoryId,
    String? categoryName,
  }) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => MarketplaceSearchScreen(
          initialQuery: query,
          categoryId: categoryId,
          categoryName: categoryName,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authNotifierProvider);
    final user = auth is AuthAuthenticated ? auth.user : null;
    final categoriesAsync = ref.watch(marketplaceCategoriesProvider);
    final bannersAsync = ref.watch(marketplaceBannersProvider);
    final colorScheme = Theme.of(context).colorScheme;

    final initials = user == null
        ? '?'
        : '${user.firstName.isNotEmpty ? user.firstName[0] : ''}'
            '${user.lastName.isNotEmpty ? user.lastName[0] : ''}'
            .toUpperCase();

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            ref.invalidate(marketplaceCategoriesProvider);
            ref.invalidate(marketplaceBannersProvider);
            await Future.wait([
              ref.read(marketplaceCategoriesProvider.future),
              ref.read(marketplaceBannersProvider.future),
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
                      PopupMenuButton<String>(
                        tooltip: 'Account',
                        onSelected: (value) {
                          if (value == 'logout') {
                            ref.read(authNotifierProvider.notifier).logout();
                          }
                        },
                        itemBuilder: (context) => const [
                          PopupMenuItem(
                            value: 'logout',
                            child: Text('Log out'),
                          ),
                        ],
                        child: CircleAvatar(
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
                      ),
                      const Spacer(),
                      IconButton(
                        tooltip: 'Notifications',
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Notifications coming soon'),
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.notifications_outlined,
                          color: colorScheme.tertiary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                  child: TextField(
                    textInputAction: TextInputAction.search,
                    onSubmitted: (value) {
                      final q = value.trim();
                      if (q.isEmpty) {
                        _openSearch(context);
                      } else {
                        _openSearch(context, query: q);
                      }
                    },
                    decoration: InputDecoration(
                      hintText: 'Search marketplace...',
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: IconButton(
                        tooltip: 'Search',
                        onPressed: () => _openSearch(context),
                        icon: Icon(
                          Icons.tune,
                          color: colorScheme.onSurfaceVariant,
                        ),
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
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    AppSpacing.lg,
                    AppSpacing.lg,
                    AppSpacing.lg,
                    AppSpacing.md,
                  ),
                  child: Material(
                    color: colorScheme.primaryContainer,
                    borderRadius: AppRadius.borderMd,
                    clipBehavior: Clip.antiAlias,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute<void>(
                            builder: (_) => const PackagesScreen(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.lg,
                          vertical: AppSpacing.md,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.inventory_2_outlined,
                              color: colorScheme.onPrimaryContainer,
                            ),
                            const SizedBox(width: AppSpacing.md),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Curated Packages',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall
                                        ?.copyWith(
                                          fontWeight: FontWeight.w800,
                                          color:
                                              colorScheme.onPrimaryContainer,
                                        ),
                                  ),
                                  Text(
                                    'Monthly bundles sized for your household',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          color:
                                              colorScheme.onPrimaryContainer,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: colorScheme.onPrimaryContainer,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: AppSpacing.md)),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                  child: Text(
                    'Shop by Category',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: AppSpacing.lg)),
              categoriesAsync.when(
                loading: () => const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.all(AppSpacing.xxl),
                    child: Center(child: CircularProgressIndicator()),
                  ),
                ),
                error: (error, _) => SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(AppSpacing.lg),
                    child: Text(
                      error is ApiException ? error.message : error.toString(),
                      style: TextStyle(color: colorScheme.error),
                    ),
                  ),
                ),
                data: (categories) {
                  if (categories.isEmpty) {
                    return const SliverToBoxAdapter(
                      child: AppEmptyState(
                        icon: Icons.storefront_outlined,
                        title: 'No categories yet',
                        message:
                            'An admin will add marketplace categories soon.',
                      ),
                    );
                  }
                  return SliverPadding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.lg,
                    ),
                    sliver: SliverGrid(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: AppSpacing.md,
                        crossAxisSpacing: AppSpacing.md,
                        childAspectRatio: 0.92,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final category = categories[index];
                          return MarketplaceCategoryCard(
                            category: category,
                            onTap: () => _openSearch(
                              context,
                              categoryId: category.id,
                              categoryName: category.name,
                              query: category.name,
                            ),
                          );
                        },
                        childCount: categories.length,
                      ),
                    ),
                  );
                },
              ),
              const SliverToBoxAdapter(child: SizedBox(height: AppSpacing.xl)),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    AppSpacing.lg,
                    0,
                    AppSpacing.lg,
                    AppSpacing.xxl,
                  ),
                  child: bannersAsync.when(
                    loading: () => const SizedBox.shrink(),
                    error: (error, _) => Text(
                      error is ApiException ? error.message : error.toString(),
                      style: TextStyle(color: colorScheme.error),
                    ),
                    data: (banners) {
                      if (banners.isEmpty) {
                        return const SizedBox.shrink();
                      }
                      final banner = banners.first;
                      return MarketplacePromoBanner(
                        banner: banner,
                        onCta: () => _openSearch(context, query: 'deals'),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
