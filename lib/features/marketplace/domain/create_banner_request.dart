// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_banner_request.freezed.dart';
part 'create_banner_request.g.dart';

/// Mirrors NestJS [CreateBannerDto].
@freezed
abstract class CreateBannerRequest with _$CreateBannerRequest {
  const factory CreateBannerRequest({
    required String badgeLabel,
    required String title,
    required String subtitle,
    required String ctaLabel,
    String? ctaRoute,
    required String gradientStart,
    required String gradientEnd,
    int? sortOrder,
    bool? isActive,
  }) = _CreateBannerRequest;

  factory CreateBannerRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateBannerRequestFromJson(json);
}
