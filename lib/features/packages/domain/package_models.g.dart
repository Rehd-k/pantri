// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DiscountTier _$DiscountTierFromJson(Map<String, dynamic> json) =>
    _DiscountTier(
      id: json['id'] as String,
      label: json['label'] as String,
      minSpendKobo: (json['minSpendKobo'] as num).toInt(),
      discountPercent: (json['discountPercent'] as num).toInt(),
      sortOrder: (json['sortOrder'] as num).toInt(),
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$DiscountTierToJson(_DiscountTier instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'minSpendKobo': instance.minSpendKobo,
      'discountPercent': instance.discountPercent,
      'sortOrder': instance.sortOrder,
      'isActive': instance.isActive,
    };

_PackagePricing _$PackagePricingFromJson(Map<String, dynamic> json) =>
    _PackagePricing(
      wholesaleSubtotalKobo: (json['wholesaleSubtotalKobo'] as num).toInt(),
      retailSubtotalKobo: (json['retailSubtotalKobo'] as num).toInt(),
      discountPercent: (json['discountPercent'] as num).toInt(),
      savingsKobo: (json['savingsKobo'] as num).toInt(),
      totalKobo: (json['totalKobo'] as num).toInt(),
      appliedTier: json['appliedTier'] == null
          ? null
          : DiscountTier.fromJson(json['appliedTier'] as Map<String, dynamic>),
      nextTier: json['nextTier'] == null
          ? null
          : DiscountTier.fromJson(json['nextTier'] as Map<String, dynamic>),
      nextTierProgress: (json['nextTierProgress'] as num?)?.toDouble() ?? 1.0,
      nextTierRemainingKobo:
          (json['nextTierRemainingKobo'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$PackagePricingToJson(_PackagePricing instance) =>
    <String, dynamic>{
      'wholesaleSubtotalKobo': instance.wholesaleSubtotalKobo,
      'retailSubtotalKobo': instance.retailSubtotalKobo,
      'discountPercent': instance.discountPercent,
      'savingsKobo': instance.savingsKobo,
      'totalKobo': instance.totalKobo,
      'appliedTier': instance.appliedTier,
      'nextTier': instance.nextTier,
      'nextTierProgress': instance.nextTierProgress,
      'nextTierRemainingKobo': instance.nextTierRemainingKobo,
    };

_PackageCreator _$PackageCreatorFromJson(Map<String, dynamic> json) =>
    _PackageCreator(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$PackageCreatorToJson(_PackageCreator instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };

_PackageItem _$PackageItemFromJson(Map<String, dynamic> json) => _PackageItem(
  id: json['id'] as String,
  packId: json['packId'] as String,
  productId: json['productId'] as String,
  quantity: (json['quantity'] as num).toInt(),
  sortOrder: (json['sortOrder'] as num).toInt(),
  name: json['name'] as String,
  brand: json['brand'] as String,
  packageLabel: json['packageLabel'] as String,
  imageUrl: json['imageUrl'] as String,
  priceKobo: (json['priceKobo'] as num).toInt(),
  retailPriceKobo: (json['retailPriceKobo'] as num).toInt(),
  lineWholesaleKobo: (json['lineWholesaleKobo'] as num).toInt(),
  lineRetailKobo: (json['lineRetailKobo'] as num).toInt(),
);

Map<String, dynamic> _$PackageItemToJson(_PackageItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'packId': instance.packId,
      'productId': instance.productId,
      'quantity': instance.quantity,
      'sortOrder': instance.sortOrder,
      'name': instance.name,
      'brand': instance.brand,
      'packageLabel': instance.packageLabel,
      'imageUrl': instance.imageUrl,
      'priceKobo': instance.priceKobo,
      'retailPriceKobo': instance.retailPriceKobo,
      'lineWholesaleKobo': instance.lineWholesaleKobo,
      'lineRetailKobo': instance.lineRetailKobo,
    };

_PackageListItem _$PackageListItemFromJson(Map<String, dynamic> json) =>
    _PackageListItem(
      id: json['id'] as String,
      kind: json['kind'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      coverImageUrl: json['coverImageUrl'] as String,
      isPopular: json['isPopular'] as bool,
      visibility: json['visibility'] as String,
      shareSlug: json['shareSlug'] as String,
      shareUrl: json['shareUrl'] as String,
      itemSummary: json['itemSummary'] as String,
      itemCount: (json['itemCount'] as num).toInt(),
      pricing: PackagePricing.fromJson(json['pricing'] as Map<String, dynamic>),
      createdBy: json['createdBy'] == null
          ? null
          : PackageCreator.fromJson(json['createdBy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PackageListItemToJson(_PackageListItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kind': instance.kind,
      'name': instance.name,
      'description': instance.description,
      'coverImageUrl': instance.coverImageUrl,
      'isPopular': instance.isPopular,
      'visibility': instance.visibility,
      'shareSlug': instance.shareSlug,
      'shareUrl': instance.shareUrl,
      'itemSummary': instance.itemSummary,
      'itemCount': instance.itemCount,
      'pricing': instance.pricing,
      'createdBy': instance.createdBy,
    };

_PantryPackage _$PantryPackageFromJson(Map<String, dynamic> json) =>
    _PantryPackage(
      id: json['id'] as String,
      kind: json['kind'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      coverImageUrl: json['coverImageUrl'] as String,
      isPopular: json['isPopular'] as bool,
      sortOrder: (json['sortOrder'] as num).toInt(),
      isActive: json['isActive'] as bool,
      visibility: json['visibility'] as String,
      shareSlug: json['shareSlug'] as String,
      shareUrl: json['shareUrl'] as String,
      shareBannerUrl: json['shareBannerUrl'] as String,
      createdByUserId: json['createdByUserId'] as String?,
      createdBy: json['createdBy'] == null
          ? null
          : PackageCreator.fromJson(json['createdBy'] as Map<String, dynamic>),
      itemSummary: json['itemSummary'] as String,
      itemCount: (json['itemCount'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => PackageItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      pricing: PackagePricing.fromJson(json['pricing'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$PantryPackageToJson(_PantryPackage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kind': instance.kind,
      'name': instance.name,
      'description': instance.description,
      'coverImageUrl': instance.coverImageUrl,
      'isPopular': instance.isPopular,
      'sortOrder': instance.sortOrder,
      'isActive': instance.isActive,
      'visibility': instance.visibility,
      'shareSlug': instance.shareSlug,
      'shareUrl': instance.shareUrl,
      'shareBannerUrl': instance.shareBannerUrl,
      'createdByUserId': instance.createdByUserId,
      'createdBy': instance.createdBy,
      'itemSummary': instance.itemSummary,
      'itemCount': instance.itemCount,
      'items': instance.items,
      'pricing': instance.pricing,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_PackageSubscription _$PackageSubscriptionFromJson(Map<String, dynamic> json) =>
    _PackageSubscription(
      id: json['id'] as String,
      packageId: json['packageId'] as String,
      packageName: json['packageName'] as String,
      status: json['status'] as String,
      snapshot: json['snapshot'] as Map<String, dynamic>,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$PackageSubscriptionToJson(
  _PackageSubscription instance,
) => <String, dynamic>{
  'id': instance.id,
  'packageId': instance.packageId,
  'packageName': instance.packageName,
  'status': instance.status,
  'snapshot': instance.snapshot,
  'createdAt': instance.createdAt,
};

_MinePackagesResponse _$MinePackagesResponseFromJson(
  Map<String, dynamic> json,
) => _MinePackagesResponse(
  packages: (json['packages'] as List<dynamic>)
      .map((e) => PackageListItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  subscriptions: (json['subscriptions'] as List<dynamic>)
      .map((e) => PackageSubscription.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MinePackagesResponseToJson(
  _MinePackagesResponse instance,
) => <String, dynamic>{
  'packages': instance.packages,
  'subscriptions': instance.subscriptions,
};

_PackageItemInput _$PackageItemInputFromJson(Map<String, dynamic> json) =>
    _PackageItemInput(
      packId: json['packId'] as String,
      quantity: (json['quantity'] as num).toInt(),
      sortOrder: (json['sortOrder'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PackageItemInputToJson(_PackageItemInput instance) =>
    <String, dynamic>{
      'packId': instance.packId,
      'quantity': instance.quantity,
      'sortOrder': instance.sortOrder,
    };

_CreateCommunityPackageRequest _$CreateCommunityPackageRequestFromJson(
  Map<String, dynamic> json,
) => _CreateCommunityPackageRequest(
  name: json['name'] as String,
  description: json['description'] as String? ?? '',
  coverImageUrl: json['coverImageUrl'] as String,
  visibility: json['visibility'] as String,
  items: (json['items'] as List<dynamic>)
      .map((e) => PackageItemInput.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CreateCommunityPackageRequestToJson(
  _CreateCommunityPackageRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'coverImageUrl': instance.coverImageUrl,
  'visibility': instance.visibility,
  'items': instance.items,
};

_CreateAdminPackageRequest _$CreateAdminPackageRequestFromJson(
  Map<String, dynamic> json,
) => _CreateAdminPackageRequest(
  name: json['name'] as String,
  description: json['description'] as String? ?? '',
  coverImageUrl: json['coverImageUrl'] as String,
  isPopular: json['isPopular'] as bool? ?? false,
  sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
  isActive: json['isActive'] as bool? ?? true,
  items: (json['items'] as List<dynamic>)
      .map((e) => PackageItemInput.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CreateAdminPackageRequestToJson(
  _CreateAdminPackageRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'coverImageUrl': instance.coverImageUrl,
  'isPopular': instance.isPopular,
  'sortOrder': instance.sortOrder,
  'isActive': instance.isActive,
  'items': instance.items,
};

_UpdateAdminPackageRequest _$UpdateAdminPackageRequestFromJson(
  Map<String, dynamic> json,
) => _UpdateAdminPackageRequest(
  name: json['name'] as String?,
  description: json['description'] as String?,
  coverImageUrl: json['coverImageUrl'] as String?,
  isPopular: json['isPopular'] as bool?,
  sortOrder: (json['sortOrder'] as num?)?.toInt(),
  isActive: json['isActive'] as bool?,
  items: (json['items'] as List<dynamic>?)
      ?.map((e) => PackageItemInput.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$UpdateAdminPackageRequestToJson(
  _UpdateAdminPackageRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'coverImageUrl': instance.coverImageUrl,
  'isPopular': instance.isPopular,
  'sortOrder': instance.sortOrder,
  'isActive': instance.isActive,
  'items': instance.items,
};

_CreateDiscountTierRequest _$CreateDiscountTierRequestFromJson(
  Map<String, dynamic> json,
) => _CreateDiscountTierRequest(
  label: json['label'] as String,
  minSpendKobo: (json['minSpendKobo'] as num).toInt(),
  discountPercent: (json['discountPercent'] as num).toInt(),
  sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
  isActive: json['isActive'] as bool? ?? true,
);

Map<String, dynamic> _$CreateDiscountTierRequestToJson(
  _CreateDiscountTierRequest instance,
) => <String, dynamic>{
  'label': instance.label,
  'minSpendKobo': instance.minSpendKobo,
  'discountPercent': instance.discountPercent,
  'sortOrder': instance.sortOrder,
  'isActive': instance.isActive,
};

_UpdateDiscountTierRequest _$UpdateDiscountTierRequestFromJson(
  Map<String, dynamic> json,
) => _UpdateDiscountTierRequest(
  label: json['label'] as String?,
  minSpendKobo: (json['minSpendKobo'] as num?)?.toInt(),
  discountPercent: (json['discountPercent'] as num?)?.toInt(),
  sortOrder: (json['sortOrder'] as num?)?.toInt(),
  isActive: json['isActive'] as bool?,
);

Map<String, dynamic> _$UpdateDiscountTierRequestToJson(
  _UpdateDiscountTierRequest instance,
) => <String, dynamic>{
  'label': instance.label,
  'minSpendKobo': instance.minSpendKobo,
  'discountPercent': instance.discountPercent,
  'sortOrder': instance.sortOrder,
  'isActive': instance.isActive,
};

_ImageKitAuth _$ImageKitAuthFromJson(Map<String, dynamic> json) =>
    _ImageKitAuth(
      token: json['token'] as String,
      expire: (json['expire'] as num).toInt(),
      signature: json['signature'] as String,
      publicKey: json['publicKey'] as String,
      urlEndpoint: json['urlEndpoint'] as String,
    );

Map<String, dynamic> _$ImageKitAuthToJson(_ImageKitAuth instance) =>
    <String, dynamic>{
      'token': instance.token,
      'expire': instance.expire,
      'signature': instance.signature,
      'publicKey': instance.publicKey,
      'urlEndpoint': instance.urlEndpoint,
    };

_MediaUploadResult _$MediaUploadResultFromJson(Map<String, dynamic> json) =>
    _MediaUploadResult(
      url: json['url'] as String,
      fileId: json['fileId'] as String,
      name: json['name'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String?,
    );

Map<String, dynamic> _$MediaUploadResultToJson(_MediaUploadResult instance) =>
    <String, dynamic>{
      'url': instance.url,
      'fileId': instance.fileId,
      'name': instance.name,
      'thumbnailUrl': instance.thumbnailUrl,
    };
