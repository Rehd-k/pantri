import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/theme/app_spacing.dart';
import '../../core/widgets/app_button.dart';
import '../../core/widgets/app_card.dart';
import '../../core/widgets/app_empty_state.dart';
import '../auth/providers/auth_notifier.dart';
import '../auth/providers/auth_state.dart';
import '../cart/presentation/cart_fab.dart';
import '../cart/presentation/cart_screen.dart';
import '../cart/providers/cart_notifier.dart';
import '../home/presentation/home_screen.dart';
import '../home/providers/home_providers.dart';
import '../marketplace/presentation/marketplace_screen.dart';
import '../nutrition/presentation/daily_meal_plan_screen.dart';
import '../packages/presentation/packages_screen.dart';
import '../wishlist/presentation/saved_items_screen.dart';
import 'employee_bottom_nav.dart';

const _employeeDestinations = [
  EmployeeNavDestination(
    label: 'Home',
    icon: Icons.home_outlined,
    selectedIcon: Icons.home,
  ),
  EmployeeNavDestination(
    label: 'Marketplace',
    icon: Icons.storefront_outlined,
    selectedIcon: Icons.storefront,
  ),
  EmployeeNavDestination(
    label: 'Meals',
    icon: Icons.restaurant_menu_outlined,
    selectedIcon: Icons.restaurant_menu,
  ),
  EmployeeNavDestination(
    label: 'Wallet',
    icon: Icons.account_balance_wallet_outlined,
    selectedIcon: Icons.account_balance_wallet,
  ),
  EmployeeNavDestination(
    label: 'Profile',
    icon: Icons.person_outline,
    selectedIcon: Icons.person,
  ),
];

/// Employee app shell: 5-tab bottom nav with Home as the default.
class EmployeeShell extends ConsumerStatefulWidget {
  const EmployeeShell({super.key, this.initialIndex = 0});

  /// Defaults to Home (index 0).
  final int initialIndex;

  @override
  ConsumerState<EmployeeShell> createState() => _EmployeeShellState();
}

class _EmployeeShellState extends ConsumerState<EmployeeShell> {
  final _marketplaceNavKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
    final clamped = widget.initialIndex.clamp(
      0,
      _employeeDestinations.length - 1,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(employeeTabIndexProvider.notifier).setIndex(clamped);
      ref.read(cartNotifierProvider.notifier).load();
    });
  }

  void _openCart() {
    _marketplaceNavKey.currentState?.push(
      MaterialPageRoute<void>(
        builder: (_) => const CartScreen(),
      ),
    );
  }

  void _openPackages() {
    ref.read(employeeTabIndexProvider.notifier).setIndex(1);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _marketplaceNavKey.currentState?.push(
        MaterialPageRoute<void>(
          builder: (_) => const PackagesScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final index = ref.watch(employeeTabIndexProvider).clamp(
          0,
          _employeeDestinations.length - 1,
        );

    return Scaffold(
      body: IndexedStack(
        index: index,
        children: [
          HomeScreen(onOpenPackages: _openPackages),
          Navigator(
            key: _marketplaceNavKey,
            onGenerateRoute: (settings) {
              return MaterialPageRoute<void>(
                builder: (_) => const MarketplaceScreen(),
                settings: settings,
              );
            },
          ),
          const MealsTab(),
          const _ComingSoonTab(
            icon: Icons.account_balance_wallet_outlined,
            title: 'Wallet',
            message: 'Payroll deductions and balances will appear here soon.',
          ),
          const _EmployeeProfileTab(),
        ],
      ),
      floatingActionButton: index == 1
          ? CartFab(onPressed: _openCart)
          : null,
      bottomNavigationBar: EmployeeBottomNav(
        selectedIndex: index,
        destinations: _employeeDestinations,
        onDestinationSelected: (i) {
          ref.read(employeeTabIndexProvider.notifier).setIndex(i);
        },
      ),
    );
  }
}

class _ComingSoonTab extends StatelessWidget {
  const _ComingSoonTab({
    required this.icon,
    required this.title,
    required this.message,
  });

  final IconData icon;
  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppEmptyState(
        icon: icon,
        title: title,
        message: message,
      ),
    );
  }
}

class _EmployeeProfileTab extends ConsumerWidget {
  const _EmployeeProfileTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authNotifierProvider);
    final user = auth is AuthAuthenticated ? auth.user : null;
    final colorScheme = Theme.of(context).colorScheme;

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(AppSpacing.xl),
        children: [
          Text(
            'Profile',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
          ),
          const SizedBox(height: AppSpacing.xl),
          if (user != null) ...[
            CircleAvatar(
              radius: 36,
              backgroundColor: colorScheme.tertiaryContainer,
              foregroundColor: colorScheme.onTertiaryContainer,
              child: Text(
                '${user.firstName.isNotEmpty ? user.firstName[0] : ''}'
                        '${user.lastName.isNotEmpty ? user.lastName[0] : ''}'
                    .toUpperCase(),
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            Text(
              '${user.firstName} ${user.lastName}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: AppSpacing.xs),
            Text(
              user.email,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
            ),
            if (user.companyName != null) ...[
              const SizedBox(height: AppSpacing.sm),
              Text(
                user.companyName!,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
            const SizedBox(height: AppSpacing.xl),
            AppCard(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (_) => const SavedItemsScreen(),
                  ),
                );
              },
              child: Row(
                children: [
                  Icon(
                    Icons.favorite_outline,
                    color: colorScheme.tertiary,
                  ),
                  const SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: Text(
                      'Saved Items',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  const Icon(Icons.chevron_right),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            AppCard(
              onTap: () {
                ref.read(employeeTabIndexProvider.notifier).setIndex(2);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.restaurant_menu_outlined,
                    color: colorScheme.secondary,
                  ),
                  const SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: Text(
                      'Meals & questionnaire',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  const Icon(Icons.chevron_right),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.xxl),
          ],
          AppButton(
            label: 'Log out',
            variant: AppButtonVariant.outlined,
            icon: Icons.logout,
            onPressed: () => ref.read(authNotifierProvider.notifier).logout(),
          ),
        ],
      ),
    );
  }
}
