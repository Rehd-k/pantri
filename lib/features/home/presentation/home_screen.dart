import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/router/app_router.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_empty_state.dart';
import '../../auth/providers/auth_notifier.dart';
import '../../auth/providers/auth_state.dart';
import '../../packages/presentation/packages_screen.dart';
import '../domain/employee_dashboard.dart';
import '../providers/home_providers.dart';
import 'widgets/credit_summary_card.dart';
import 'widgets/home_header.dart';
import 'widgets/next_deduction_card.dart';
import 'widgets/quick_actions_row.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({
    super.key,
    this.onOpenPackages,
  });

  /// When provided (marketplace nested navigator), push packages there.
  final VoidCallback? onOpenPackages;

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
                      context.router.push(const CreditAccountRoute());
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
                  Text(
                    'Ready to stock up your pantry?',
                    style: textTheme.bodyLarge?.copyWith(
                      color: colorScheme.onSurface.withValues(alpha: 0.55),
                    ),
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
                        CreditSummaryCard(
                          credit: dash.credit,
                          onTap: () {
                            context.router.push(const CreditAccountRoute());
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
                          .setIndex(1);
                    },
                    onEventPackage: () {
                      if (onOpenPackages != null) {
                        onOpenPackages!();
                        return;
                      }
                      ref
                          .read(employeeTabIndexProvider.notifier)
                          .setIndex(1);
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
                          .setIndex(2);
                    },
                    onNutrition: () {
                      ref
                          .read(employeeTabIndexProvider.notifier)
                          .setIndex(2);
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
