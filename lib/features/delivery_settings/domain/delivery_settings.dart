// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_settings.freezed.dart';
part 'delivery_settings.g.dart';

/// Mirrors NestJS [DeliverySettingsResponseDto].
@freezed
abstract class DeliverySettings with _$DeliverySettings {
  const factory DeliverySettings({
    required String id,
    required int freeDeliveryMinKobo,
    required int deliveryFeeKobo,
    required String updatedAt,
  }) = _DeliverySettings;

  factory DeliverySettings.fromJson(Map<String, dynamic> json) =>
      _$DeliverySettingsFromJson(json);
}

/// Mirrors NestJS [UpdateDeliverySettingsDto].
@freezed
abstract class UpdateDeliverySettingsRequest
    with _$UpdateDeliverySettingsRequest {
  const factory UpdateDeliverySettingsRequest({
    int? freeDeliveryMinKobo,
    int? deliveryFeeKobo,
  }) = _UpdateDeliverySettingsRequest;

  factory UpdateDeliverySettingsRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateDeliverySettingsRequestFromJson(json);
}
