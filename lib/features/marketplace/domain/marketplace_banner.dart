// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'marketplace_banner.freezed.dart';
part 'marketplace_banner.g.dart';

/// Mirrors NestJS [BannerResponseDto].
@freezed
abstract class MarketplaceBanner with _$MarketplaceBanner {
  const factory MarketplaceBanner({
    required String id,
    required String badgeLabel,
    required String title,
    required String subtitle,
    required String ctaLabel,
    String? ctaRoute,
    required String gradientStart,
    required String gradientEnd,
    required int sortOrder,
    required bool isActive,
    required String createdAt,
    required String updatedAt,
  }) = _MarketplaceBanner;

  factory MarketplaceBanner.fromJson(Map<String, dynamic> json) =>
      _$MarketplaceBannerFromJson(json);
}
