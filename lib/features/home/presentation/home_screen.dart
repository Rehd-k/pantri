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
import '../../packages/presentation/packages_screen.dart';
import '../../shell/employee_bottom_nav.dart';
import '../domain/employee_dashboard.dart';
import '../providers/home_providers.dart';
import 'widgets/credit_summary_card.dart';
import 'widgets/home_header.dart';
import 'widgets/next_deduction_card.dart';
import 'widgets/quick_actions_row.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key, this.onOpenPackages, this.onOpenOrders});

  /// When provided (marketplace nested navigator), push packages there.
  final VoidCallback? onOpenPackages;
  final VoidCallback? onOpenOrders;

  static String greetingFor(DateTime now) {
    final hour = now.hour;
    if (hour < 12) return 'Good morning';
    if (hour < 17) return 'Good afternoon';
    return 'Good evening';
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authNotifierProvider);
    final user = auth is AuthAuthenticated ? auth.user : null;
    final asyncDash = ref.watch(employeeDashboardProvider);
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final greeting = greetingFor(DateTime.now());
    final firstName = user?.firstName ?? '';

    return SafeArea(
      child: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(employeeDashboardProvider);
          await ref.read(employeeDashboardProvider.future);
        },
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
                    onNotificationsTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Notifications coming soon'),
                        ),
                      );
                    },
                    onCreditAccountTap: () {
                      ref
                          .read(employeeTabIndexProvider.notifier)
                          .setIndex(EmployeeTabs.credit);
                    },
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
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: const Icon(Icons.receipt_long_outlined),
                    title: const Text('Track your orders'),
                    subtitle: const Text('View history and delivery updates'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: onOpenOrders,
                  ),
                  const SizedBox(height: AppSpacing.xl),
                  asyncDash.when(
                    loading: () => const Padding(
                      padding: EdgeInsets.symmetric(vertical: AppSpacing.xxxl),
                      child: Center(child: CircularProgressIndicator()),
                    ),
                    error: (e, _) => AppEmptyState(
                      icon: Icons.error_outline,
                      title: 'Could not load dashboard',
                      message: e is ApiException ? e.message : e.toString(),
                    ),
                    data: (EmployeeDashboard dash) => Column(
                      children: [
                        Consumer(
                          builder: (context, ref, _) {
                            final alerts =
                                ref
                                    .watch(restockAlertsProvider)
                                    .asData
                                    ?.value ??
                                const [];
                            if (alerts.isEmpty) {
                              return const SizedBox.shrink();
                            }
                            return Padding(
                              padding: const EdgeInsets.only(
                                bottom: AppSpacing.lg,
                              ),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  side: BorderSide(color: colorScheme.tertiary),
                                ),
                                leading: const Icon(
                                  Icons.warning_amber_outlined,
                                ),
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
                        CreditSummaryCard(
                          credit: dash.credit,
                          onTap: () {
                            ref
                                .read(employeeTabIndexProvider.notifier)
                                .setIndex(EmployeeTabs.credit);
                          },
                        ),
                        const SizedBox(height: AppSpacing.lg),
                        NextDeductionCard(deduction: dash.nextDeduction),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xxl),
                  QuickActionsRow(
                    onBuyFood: () {
                      ref
                          .read(employeeTabIndexProvider.notifier)
                          .setIndex(EmployeeTabs.marketplace);
                    },
                    onEventPackage: () {
                      if (onOpenPackages != null) {
                        onOpenPackages!();
                        return;
                      }
                      ref
                          .read(employeeTabIndexProvider.notifier)
                          .setIndex(EmployeeTabs.marketplace);
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        if (!context.mounted) return;
                        Navigator.of(context).push(
                          MaterialPageRoute<void>(
                            builder: (_) => const PackagesScreen(),
                          ),
                        );
                      });
                    },
                    onRecipes: () {
                      ref
                          .read(employeeTabIndexProvider.notifier)
                          .setIndex(EmployeeTabs.meals);
                    },
                    onNutrition: () {
                      ref
                          .read(employeeTabIndexProvider.notifier)
                          .setIndex(EmployeeTabs.meals);
                    },
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
