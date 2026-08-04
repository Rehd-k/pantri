import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/router/app_router.dart';
import '../../core/theme/app_spacing.dart';
import '../auth/providers/auth_notifier.dart';

/// Shared admin chrome with a persistent side drawer for CMS navigation.
class AdminScaffold extends ConsumerWidget {
  const AdminScaffold({
    super.key,
    required this.title,
    required this.body,
    this.actions,
    this.floatingActionButton,
  });

  final String title;
  final Widget body;
  final List<Widget>? actions;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          ...?actions,
          IconButton(
            tooltip: 'Log out',
            onPressed: () => ref.read(authNotifierProvider.notifier).logout(),
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      drawer: const AdminDrawer(),
      floatingActionButton: floatingActionButton,
      body: body,
    );
  }
}

class AdminDrawer extends StatelessWidget {
  const AdminDrawer({super.key});

  void _go(BuildContext context, PageRouteInfo route) {
    Navigator.of(context).pop();
    context.router.navigate(route);
  }

  @override
  Widget build(BuildContext context) {
    final current = context.router.current.name;
    final colorScheme = Theme.of(context).colorScheme;

    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: colorScheme.primaryContainer),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Pantri Admin',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: colorScheme.onPrimaryContainer,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
            ),
            _item(
              context,
              icon: Icons.dashboard_outlined,
              label: 'Home',
              selected: current == AdminHomeRoute.name,
              onTap: () => _go(context, const AdminHomeRoute()),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(
                AppSpacing.lg,
                AppSpacing.md,
                AppSpacing.lg,
                AppSpacing.xs,
              ),
              child: Text('Marketplace CMS'),
            ),
            _item(
              context,
              icon: Icons.category_outlined,
              label: 'Categories',
              selected: current == AdminCategoriesRoute.name ||
                  current == AdminCategoryFormRoute.name,
              onTap: () => _go(context, const AdminCategoriesRoute()),
            ),
            _item(
              context,
              icon: Icons.account_tree_outlined,
              label: 'Subcategories',
              selected: current == AdminSubcategoriesRoute.name ||
                  current == AdminSubcategoryFormRoute.name,
              onTap: () => _go(context, AdminSubcategoriesRoute()),
            ),
            _item(
              context,
              icon: Icons.inventory_2_outlined,
              label: 'Products',
              selected: current == AdminProductsRoute.name ||
                  current == AdminProductFormRoute.name,
              onTap: () => _go(context, const AdminProductsRoute()),
            ),
            _item(
              context,
              icon: Icons.campaign_outlined,
              label: 'Promo banners',
              selected: current == AdminBannersRoute.name ||
                  current == AdminBannerFormRoute.name,
              onTap: () => _go(context, const AdminBannersRoute()),
            ),
            _item(
              context,
              icon: Icons.card_giftcard_outlined,
              label: 'Packages',
              selected: current == AdminPackagesRoute.name ||
                  current == AdminPackageFormRoute.name,
              onTap: () => _go(context, const AdminPackagesRoute()),
            ),
            _item(
              context,
              icon: Icons.percent_outlined,
              label: 'Discount tiers',
              selected: current == AdminDiscountTiersRoute.name,
              onTap: () => _go(context, const AdminDiscountTiersRoute()),
            ),
            _item(
              context,
              icon: Icons.local_shipping_outlined,
              label: 'Delivery settings',
              selected: current == AdminDeliverySettingsRoute.name,
              onTap: () => _go(context, const AdminDeliverySettingsRoute()),
            ),
            _item(
              context,
              icon: Icons.business_outlined,
              label: 'Companies',
              selected: current == AdminCompaniesRoute.name ||
                  current == AdminPickupPointsRoute.name,
              onTap: () => _go(context, const AdminCompaniesRoute()),
            ),
            const Divider(),
            _item(
              context,
              icon: Icons.how_to_reg_outlined,
              label: 'Pending approvals',
              selected: current == AdminHomeRoute.name,
              onTap: () => _go(context, const AdminHomeRoute()),
            ),
          ],
        ),
      ),
    );
  }

  Widget _item(
    BuildContext context, {
    required IconData icon,
    required String label,
    required bool selected,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      selected: selected,
      onTap: onTap,
    );
  }
}
