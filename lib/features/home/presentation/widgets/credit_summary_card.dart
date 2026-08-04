import 'package:flutter/material.dart';

import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/utils/money_kobo.dart';
import '../../domain/employee_dashboard.dart';

class CreditSummaryCard extends StatelessWidget {
  const CreditSummaryCard({super.key, required this.credit, this.onTap});

  final CreditSummary credit;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final limit = credit.creditLimitKobo;
    final progress =
        limit <= 0 ? 0.0 : (credit.outstandingKobo / limit).clamp(0.0, 1.0);

    return Material(
      color: colorScheme.surfaceContainerHighest,
      elevation: 1,
      shadowColor: colorScheme.shadow.withValues(alpha: 0.08),
      borderRadius: AppRadius.borderLg,
      child: InkWell(
        onTap: onTap,
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
                      'REVOLVING CREDIT',
                      style: textTheme.labelSmall?.copyWith(
                        letterSpacing: 0.8,
                        fontWeight: FontWeight.w600,
                        color: colorScheme.onSurface.withValues(alpha: 0.55),
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: colorScheme.surfaceContainer,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: colorScheme.outline.withValues(alpha: 0.35),
                      ),
                    ),
                    child: Icon(
                      Icons.credit_score_outlined,
                      size: 20,
                      color: colorScheme.onSurface.withValues(alpha: 0.45),
                    ),
                  ),
                  if (onTap != null) ...[
                    const SizedBox(width: AppSpacing.xs),
                    Icon(
                      Icons.chevron_right_rounded,
                      color: colorScheme.onSurface.withValues(alpha: 0.35),
                    ),
                  ],
                ],
              ),
              const SizedBox(height: AppSpacing.md),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: MoneyKobo.formatNaira(credit.outstandingKobo),
                      style: textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                        color: colorScheme.onSurface,
                      ),
                    ),
                    TextSpan(
                      text: ' / ${MoneyKobo.formatNaira(limit)}',
                      style: textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: colorScheme.onSurface.withValues(alpha: 0.45),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.xs),
              Text(
                'Outstanding balance',
                style: textTheme.labelSmall?.copyWith(
                  color: colorScheme.onSurface.withValues(alpha: 0.5),
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              ClipRRect(
                borderRadius: AppRadius.borderFull,
                child: LinearProgressIndicator(
                  value: progress,
                  minHeight: 8,
                  backgroundColor: colorScheme.outline.withValues(alpha: 0.25),
                  color: colorScheme.primary,
                ),
              ),
              const SizedBox(height: AppSpacing.md),
              Row(
                children: [
                  Text(
                    '${MoneyKobo.formatNaira(credit.availableKobo)} Available',
                    style: textTheme.labelMedium?.copyWith(
                      color: colorScheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  if (credit.reservedKobo > 0)
                    Text(
                      '${MoneyKobo.formatNaira(credit.reservedKobo)} Reserved',
                      style: textTheme.labelMedium?.copyWith(
                        color: colorScheme.onSurface.withValues(alpha: 0.55),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
