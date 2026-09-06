import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_button.dart';
import '../../cart/providers/cart_notifier.dart';
import '../../nutrition/data/nutrition_repository.dart';
import '../../nutrition/domain/nutrition_models.dart';
import '../providers/inventory_providers.dart';
import '../data/inventory_repository.dart';

Future<void> showRestockSheet(
  BuildContext context,
  WidgetRef ref, {
  List<RestockAlert>? alerts,
}) async {
  final list = alerts ??
      await ref.read(inventoryRepositoryProvider).listAlerts();
  ReplenishmentSuggestion? suggestion;
  try {
    suggestion =
        await ref.read(nutritionRepositoryProvider).getReplenishment();
  } catch (_) {
    suggestion = null;
  }
  if (!context.mounted) return;
  if (list.isEmpty &&
      (suggestion == null || suggestion.lines.isEmpty)) {
    return;
  }
  await showModalBottomSheet<void>(
    context: context,
    showDragHandle: true,
    isScrollControlled: true,
    builder: (context) => _RestockSheet(
      alerts: list,
      suggestion: suggestion,
    ),
  );
}

class _RestockSheet extends ConsumerWidget {
  const _RestockSheet({
    required this.alerts,
    this.suggestion,
  });

  final List<RestockAlert> alerts;
  final ReplenishmentSuggestion? suggestion;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          AppSpacing.xl,
          AppSpacing.md,
          AppSpacing.xl,
          AppSpacing.xl,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                alerts.isEmpty
                    ? 'Meal-plan replenishment'
                    : alerts.length == 1
                        ? '${alerts.first.productName} is finished. Stock up?'
                        : '${alerts.length} pantry items need a restock',
                style: textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
              if (suggestion != null && suggestion!.lines.isNotEmpty) ...[
                const SizedBox(height: AppSpacing.md),
                Text(
                  suggestion!.message,
                  style: textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                if (!suggestion!.meetsMinimum) ...[
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    'We will add more from your upcoming meal plan to reach the minimum.',
                    style: textTheme.bodySmall?.copyWith(
                      color: colorScheme.tertiary,
                    ),
                  ),
                ],
                const SizedBox(height: AppSpacing.md),
                for (final line in suggestion!.lines)
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      backgroundImage: line.productImageUrl.isNotEmpty
                          ? NetworkImage(line.productImageUrl)
                          : null,
                      child: line.productImageUrl.isEmpty
                          ? const Icon(Icons.inventory_2_outlined)
                          : null,
                    ),
                    title: Text(line.productName),
                    subtitle: Text(
                      [
                        line.suggestedPackLabel ?? 'Pack',
                        '×${line.suggestedPackQuantity}',
                        if (line.daysUntilEmpty != null)
                          'may run out in ~${line.daysUntilEmpty} days',
                      ].join(' · '),
                    ),
                  ),
                AppButton(
                  label: 'Add replenishment to cart',
                  onPressed: () async {
                    try {
                      final result = await ref
                          .read(nutritionRepositoryProvider)
                          .addReplenishmentToCart();
                      await ref.read(cartNotifierProvider.notifier).load();
                      if (!context.mounted) return;
                      Navigator.of(context).pop();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(result.message)),
                      );
                    } catch (e) {
                      if (!context.mounted) return;
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            e is ApiException ? e.message : e.toString(),
                          ),
                        ),
                      );
                    }
                  },
                ),
                const SizedBox(height: AppSpacing.lg),
              ],
              if (alerts.isNotEmpty) ...[
                Text(
                  'Quick restock alerts',
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: AppSpacing.md),
                for (final alert in alerts) ...[
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      backgroundImage: alert.productImageUrl.isNotEmpty
                          ? NetworkImage(alert.productImageUrl)
                          : null,
                      child: alert.productImageUrl.isEmpty
                          ? const Icon(Icons.inventory_2_outlined)
                          : null,
                    ),
                    title: Text(alert.productName),
                    subtitle:
                        Text(alert.suggestedPackLabel ?? 'Marketplace pack'),
                    trailing: AppButton(
                      label: 'Stock up',
                      size: AppButtonSize.compact,
                      onPressed: () async {
                        try {
                          await ref
                              .read(inventoryRepositoryProvider)
                              .stockUp(alert.id);
                          ref.invalidate(restockAlertsProvider);
                          ref.invalidate(householdStockProvider);
                          await ref.read(cartNotifierProvider.notifier).load();
                          if (!context.mounted) return;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content:
                                  Text('${alert.productName} added to cart'),
                            ),
                          );
                        } catch (e) {
                          if (!context.mounted) return;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                e is ApiException ? e.message : e.toString(),
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ],
              ],
            ],
          ),
        ),
      ),
    );
  }
}
