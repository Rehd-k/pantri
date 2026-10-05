import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/utils/money_kobo.dart';
import '../../../nutrition/domain/household_sizing.dart';
import '../../../nutrition/providers/nutrition_providers.dart';
import '../../../packages/domain/package_models.dart';
import '../../../packages/presentation/package_details_screen.dart';
import '../../../packages/providers/packages_providers.dart';

class HouseholdPackageCard extends ConsumerWidget {
  const HouseholdPackageCard({super.key, this.onOpenPackages});

  final VoidCallback? onOpenPackages;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(healthProfileProvider).asData?.value;
    final packagesAsync = ref.watch(curatedPackagesProvider);
    if (profile == null) return const SizedBox.shrink();

    final slug = HouseholdSizing.packageShareSlug(profile.householdSize);
    final packages = packagesAsync.asData?.value;
    if (packages == null) {
      return packagesAsync.isLoading
          ? const SizedBox.shrink()
          : const SizedBox.shrink();
    }

    PackageListItem? match;
    for (final item in packages) {
      if (item.shareSlug == slug) {
        match = item;
        break;
      }
    }
    if (match == null) return const SizedBox.shrink();

    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final sizeLabel = profile.householdSize <= 1
        ? 'just you'
        : '${profile.householdSize} people';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sized for your household',
          style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: AppSpacing.sm),
        Text(
          'Picked for $sizeLabel from the marketplace baskets.',
          style: textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        Material(
          color: colorScheme.surface,
          borderRadius: AppRadius.borderLg,
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (_) => PackageDetailsScreen(packageId: match!.id),
                ),
              );
            },
            child: Ink(
              decoration: BoxDecoration(
                borderRadius: AppRadius.borderLg,
                border: Border.all(
                  color: colorScheme.outlineVariant.withValues(alpha: 0.3),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 108,
                    height: 108,
                    child: Image.network(
                      match.coverImageUrl,
                      fit: BoxFit.cover,
                      errorBuilder: (_, _, _) => ColoredBox(
                        color: colorScheme.surfaceContainerHighest,
                        child: Icon(
                          Icons.inventory_2_outlined,
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(AppSpacing.md),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            match.name,
                            style: textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            match.itemSummary,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: textTheme.bodySmall?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                          const SizedBox(height: AppSpacing.sm),
                          Text(
                            MoneyKobo.formatNaira(match.pricing.totalKobo),
                            style: textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w800,
                              color: colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: AppSpacing.sm),
                    child: Icon(
                      Icons.chevron_right,
                      color: colorScheme.onSurface.withValues(alpha: 0.5),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        if (onOpenPackages != null)
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: onOpenPackages,
              child: const Text('See all packages'),
            ),
          ),
      ],
    );
  }
}
