// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'wishlist_item.freezed.dart';
part 'wishlist_item.g.dart';

@freezed
abstract class WishlistItem with _$WishlistItem {
  const factory WishlistItem({
    required String id,
    required String productId,
    String? packId,
    required String name,
    required String brand,
    required String packageLabel,
    required String imageUrl,
    required int priceKobo,
    required int retailPriceKobo,
    required int bulkAllocationClaimedPercent,
    required int priceKoboAtSave,
    required bool priceDropped,
    required int dropAmountKobo,
    required String savedAt,
  }) = _WishlistItem;

  factory WishlistItem.fromJson(Map<String, dynamic> json) =>
      _$WishlistItemFromJson(json);
}

@freezed
abstract class WishlistListResponse with _$WishlistListResponse {
  const factory WishlistListResponse({
    required List<WishlistItem> items,
    required int total,
    required int priceDropCount,
  }) = _WishlistListResponse;

  factory WishlistListResponse.fromJson(Map<String, dynamic> json) =>
      _$WishlistListResponseFromJson(json);
}

@freezed
abstract class WishlistStatus with _$WishlistStatus {
  const factory WishlistStatus({
    required bool saved,
  }) = _WishlistStatus;

  factory WishlistStatus.fromJson(Map<String, dynamic> json) =>
      _$WishlistStatusFromJson(json);
}
