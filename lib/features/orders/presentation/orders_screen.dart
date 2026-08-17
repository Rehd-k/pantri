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
import 'order_detail_screen.dart';

class OrdersScreen extends ConsumerWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orders = ref.watch(employeeOrdersProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('My orders')),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(employeeOrdersProvider);
          await ref.read(employeeOrdersProvider.future);
        },
        child: orders.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, _) => ListView(
            children: [
              AppEmptyState(
                icon: Icons.error_outline,
                title: 'Could not load orders',
                message: error is ApiException
                    ? error.message
                    : error.toString(),
              ),
            ],
          ),
          data: (items) => items.isEmpty
              ? ListView(
                  children: const [
                    AppEmptyState(
                      icon: Icons.receipt_long_outlined,
                      title: 'No orders yet',
                      message: 'Your Pantry orders will appear here.',
                    ),
                  ],
                )
              : ListView.separated(
                  padding: const EdgeInsets.all(AppSpacing.xl),
                  itemCount: items.length,
                  separatorBuilder: (_, __) =>
                      const SizedBox(height: AppSpacing.md),
                  itemBuilder: (context, index) =>
                      _OrderCard(order: items[index]),
                ),
        ),
      ),
    );
  }
}

class _OrderCard extends StatelessWidget {
  const _OrderCard({required this.order});

  final EmployeeOrder order;

  @override
  Widget build(BuildContext context) {
    final created = DateTime.tryParse(order.createdAt)?.toLocal();
    return AppCard(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder: (_) => OrderDetailScreen(orderId: order.id),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            child: Icon(
              order.fulfillmentStatus == 'FULFILLED'
                  ? Icons.check
                  : Icons.receipt_long_outlined,
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  order.statusLabel,
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w800),
                ),
                Text(
                  '${order.items.length} item${order.items.length == 1 ? '' : 's'}'
                  '${created == null ? '' : ' • ${DateFormat.yMMMd().format(created)}'}',
                ),
                Text(
                  '#${order.id.substring(0, order.id.length.clamp(0, 8))}',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                MoneyKobo.formatNaira(order.totalKobo),
                style: const TextStyle(fontWeight: FontWeight.w800),
              ),
              const Icon(Icons.chevron_right),
            ],
          ),
        ],
      ),
    );
  }
}
