// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marketplace_banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MarketplaceBanner _$MarketplaceBannerFromJson(Map<String, dynamic> json) =>
    _MarketplaceBanner(
      id: json['id'] as String,
      badgeLabel: json['badgeLabel'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      ctaLabel: json['ctaLabel'] as String,
      ctaRoute: json['ctaRoute'] as String?,
      gradientStart: json['gradientStart'] as String,
      gradientEnd: json['gradientEnd'] as String,
      sortOrder: (json['sortOrder'] as num).toInt(),
      isActive: json['isActive'] as bool,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$MarketplaceBannerToJson(_MarketplaceBanner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'badgeLabel': instance.badgeLabel,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'ctaLabel': instance.ctaLabel,
      'ctaRoute': instance.ctaRoute,
      'gradientStart': instance.gradientStart,
      'gradientEnd': instance.gradientEnd,
      'sortOrder': instance.sortOrder,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
