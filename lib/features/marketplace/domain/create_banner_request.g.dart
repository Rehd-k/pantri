// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_banner_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateBannerRequest _$CreateBannerRequestFromJson(Map<String, dynamic> json) =>
    _CreateBannerRequest(
      badgeLabel: json['badgeLabel'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      ctaLabel: json['ctaLabel'] as String,
      ctaRoute: json['ctaRoute'] as String?,
      gradientStart: json['gradientStart'] as String,
      gradientEnd: json['gradientEnd'] as String,
      sortOrder: (json['sortOrder'] as num?)?.toInt(),
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$CreateBannerRequestToJson(
  _CreateBannerRequest instance,
) => <String, dynamic>{
  'badgeLabel': instance.badgeLabel,
  'title': instance.title,
  'subtitle': instance.subtitle,
  'ctaLabel': instance.ctaLabel,
  'ctaRoute': instance.ctaRoute,
  'gradientStart': instance.gradientStart,
  'gradientEnd': instance.gradientEnd,
  'sortOrder': instance.sortOrder,
  'isActive': instance.isActive,
};
