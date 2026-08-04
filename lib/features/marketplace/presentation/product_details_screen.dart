import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/utils/money_kobo.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_card.dart';
import '../../../core/widgets/app_text_field.dart';
import '../../cart/providers/cart_notifier.dart';
import '../../wishlist/data/wishlist_repository.dart';
import '../../wishlist/providers/wishlist_providers.dart';
import '../data/marketplace_repository.dart';
import '../domain/marketplace_product.dart';
import '../domain/perfect_for_item.dart';
import '../domain/product_review.dart';
import '../domain/rating_distribution.dart';
import '../providers/marketplace_providers.dart';
import 'compare_products_screen.dart';

class ProductDetailsScreen extends ConsumerStatefulWidget {
  const ProductDetailsScreen({super.key, required this.productId});

  final String productId;

  @override
  ConsumerState<ProductDetailsScreen> createState() =>
      _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends ConsumerState<ProductDetailsScreen> {
  int _quantity = 1;
  String _reviewSort = 'recent';
  int _reviewTake = 10;
  bool _adding = false;
  bool _wishlistBusy = false;

  Future<void> _toggleWishlist(bool currentlySaved) async {
    if (_wishlistBusy) return;
    setState(() => _wishlistBusy = true);
    final repo = ref.read(wishlistRepositoryProvider);
    try {
      if (currentlySaved) {
        await repo.remove(widget.productId);
      } else {
        await repo.add(widget.productId);
      }
      ref.invalidate(isProductSavedProvider(widget.productId));
      ref.invalidate(wishlistProvider);
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e is ApiException ? e.message : e.toString()),
        ),
      );
    } finally {
      if (mounted) setState(() => _wishlistBusy = false);
    }
  }

  Future<void> _openComparePicker(MarketplaceProduct product) async {
    final list = await ref.read(marketplaceRepositoryProvider).listActiveProducts(
          subcategoryId: product.subcategoryId,
          take: 40,
        );
    final others =
        list.items.where((p) => p.id != product.id).toList(growable: false);
    if (!mounted) return;
    if (others.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('No other products in this subcategory to compare'),
        ),
      );
      return;
    }
    final picked = await showModalBottomSheet<String>(
      context: context,
      builder: (context) {
        return SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(AppSpacing.lg),
                child: Text(
                  'Compare with',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
              ),
              for (final item in others)
                ListTile(
                  leading: ClipRRect(
                    borderRadius: AppRadius.borderSm,
                    child: Image.network(
                      item.imageUrl,
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) =>
                          const Icon(Icons.inventory_2_outlined),
                    ),
                  ),
                  title: Text('${item.name} ${item.packageLabel}'.trim()),
                  subtitle: Text(
                    '${item.brand} · ${MoneyKobo.formatNaira(item.priceKobo)}',
                  ),
                  onTap: () => Navigator.of(context).pop(item.id),
                ),
            ],
          ),
        );
      },
    );
    if (picked == null || !mounted) return;
    await Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => CompareProductsScreen(
          productIdA: product.id,
          productIdB: picked,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final productAsync = ref.watch(productDetailProvider(widget.productId));
    final savedAsync = ref.watch(isProductSavedProvider(widget.productId));
    final reviewsAsync = ref.watch(
      productReviewsProvider(
        ProductReviewsParams(
          productId: widget.productId,
          sort: _reviewSort,
          take: _reviewTake,
        ),
      ),
    );

    return Scaffold(
      body: productAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Text(
              error is ApiException ? error.message : error.toString(),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        data: (product) {
          final wishlisted = savedAsync.value ?? false;
          return Column(
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    pinned: true,
                    title: Text(
                      '${product.name} ${product.packageLabel}'.trim(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    actions: [
                      IconButton(
                        tooltip: 'Compare',
                        onPressed: () => _openComparePicker(product),
                        icon: const Icon(Icons.compare_arrows),
                      ),
                      IconButton(
                        tooltip: 'Share',
                        onPressed: () {
                          Share.share(
                            '${product.name} ${product.packageLabel} — '
                            '${MoneyKobo.formatNaira(product.priceKobo)} on Pantri',
                          );
                        },
                        icon: const Icon(Icons.ios_share_outlined),
                      ),
                      IconButton(
                        tooltip: 'Wishlist',
                        onPressed: _wishlistBusy
                            ? null
                            : () => _toggleWishlist(wishlisted),
                        icon: Icon(
                          wishlisted
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: wishlisted
                              ? Theme.of(context).colorScheme.error
                              : null,
                        ),
                      ),
                    ],
                  ),
                  SliverToBoxAdapter(
                    child: _ProductHero(product: product),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                        AppSpacing.lg,
                        AppSpacing.md,
                        AppSpacing.lg,
                        AppSpacing.xl,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            '${product.name} ${product.packageLabel}'.trim(),
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(fontWeight: FontWeight.w800),
                          ),
                          const SizedBox(height: AppSpacing.sm),
                          _RatingRow(
                            rating: product.averageRating,
                            reviewCount: product.reviewCount,
                          ),
                          const SizedBox(height: AppSpacing.lg),
                          _PriceCard(product: product),
                          const SizedBox(height: AppSpacing.md),
                          _MetaChips(product: product),
                          if (product.description.isNotEmpty) ...[
                            const SizedBox(height: AppSpacing.xl),
                            Text(
                              'About this item',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(height: AppSpacing.sm),
                            Text(
                              product.description,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                          if (product.nutritionFacts.isNotEmpty) ...[
                            const SizedBox(height: AppSpacing.xl),
                            _NutritionSection(facts: product.nutritionFacts),
                          ],
                          if (product.perfectFor.isNotEmpty) ...[
                            const SizedBox(height: AppSpacing.xl),
                            _PerfectForSection(items: product.perfectFor),
                          ],
                          const SizedBox(height: AppSpacing.xl),
                          Text(
                            'Product Reviews',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: AppSpacing.md),
                          reviewsAsync.when(
                            loading: () => const Padding(
                              padding: EdgeInsets.all(AppSpacing.xl),
                              child: Center(child: CircularProgressIndicator()),
                            ),
                            error: (error, _) => Text(
                              error is ApiException
                                  ? error.message
                                  : error.toString(),
                            ),
                            data: (reviews) => _ReviewsBlock(
                              productId: widget.productId,
                              reviews: reviews,
                              sort: _reviewSort,
                              onSortChanged: (value) {
                                setState(() {
                                  _reviewSort = value;
                                  _reviewTake = 10;
                                });
                              },
                              onLoadMore: reviews.items.length < reviews.total
                                  ? () => setState(() => _reviewTake += 10)
                                  : null,
                              onWriteReview: reviews.hasReviewed
                                  ? null
                                  : () => _openWriteReview(product),
                              onToggleHelpful: (review) async {
                                try {
                                  await ref
                                      .read(marketplaceRepositoryProvider)
                                      .toggleReviewHelpful(
                                        widget.productId,
                                        review.id,
                                      );
                                  ref.invalidate(
                                    productReviewsProvider(
                                      ProductReviewsParams(
                                        productId: widget.productId,
                                        sort: _reviewSort,
                                        take: _reviewTake,
                                      ),
                                    ),
                                  );
                                  ref.invalidate(
                                    productDetailProvider(widget.productId),
                                  );
                                } catch (e) {
                                  if (!context.mounted) return;
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        e is ApiException
                                            ? e.message
                                            : e.toString(),
                                      ),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                          const SizedBox(height: AppSpacing.xxl),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            _StickyCartBar(
              quantity: _quantity,
              loading: _adding,
              onMinus: _quantity > 1
                  ? () => setState(() => _quantity -= 1)
                  : null,
              onPlus: () => setState(() => _quantity += 1),
              onAdd: () => _addToCart(product),
            ),
          ],
        );
        },
      ),
    );
  }

  Future<void> _addToCart(MarketplaceProduct product) async {
    setState(() => _adding = true);
    try {
      await ref.read(cartNotifierProvider.notifier).addProduct(
            product.id,
            quantity: _quantity,
          );
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Added ${product.name} to cart')),
      );
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e is ApiException ? e.message : e.toString()),
        ),
      );
    } finally {
      if (mounted) setState(() => _adding = false);
    }
  }

  Future<void> _openWriteReview(MarketplaceProduct product) async {
    final result = await showModalBottomSheet<CreateReviewRequest>(
      context: context,
      isScrollControlled: true,
      builder: (context) => _WriteReviewSheet(productName: product.name),
    );
    if (result == null) return;
    try {
      await ref.read(marketplaceRepositoryProvider).createProductReview(
            widget.productId,
            result,
          );
      ref.invalidate(productDetailProvider(widget.productId));
      ref.invalidate(
        productReviewsProvider(
          ProductReviewsParams(
            productId: widget.productId,
            sort: _reviewSort,
            take: _reviewTake,
          ),
        ),
      );
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Review submitted')),
      );
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e is ApiException ? e.message : e.toString()),
        ),
      );
    }
  }
}

class _ProductHero extends StatelessWidget {
  const _ProductHero({required this.product});

  final MarketplaceProduct product;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.15,
      child: Image.network(
        product.imageUrl,
        fit: BoxFit.cover,
        width: double.infinity,
        errorBuilder: (_, __, ___) => ColoredBox(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          child: const Icon(Icons.inventory_2_outlined, size: 64),
        ),
      ),
    );
  }
}

class _RatingRow extends StatelessWidget {
  const _RatingRow({required this.rating, required this.reviewCount});

  final double rating;
  final int reviewCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(5, (i) {
          final filled = rating >= i + 1;
          final half = !filled && rating > i && rating < i + 1;
          return Icon(
            half
                ? Icons.star_half
                : filled
                    ? Icons.star
                    : Icons.star_border,
            size: 18,
            color: const Color(0xFFE6A800),
          );
        }),
        const SizedBox(width: AppSpacing.sm),
        Text(
          reviewCount == 0
              ? 'No reviews yet'
              : '${rating.toStringAsFixed(1)} ($reviewCount reviews)',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}

class _PriceCard extends StatelessWidget {
  const _PriceCard({required this.product});

  final MarketplaceProduct product;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final savings = product.retailPriceKobo - product.priceKobo;
    final claimed = product.bulkAllocationClaimedPercent.clamp(0, 100);

    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'WHOLESALE PRICE',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  letterSpacing: 0.8,
                  color: colorScheme.onSurfaceVariant,
                ),
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            MoneyKobo.formatNaira(product.priceKobo),
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: colorScheme.tertiary,
                  fontWeight: FontWeight.w800,
                ),
          ),
          const SizedBox(height: AppSpacing.sm),
          Wrap(
            spacing: AppSpacing.sm,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                'Retail: ${MoneyKobo.formatNaira(product.retailPriceKobo)}',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      decoration: TextDecoration.lineThrough,
                      color: colorScheme.onSurfaceVariant,
                    ),
              ),
              if (savings > 0)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.sm,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1B7A4E).withValues(alpha: 0.12),
                    borderRadius: AppRadius.borderSm,
                  ),
                  child: Text(
                    'Save ${MoneyKobo.formatNaira(savings)}',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: const Color(0xFF1B7A4E),
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          ClipRRect(
            borderRadius: AppRadius.borderSm,
            child: LinearProgressIndicator(
              value: claimed / 100,
              minHeight: 8,
              backgroundColor: colorScheme.surfaceContainerHighest,
              color: const Color(0xFF1B7A4E),
            ),
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            '$claimed% of bulk allocation claimed',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
          ),
        ],
      ),
    );
  }
}

class _MetaChips extends StatelessWidget {
  const _MetaChips({required this.product});

  final MarketplaceProduct product;

  @override
  Widget build(BuildContext context) {
    final chips = <Widget>[];
    if (product.origin.isNotEmpty) {
      chips.add(_chip(context, Icons.place_outlined, product.origin));
    }
    if (product.expiresAt != null) {
      final date = DateTime.tryParse(product.expiresAt!);
      if (date != null) {
        chips.add(
          _chip(
            context,
            Icons.calendar_today_outlined,
            'Exp: ${DateFormat('MMM yyyy').format(date)}',
          ),
        );
      }
    }
    if (product.isVerified) {
      chips.add(
        _chip(
          context,
          Icons.verified_outlined,
          'PantryPay Verified',
          accent: true,
        ),
      );
    }
    if (chips.isEmpty) return const SizedBox.shrink();
    return Wrap(spacing: AppSpacing.sm, runSpacing: AppSpacing.sm, children: chips);
  }

  Widget _chip(
    BuildContext context,
    IconData icon,
    String label, {
    bool accent = false,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest,
        borderRadius: AppRadius.borderLg,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 16,
            color: accent ? colorScheme.tertiary : colorScheme.onSurfaceVariant,
          ),
          const SizedBox(width: AppSpacing.xs),
          Text(
            label,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: accent ? colorScheme.tertiary : null,
                  fontWeight: accent ? FontWeight.w600 : null,
                ),
          ),
        ],
      ),
    );
  }
}

class _NutritionSection extends StatelessWidget {
  const _NutritionSection({required this.facts});

  final Map<String, String> facts;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Nutritional Facts',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(width: AppSpacing.xs),
            Icon(
              Icons.info_outline,
              size: 18,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.sm),
        AppCard(
          child: Column(
            children: [
              for (final entry in facts.entries) ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(entry.key),
                    Text(
                      entry.value,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                if (entry.key != facts.keys.last)
                  const Divider(height: AppSpacing.lg),
              ],
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.xs),
        Text(
          '*Per 100g serving',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
        ),
      ],
    );
  }
}

class _PerfectForSection extends StatelessWidget {
  const _PerfectForSection({required this.items});

  final List<PerfectForItem> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Perfect For',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(width: AppSpacing.xs),
            Icon(
              Icons.restaurant_outlined,
              size: 18,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.md),
        for (final item in items) ...[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipOval(
                child: Image.network(
                  item.imageUrl,
                  width: 48,
                  height: 48,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => CircleAvatar(
                    backgroundColor:
                        Theme.of(context).colorScheme.surfaceContainerHighest,
                    child: const Icon(Icons.restaurant, size: 20),
                  ),
                ),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontWeight: FontWeight.w700),
                    ),
                    Text(
                      item.description,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
        ],
      ],
    );
  }
}

class _ReviewsBlock extends StatelessWidget {
  const _ReviewsBlock({
    required this.productId,
    required this.reviews,
    required this.sort,
    required this.onSortChanged,
    required this.onLoadMore,
    required this.onWriteReview,
    required this.onToggleHelpful,
  });

  final String productId;
  final ProductReviewsResponse reviews;
  final String sort;
  final ValueChanged<String> onSortChanged;
  final VoidCallback? onLoadMore;
  final VoidCallback? onWriteReview;
  final Future<void> Function(ProductReview review) onToggleHelpful;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _ReviewSummaryCard(
          averageRating: reviews.averageRating,
          reviewCount: reviews.reviewCount,
          distribution: reviews.ratingDistribution,
        ),
        const SizedBox(height: AppSpacing.lg),
        Row(
          children: [
            Text(
              'Reviews',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),
            const Spacer(),
            DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: sort,
                items: const [
                  DropdownMenuItem(value: 'recent', child: Text('Most Recent')),
                  DropdownMenuItem(value: 'helpful', child: Text('Most Helpful')),
                ],
                onChanged: (value) {
                  if (value != null) onSortChanged(value);
                },
              ),
            ),
          ],
        ),
        if (onWriteReview != null) ...[
          const SizedBox(height: AppSpacing.sm),
          OutlinedButton.icon(
            onPressed: onWriteReview,
            icon: const Icon(Icons.rate_review_outlined),
            label: const Text('Write a review'),
          ),
        ],
        const SizedBox(height: AppSpacing.md),
        if (reviews.items.isEmpty)
          Text(
            'No reviews yet. Be the first to review this product.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
          )
        else
          for (final review in reviews.items) ...[
            _ReviewCard(review: review, onToggleHelpful: onToggleHelpful),
            const SizedBox(height: AppSpacing.md),
          ],
        if (onLoadMore != null)
          OutlinedButton(
            onPressed: onLoadMore,
            child: const Text('Load More Reviews'),
          ),
      ],
    );
  }
}

class _ReviewSummaryCard extends StatelessWidget {
  const _ReviewSummaryCard({
    required this.averageRating,
    required this.reviewCount,
    required this.distribution,
  });

  final double averageRating;
  final int reviewCount;
  final RatingDistribution distribution;

  @override
  Widget build(BuildContext context) {
    final total = reviewCount == 0 ? 1 : reviewCount;
    final bars = [
      (5, distribution.star5),
      (4, distribution.star4),
      (3, distribution.star3),
      (2, distribution.star2),
      (1, distribution.star1),
    ];

    return AppCard(
      child: Column(
        children: [
          Text(
            averageRating.toStringAsFixed(1),
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: AppSpacing.xs),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              5,
              (i) => Icon(
                i < averageRating.round() ? Icons.star : Icons.star_border,
                color: const Color(0xFFE6A800),
                size: 22,
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            'Based on $reviewCount reviews.',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
          ),
          const SizedBox(height: AppSpacing.lg),
          for (final (stars, count) in bars) ...[
            Row(
              children: [
                SizedBox(
                  width: 56,
                  child: Text('$stars Star'),
                ),
                Expanded(
                  child: ClipRRect(
                    borderRadius: AppRadius.borderSm,
                    child: LinearProgressIndicator(
                      value: count / total,
                      minHeight: 8,
                      backgroundColor:
                          Theme.of(context).colorScheme.surfaceContainerHighest,
                      color: const Color(0xFFE6A800),
                    ),
                  ),
                ),
                const SizedBox(width: AppSpacing.sm),
                SizedBox(
                  width: 36,
                  child: Text(
                    '${((count / total) * 100).round()}%',
                    textAlign: TextAlign.right,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.sm),
          ],
        ],
      ),
    );
  }
}

class _ReviewCard extends StatelessWidget {
  const _ReviewCard({
    required this.review,
    required this.onToggleHelpful,
  });

  final ProductReview review;
  final Future<void> Function(ProductReview review) onToggleHelpful;

  @override
  Widget build(BuildContext context) {
    final initials =
        '${review.author.firstName.isNotEmpty ? review.author.firstName[0] : ''}'
        '${review.author.lastName.isNotEmpty ? review.author.lastName[0] : ''}'
            .toUpperCase();
    final created = DateTime.tryParse(review.createdAt);
    final ago = created == null ? '' : _relativeTime(created);

    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor:
                    Theme.of(context).colorScheme.primaryContainer,
                child: Text(initials.isEmpty ? '?' : initials),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            '${review.author.firstName} ${review.author.lastName}'
                                .trim(),
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                        ),
                        const SizedBox(width: AppSpacing.xs),
                        Icon(
                          Icons.verified,
                          size: 16,
                          color: const Color(0xFF1B7A4E),
                        ),
                      ],
                    ),
                    if (ago.isNotEmpty)
                      Text(
                        ago,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurfaceVariant,
                            ),
                      ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.sm),
          Row(
            children: List.generate(
              5,
              (i) => Icon(
                i < review.rating ? Icons.star : Icons.star_border,
                size: 16,
                color: const Color(0xFFE6A800),
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(review.body),
          const SizedBox(height: AppSpacing.sm),
          TextButton.icon(
            onPressed: () => onToggleHelpful(review),
            icon: Icon(
              review.markedHelpfulByMe
                  ? Icons.thumb_up
                  : Icons.thumb_up_outlined,
              size: 16,
            ),
            label: Text('Helpful (${review.helpfulCount})'),
          ),
        ],
      ),
    );
  }

  String _relativeTime(DateTime date) {
    final diff = DateTime.now().difference(date.toLocal());
    if (diff.inDays >= 14) return '${diff.inDays ~/ 7} weeks ago';
    if (diff.inDays >= 7) return '1 week ago';
    if (diff.inDays >= 2) return '${diff.inDays} days ago';
    if (diff.inDays >= 1) return '1 day ago';
    if (diff.inHours >= 1) return '${diff.inHours} hours ago';
    return 'Just now';
  }
}

class _StickyCartBar extends StatelessWidget {
  const _StickyCartBar({
    required this.quantity,
    required this.loading,
    required this.onMinus,
    required this.onPlus,
    required this.onAdd,
  });

  final int quantity;
  final bool loading;
  final VoidCallback? onMinus;
  final VoidCallback onPlus;
  final VoidCallback onAdd;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Material(
      elevation: 8,
      color: colorScheme.surface,
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.lg,
            AppSpacing.md,
            AppSpacing.lg,
            AppSpacing.md,
          ),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: colorScheme.surfaceContainerHighest,
                  borderRadius: AppRadius.borderLg,
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: onMinus,
                      icon: const Icon(Icons.remove),
                    ),
                    Text(
                      '$quantity',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.w700),
                    ),
                    IconButton(
                      onPressed: onPlus,
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: FilledButton.icon(
                  onPressed: loading ? null : onAdd,
                  icon: loading
                      ? const SizedBox(
                          width: 18,
                          height: 18,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Icon(Icons.shopping_cart_outlined),
                  label: const Text('Add to Cart'),
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
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

class _WriteReviewSheet extends StatefulWidget {
  const _WriteReviewSheet({required this.productName});

  final String productName;

  @override
  State<_WriteReviewSheet> createState() => _WriteReviewSheetState();
}

class _WriteReviewSheetState extends State<_WriteReviewSheet> {
  final _bodyController = TextEditingController();
  int _rating = 5;

  @override
  void dispose() {
    _bodyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.viewInsetsOf(context).bottom;
    return Padding(
      padding: EdgeInsets.fromLTRB(
        AppSpacing.lg,
        AppSpacing.lg,
        AppSpacing.lg,
        AppSpacing.lg + bottom,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Review ${widget.productName}',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: AppSpacing.md),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              5,
              (i) => IconButton(
                onPressed: () => setState(() => _rating = i + 1),
                icon: Icon(
                  i < _rating ? Icons.star : Icons.star_border,
                  color: const Color(0xFFE6A800),
                ),
              ),
            ),
          ),
          AppTextField(
            controller: _bodyController,
            label: 'Your review',
            maxLines: 4,
          ),
          const SizedBox(height: AppSpacing.md),
          AppButton(
            label: 'Submit review',
            onPressed: () {
              final body = _bodyController.text.trim();
              if (body.isEmpty) return;
              Navigator.of(context).pop(
                CreateReviewRequest(rating: _rating, body: body),
              );
            },
          ),
        ],
      ),
    );
  }
}
