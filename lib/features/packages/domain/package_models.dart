// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_models.freezed.dart';
part 'package_models.g.dart';

@freezed
abstract class DiscountTier with _$DiscountTier {
  const factory DiscountTier({
    required String id,
    required String label,
    required int minSpendKobo,
    required int discountPercent,
    required int sortOrder,
    required bool isActive,
  }) = _DiscountTier;

  factory DiscountTier.fromJson(Map<String, dynamic> json) =>
      _$DiscountTierFromJson(json);
}

@freezed
abstract class PackagePricing with _$PackagePricing {
  const factory PackagePricing({
    required int wholesaleSubtotalKobo,
    required int retailSubtotalKobo,
    required int discountPercent,
    required int savingsKobo,
    required int totalKobo,
    DiscountTier? appliedTier,
    DiscountTier? nextTier,
    @Default(1.0) double nextTierProgress,
    @Default(0) int nextTierRemainingKobo,
  }) = _PackagePricing;

  factory PackagePricing.fromJson(Map<String, dynamic> json) =>
      _$PackagePricingFromJson(json);
}

@freezed
abstract class PackageCreator with _$PackageCreator {
  const factory PackageCreator({
    required String id,
    required String firstName,
    required String lastName,
  }) = _PackageCreator;

  factory PackageCreator.fromJson(Map<String, dynamic> json) =>
      _$PackageCreatorFromJson(json);
}

@freezed
abstract class PackageItem with _$PackageItem {
  const factory PackageItem({
    required String id,
    required String productId,
    required int quantity,
    required int sortOrder,
    required String name,
    required String brand,
    required String packageLabel,
    required String imageUrl,
    required int priceKobo,
    required int retailPriceKobo,
    required int lineWholesaleKobo,
    required int lineRetailKobo,
  }) = _PackageItem;

  factory PackageItem.fromJson(Map<String, dynamic> json) =>
      _$PackageItemFromJson(json);
}

@freezed
abstract class PackageListItem with _$PackageListItem {
  const factory PackageListItem({
    required String id,
    required String kind,
    required String name,
    required String description,
    required String coverImageUrl,
    required bool isPopular,
    required String visibility,
    required String shareSlug,
    required String shareUrl,
    required String itemSummary,
    required int itemCount,
    required PackagePricing pricing,
    PackageCreator? createdBy,
  }) = _PackageListItem;

  factory PackageListItem.fromJson(Map<String, dynamic> json) =>
      _$PackageListItemFromJson(json);
}

@freezed
abstract class PantryPackage with _$PantryPackage {
  const factory PantryPackage({
    required String id,
    required String kind,
    required String name,
    required String description,
    required String coverImageUrl,
    required bool isPopular,
    required int sortOrder,
    required bool isActive,
    required String visibility,
    required String shareSlug,
    required String shareUrl,
    required String shareBannerUrl,
    String? createdByUserId,
    PackageCreator? createdBy,
    required String itemSummary,
    required int itemCount,
    required List<PackageItem> items,
    required PackagePricing pricing,
    required String createdAt,
    required String updatedAt,
  }) = _PantryPackage;

  factory PantryPackage.fromJson(Map<String, dynamic> json) =>
      _$PantryPackageFromJson(json);
}

@freezed
abstract class PackageSubscription with _$PackageSubscription {
  const factory PackageSubscription({
    required String id,
    required String packageId,
    required String packageName,
    required String status,
    required Map<String, dynamic> snapshot,
    required String createdAt,
  }) = _PackageSubscription;

  factory PackageSubscription.fromJson(Map<String, dynamic> json) =>
      _$PackageSubscriptionFromJson(json);
}

@freezed
abstract class MinePackagesResponse with _$MinePackagesResponse {
  const factory MinePackagesResponse({
    required List<PackageListItem> packages,
    required List<PackageSubscription> subscriptions,
  }) = _MinePackagesResponse;

  factory MinePackagesResponse.fromJson(Map<String, dynamic> json) =>
      _$MinePackagesResponseFromJson(json);
}

@freezed
abstract class PackageItemInput with _$PackageItemInput {
  const factory PackageItemInput({
    required String productId,
    required int quantity,
    int? sortOrder,
  }) = _PackageItemInput;

  factory PackageItemInput.fromJson(Map<String, dynamic> json) =>
      _$PackageItemInputFromJson(json);
}

@freezed
abstract class CreateCommunityPackageRequest
    with _$CreateCommunityPackageRequest {
  const factory CreateCommunityPackageRequest({
    required String name,
    @Default('') String description,
    required String coverImageUrl,
    required String visibility,
    required List<PackageItemInput> items,
  }) = _CreateCommunityPackageRequest;

  factory CreateCommunityPackageRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateCommunityPackageRequestFromJson(json);
}

@freezed
abstract class CreateAdminPackageRequest with _$CreateAdminPackageRequest {
  const factory CreateAdminPackageRequest({
    required String name,
    @Default('') String description,
    required String coverImageUrl,
    @Default(false) bool isPopular,
    @Default(0) int sortOrder,
    @Default(true) bool isActive,
    required List<PackageItemInput> items,
  }) = _CreateAdminPackageRequest;

  factory CreateAdminPackageRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateAdminPackageRequestFromJson(json);
}

@freezed
abstract class UpdateAdminPackageRequest with _$UpdateAdminPackageRequest {
  const factory UpdateAdminPackageRequest({
    String? name,
    String? description,
    String? coverImageUrl,
    bool? isPopular,
    int? sortOrder,
    bool? isActive,
    List<PackageItemInput>? items,
  }) = _UpdateAdminPackageRequest;

  factory UpdateAdminPackageRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateAdminPackageRequestFromJson(json);
}

@freezed
abstract class CreateDiscountTierRequest with _$CreateDiscountTierRequest {
  const factory CreateDiscountTierRequest({
    required String label,
    required int minSpendKobo,
    required int discountPercent,
    @Default(0) int sortOrder,
    @Default(true) bool isActive,
  }) = _CreateDiscountTierRequest;

  factory CreateDiscountTierRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateDiscountTierRequestFromJson(json);
}

@freezed
abstract class UpdateDiscountTierRequest with _$UpdateDiscountTierRequest {
  const factory UpdateDiscountTierRequest({
    String? label,
    int? minSpendKobo,
    int? discountPercent,
    int? sortOrder,
    bool? isActive,
  }) = _UpdateDiscountTierRequest;

  factory UpdateDiscountTierRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateDiscountTierRequestFromJson(json);
}

@freezed
abstract class ImageKitAuth with _$ImageKitAuth {
  const factory ImageKitAuth({
    required String token,
    required int expire,
    required String signature,
    required String publicKey,
    required String urlEndpoint,
  }) = _ImageKitAuth;

  factory ImageKitAuth.fromJson(Map<String, dynamic> json) =>
      _$ImageKitAuthFromJson(json);
}

@freezed
abstract class MediaUploadResult with _$MediaUploadResult {
  const factory MediaUploadResult({
    required String url,
    required String fileId,
    required String name,
    String? thumbnailUrl,
  }) = _MediaUploadResult;

  factory MediaUploadResult.fromJson(Map<String, dynamic> json) =>
      _$MediaUploadResultFromJson(json);
}
