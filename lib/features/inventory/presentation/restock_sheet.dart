import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_button.dart';
import '../../cart/providers/cart_notifier.dart';
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
  if (!context.mounted || list.isEmpty) return;
  await showModalBottomSheet<void>(
    context: context,
    showDragHandle: true,
    builder: (context) => _RestockSheet(alerts: list),
  );
}

class _RestockSheet extends ConsumerWidget {
  const _RestockSheet({required this.alerts});

  final List<RestockAlert> alerts;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          AppSpacing.xl,
          AppSpacing.md,
          AppSpacing.xl,
          AppSpacing.xl,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              alerts.length == 1
                  ? '${alerts.first.productName} is finished. Stock up?'
                  : '${alerts.length} pantry items need a restock',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
            ),
            const SizedBox(height: AppSpacing.md),
            Text(
              'These ingredients ran out after cooking. Add a pack to your cart when you are ready.',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
            ),
            const SizedBox(height: AppSpacing.lg),
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
                subtitle: Text(alert.suggestedPackLabel ?? 'Marketplace pack'),
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
                          content: Text('${alert.productName} added to cart'),
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
        ),
      ),
    );
  }
}
