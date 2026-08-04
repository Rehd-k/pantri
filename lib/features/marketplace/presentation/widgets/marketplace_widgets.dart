import 'package:flutter/material.dart';

import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/utils/money_kobo.dart';
import '../../domain/marketplace_banner.dart';
import '../../domain/marketplace_category.dart';
import '../../domain/marketplace_product.dart';

Color parseHexColor(String hex, {Color fallback = const Color(0xFFE0E0E0)}) {
  final cleaned = hex.trim().replaceFirst('#', '');
  if (cleaned.length != 6) return fallback;
  final value = int.tryParse(cleaned, radix: 16);
  if (value == null) return fallback;
  return Color(0xFF000000 | value);
}

class MarketplaceCategoryCard extends StatelessWidget {
  const MarketplaceCategoryCard({
    super.key,
    required this.category,
    this.onTap,
  });

  final MarketplaceCategory category;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final accent = parseHexColor(
      category.accentColor,
      fallback: colorScheme.tertiaryContainer,
    );

    return Material(
      color: colorScheme.surfaceContainerHighest,
      elevation: 1,
      shadowColor: colorScheme.shadow.withValues(alpha: 0.12),
      borderRadius: AppRadius.borderLg,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadius.borderLg,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.md,
            vertical: AppSpacing.lg,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 88,
                height: 88,
                decoration: BoxDecoration(
                  color: accent,
                  shape: BoxShape.circle,
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.network(
                  category.imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => Icon(
                    Icons.category_outlined,
                    size: 36,
                    color: colorScheme.onTertiaryContainer,
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.md),
              Text(
                category.name,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MarketplacePromoBanner extends StatelessWidget {
  const MarketplacePromoBanner({
    super.key,
    required this.banner,
    this.onCta,
  });

  final MarketplaceBanner banner;
  final VoidCallback? onCta;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final start = parseHexColor(
      banner.gradientStart,
      fallback: colorScheme.tertiary,
    );
    final end = parseHexColor(
      banner.gradientEnd,
      fallback: colorScheme.primary,
    );

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: AppRadius.borderLg,
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [start, end],
        ),
      ),
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.sm,
                    vertical: AppSpacing.xs,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.2),
                    borderRadius: AppRadius.borderSm,
                  ),
                  child: Text(
                    banner.badgeLabel,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: colorScheme.onTertiary,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  banner.title,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: colorScheme.onTertiary,
                        fontWeight: FontWeight.w700,
                      ),
                ),
                const SizedBox(height: AppSpacing.xs),
                Text(
                  banner.subtitle,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: colorScheme.onTertiary.withValues(alpha: 0.9),
                      ),
                ),
              ],
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          FilledButton(
            onPressed: onCta,
            style: FilledButton.styleFrom(
              backgroundColor: colorScheme.surface,
              foregroundColor: colorScheme.tertiary,
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.lg,
                vertical: AppSpacing.md,
              ),
              shape: const StadiumBorder(),
            ),
            child: Text(banner.ctaLabel),
          ),
        ],
      ),
    );
  }
}

class MarketplaceProductCard extends StatelessWidget {
  const MarketplaceProductCard({
    super.key,
    required this.product,
    this.onAdd,
    this.onTap,
  });

  final MarketplaceProduct product;
  final VoidCallback? onAdd;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final title =
        '${product.name} ${product.packageLabel}'.trim();

    return Material(
      color: colorScheme.surfaceContainerHighest,
      elevation: 1,
      shadowColor: colorScheme.shadow.withValues(alpha: 0.1),
      borderRadius: AppRadius.borderLg,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadius.borderLg,
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: AppRadius.borderMd,
                        child: Image.network(
                          product.imageUrl,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => ColoredBox(
                            color: colorScheme.surfaceContainerHighest,
                            child: Icon(
                              Icons.inventory_2_outlined,
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ),
                      ),
                    ),
                    if (product.discountPercent > 0)
                      Positioned(
                        top: AppSpacing.xs,
                        right: AppSpacing.xs,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppSpacing.sm,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: colorScheme.primary,
                            borderRadius: AppRadius.borderSm,
                          ),
                          child: Text(
                            'Save ${product.discountPercent}%',
                            style: textTheme.labelSmall?.copyWith(
                              color: colorScheme.onPrimary,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
              ),
              Text(
                product.brand,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: AppSpacing.xs),
              Text(
                MoneyKobo.formatNaira(product.priceKobo),
                style: textTheme.titleMedium?.copyWith(
                  color: colorScheme.tertiary,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                'Retail: ${MoneyKobo.formatNaira(product.retailPriceKobo)}',
                style: textTheme.labelSmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              SizedBox(
                width: double.infinity,
                child: FilledButton.tonal(
                  onPressed: onAdd,
                  style: FilledButton.styleFrom(
                    backgroundColor: colorScheme.surfaceContainerHighest,
                    foregroundColor: colorScheme.onSurface,
                    padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.shopping_cart_outlined, size: 18),
                      SizedBox(width: AppSpacing.xs),
                      Text('Add'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
