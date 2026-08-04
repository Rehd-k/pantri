import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/utils/money_kobo.dart';
import '../../domain/employee_dashboard.dart';

class NextDeductionCard extends StatelessWidget {
  const NextDeductionCard({super.key, required this.deduction});

  final NextDeduction? deduction;

  String _formatDate(String isoDate) {
    final parsed = DateTime.tryParse(isoDate);
    if (parsed == null) return isoDate;
    return DateFormat('MMM d, y').format(parsed.toLocal());
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Material(
      color: colorScheme.tertiary,
      elevation: 1,
      shadowColor: colorScheme.shadow.withValues(alpha: 0.12),
      borderRadius: AppRadius.borderLg,
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xl),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'NEXT PAYROLL DEDUCTION',
                    style: textTheme.labelSmall?.copyWith(
                      letterSpacing: 0.8,
                      fontWeight: FontWeight.w600,
                      color: colorScheme.onTertiary.withValues(alpha: 0.75),
                    ),
                  ),
                ),
                Icon(
                  Icons.calendar_today_outlined,
                  size: 20,
                  color: colorScheme.onTertiary.withValues(alpha: 0.85),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.md),
            Text(
              deduction == null
                  ? '—'
                  : MoneyKobo.formatNaira(deduction!.amountKobo),
              style: textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.w800,
                color: colorScheme.onTertiary,
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.lg,
                vertical: AppSpacing.md,
              ),
              decoration: BoxDecoration(
                color: colorScheme.onTertiary.withValues(alpha: 0.12),
                borderRadius: AppRadius.borderMd,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.schedule_rounded,
                    size: 18,
                    color: colorScheme.onTertiary.withValues(alpha: 0.9),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Expanded(
                    child: Text(
                      deduction == null
                          ? 'No deduction scheduled'
                          : 'Scheduled for ${_formatDate(deduction!.scheduledFor)}',
                      style: textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onTertiary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
