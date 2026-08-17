import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/utils/money_kobo.dart';
import '../../../core/widgets/app_card.dart';
import '../../../core/widgets/app_empty_state.dart';
import '../domain/order_models.dart';
import '../providers/orders_providers.dart';

class OrderDetailScreen extends ConsumerWidget {
  const OrderDetailScreen({super.key, required this.orderId});

  final String orderId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final order = ref.watch(employeeOrderProvider(orderId));
    return Scaffold(
      appBar: AppBar(title: const Text('Order details')),
      body: order.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => AppEmptyState(
          icon: Icons.error_outline,
          title: 'Could not load order',
          message: error is ApiException ? error.message : error.toString(),
        ),
        data: (value) => RefreshIndicator(
          onRefresh: () async {
            ref.invalidate(employeeOrderProvider(orderId));
            await ref.read(employeeOrderProvider(orderId).future);
          },
          child: ListView(
            padding: const EdgeInsets.all(AppSpacing.xl),
            children: [
              AppCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      value.statusLabel,
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    Text('Order #${value.id}'),
                    if (value.fulfillmentStatus == 'VERIFICATION_HOLD') ...[
                      const SizedBox(height: AppSpacing.md),
                      const Text(
                        'Your order is saved and waiting for employer '
                        'verification. No credit has been reserved yet.',
                      ),
                    ],
                    const SizedBox(height: AppSpacing.lg),
                    _MoneyRow(label: 'Subtotal', value: value.subtotalKobo),
                    _MoneyRow(label: 'Delivery', value: value.deliveryFeeKobo),
                    _MoneyRow(label: 'Service', value: value.serviceFeeKobo),
                    const Divider(),
                    _MoneyRow(
                      label: 'Total',
                      value: value.totalKobo,
                      emphasized: true,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.xl),
              Text(
                'Items',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: AppSpacing.sm),
              for (final item in value.items)
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(item.name),
                  subtitle: Text(
                    '${item.brand} • ${item.packageLabel} • Qty ${item.quantity}',
                  ),
                  trailing: Text(MoneyKobo.formatNaira(item.lineTotalKobo)),
                ),
              const SizedBox(height: AppSpacing.xl),
              Text(
                'Status timeline',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: AppSpacing.md),
              if (value.statusHistory.isEmpty)
                const Text('No status updates yet.')
              else
                for (var i = 0; i < value.statusHistory.length; i++)
                  _TimelineEntry(
                    entry: value.statusHistory[i],
                    isLast: i == value.statusHistory.length - 1,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MoneyRow extends StatelessWidget {
  const _MoneyRow({
    required this.label,
    required this.value,
    this.emphasized = false,
  });

  final String label;
  final int value;
  final bool emphasized;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: AppSpacing.xs),
    child: Row(
      children: [
        Expanded(child: Text(label)),
        Text(
          MoneyKobo.formatNaira(value),
          style: emphasized
              ? const TextStyle(fontWeight: FontWeight.w800)
              : null,
        ),
      ],
    ),
  );
}

class _TimelineEntry extends StatelessWidget {
  const _TimelineEntry({required this.entry, required this.isLast});

  final OrderStatusHistory entry;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    final date = DateTime.tryParse(entry.createdAt)?.toLocal();
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Icon(
                Icons.check_circle,
                color: Theme.of(context).colorScheme.tertiary,
                size: 20,
              ),
              if (!isLast)
                Expanded(
                  child: Container(
                    width: 2,
                    color: Theme.of(context).colorScheme.outlineVariant,
                  ),
                ),
            ],
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.xl),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _label(entry.toStatus),
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                  if (date != null)
                    Text(DateFormat.yMMMd().add_jm().format(date)),
                  if (entry.note != null && entry.note!.isNotEmpty)
                    Text(entry.note!),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _label(String value) => value
      .split('_')
      .map(
        (word) => word.isEmpty
            ? word
            : '${word[0]}${word.substring(1).toLowerCase()}',
      )
      .join(' ');
}
