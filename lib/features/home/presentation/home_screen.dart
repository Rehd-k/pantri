import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_empty_state.dart';
import '../../auth/providers/auth_notifier.dart';
import '../../auth/providers/auth_state.dart';
import '../../inventory/presentation/pantry_screen.dart';
import '../../inventory/presentation/restock_sheet.dart';
import '../../inventory/providers/inventory_providers.dart';
import '../../marketplace/presentation/widgets/banner_carousel.dart';
import '../../marketplace/providers/marketplace_providers.dart';
import '../../nutrition/presentation/progress_report_screen.dart';
import '../../nutrition/providers/nutrition_providers.dart';
import '../../packages/presentation/packages_screen.dart';
import '../../shell/employee_bottom_nav.dart';
import '../providers/home_providers.dart';
import 'widgets/current_meal_card.dart';
import 'widgets/home_header.dart';
import 'widgets/next_deduction_card.dart';
import 'widgets/nutrition_snapshot_card.dart';
import 'widgets/quick_actions_row.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key, this.onOpenPackages});

  /// When provided (marketplace nested navigator), push packages there.
  final VoidCallback? onOpenPackages;

  static String greetingFor(DateTime now) {
    final hour = now.hour;
    if (hour < 12) return 'Good morning';
    if (hour < 17) return 'Good afternoon';
    return 'Good evening';
  }

  void _openMealsTab(WidgetRef ref) {
    ref.read(employeeTabIndexProvider.notifier).setIndex(EmployeeTabs.meals);
  }

  void _openMarketplaceTab(WidgetRef ref) {
    ref
        .read(employeeTabIndexProvider.notifier)
        .setIndex(EmployeeTabs.marketplace);
  }

  void _openProfileTab(WidgetRef ref) {
    ref.read(employeeTabIndexProvider.notifier).setIndex(EmployeeTabs.profile);
  }

  void _openCreditTab(WidgetRef ref) {
    ref.read(employeeTabIndexProvider.notifier).setIndex(EmployeeTabs.credit);
  }

  Future<void> _refreshHome(WidgetRef ref) async {
    ref
      ..invalidate(employeeDashboardProvider)
      ..invalidate(restockAlertsProvider)
      ..invalidate(marketplaceBannersProvider)
      ..invalidate(healthProfileProvider)
      ..invalidate(mealPlansProvider)
      ..invalidate(nutritionProgressProvider('today'));

    await Future.wait([
      ref.read(employeeDashboardProvider.future),
      ref.read(restockAlertsProvider.future),
      ref.read(marketplaceBannersProvider.future),
      ref.read(healthProfileProvider.future),
      ref.read(mealPlansProvider.future),
      ref.read(nutritionProgressProvider('today').future),
    ]);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authNotifierProvider);
    final user = auth is AuthAuthenticated ? auth.user : null;
    final bannersAsync = ref.watch(marketplaceBannersProvider);
    final dashAsync = ref.watch(employeeDashboardProvider);
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final greeting = greetingFor(DateTime.now());
    final firstName = user?.firstName ?? '';

    return SafeArea(
      child: RefreshIndicator(
        onRefresh: () => _refreshHome(ref),
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.xl,
                AppSpacing.lg,
                AppSpacing.xl,
                AppSpacing.xxl,
              ),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  HomeHeader(
                    user: user,
                    onProfileTap: () => _openProfileTab(ref),
                    onNotificationsTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Notifications coming soon'),
                        ),
                      );
                    },
                    onCreditAccountTap: () => _openCreditTab(ref),
                  ),
                  const SizedBox(height: AppSpacing.xl),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '$greeting,',
                          style: textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: colorScheme.onSurface,
                          ),
                        ),
                        if (firstName.isNotEmpty) ...[
                          const TextSpan(text: '\n'),
                          TextSpan(
                            text: firstName,
                            style: textTheme.headlineMedium?.copyWith(
                              fontWeight: FontWeight.w800,
                              color: colorScheme.tertiary,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (_) => const PantryScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Ready to stock up your pantry?',
                      style: textTheme.bodyLarge?.copyWith(
                        color: colorScheme.onSurface.withValues(alpha: 0.55),
                      ),
                    ),
                  ),
                  if (user?.verificationStatus != null &&
                      user!.verificationStatus != 'APPROVED') ...[
                    const SizedBox(height: AppSpacing.md),
                    Container(
                      padding: const EdgeInsets.all(AppSpacing.lg),
                      decoration: BoxDecoration(
                        color: colorScheme.tertiaryContainer,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.verified_user_outlined,
                            color: colorScheme.onTertiaryContainer,
                          ),
                          const SizedBox(width: AppSpacing.md),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Verification in progress',
                                  style: textTheme.titleSmall?.copyWith(
                                    color: colorScheme.onTertiaryContainer,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                const SizedBox(height: AppSpacing.xs),
                                Text(
                                  'You can shop now. Orders will wait securely '
                                  'for employer verification before processing.',
                                  style: textTheme.bodyMedium?.copyWith(
                                    color: colorScheme.onTertiaryContainer,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                  const SizedBox(height: AppSpacing.xl),
                  Consumer(
                    builder: (context, ref, _) {
                      final alerts =
                          ref.watch(restockAlertsProvider).asData?.value ??
                          const [];
                      if (alerts.isEmpty) {
                        return const SizedBox.shrink();
                      }
                      return Padding(
                        padding: const EdgeInsets.only(bottom: AppSpacing.lg),
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                            side: BorderSide(color: colorScheme.tertiary),
                          ),
                          leading: const Icon(Icons.warning_amber_outlined),
                          title: Text(
                            '${alerts.length} pantry item${alerts.length == 1 ? '' : 's'} ran out',
                          ),
                          subtitle: const Text(
                            'Stock up from the marketplace',
                          ),
                          trailing: const Icon(Icons.chevron_right),
                          onTap: () => showRestockSheet(
                            context,
                            ref,
                            alerts: alerts,
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  dashAsync.when(
                    loading: () => const Padding(
                      padding: EdgeInsets.only(bottom: AppSpacing.lg),
                      child: Center(child: CircularProgressIndicator()),
                    ),
                    error: (e, _) => Padding(
                      padding: const EdgeInsets.only(bottom: AppSpacing.lg),
                      child: AppEmptyState(
                        icon: Icons.error_outline,
                        title: 'Could not load payroll info',
                        message: e is ApiException ? e.message : e.toString(),
                      ),
                    ),
                    data: (dash) => Padding(
                      padding: const EdgeInsets.only(bottom: AppSpacing.lg),
                      child: NextDeductionCard(deduction: dash.nextDeduction),
                    ),
                  ),
                  CurrentMealCard(onTap: () => _openMealsTab(ref)),
                  const SizedBox(height: AppSpacing.xxl),
                  bannersAsync.when(
                    loading: () => const SizedBox(
                      height: 148,
                      child: Center(child: CircularProgressIndicator()),
                    ),
                    error: (error, _) => Text(
                      error is ApiException ? error.message : error.toString(),
                      style: TextStyle(color: colorScheme.error),
                    ),
                    data: (banners) {
                      if (banners.isEmpty) {
                        return const SizedBox.shrink();
                      }
                      return BannerCarousel(
                        banners: banners,
                        onBannerCta: (_) => _openMarketplaceTab(ref),
                      );
                    },
                  ),
                  const SizedBox(height: AppSpacing.xxl),
                  NutritionSnapshotCard(
                    onTap: () => _openMealsTab(ref),
                    onOpenProgress: () {
                      Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (_) => const ProgressReportScreen(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: AppSpacing.xxl),
                  QuickActionsRow(
                    onBuyFood: () => _openMarketplaceTab(ref),
                    onEventPackage: () {
                      if (onOpenPackages != null) {
                        onOpenPackages!();
                        return;
                      }
                      _openMarketplaceTab(ref);
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        if (!context.mounted) return;
                        Navigator.of(context).push(
                          MaterialPageRoute<void>(
                            builder: (_) => const PackagesScreen(),
                          ),
                        );
                      });
                    },
                    onRecipes: () => _openMealsTab(ref),
                    onNutrition: () => _openMealsTab(ref),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
