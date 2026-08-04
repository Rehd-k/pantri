// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_banner_request.freezed.dart';
part 'update_banner_request.g.dart';

/// Mirrors NestJS [UpdateBannerDto].
@freezed
abstract class UpdateBannerRequest with _$UpdateBannerRequest {
  const factory UpdateBannerRequest({
    String? badgeLabel,
    String? title,
    String? subtitle,
    String? ctaLabel,
    String? ctaRoute,
    String? gradientStart,
    String? gradientEnd,
    int? sortOrder,
    bool? isActive,
  }) = _UpdateBannerRequest;

  factory UpdateBannerRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateBannerRequestFromJson(json);
}
