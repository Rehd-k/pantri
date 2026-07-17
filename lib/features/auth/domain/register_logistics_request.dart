import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_logistics_request.freezed.dart';
part 'register_logistics_request.g.dart';

/// Mirrors NestJS [RegisterLogisticsDto].
@freezed
abstract class RegisterLogisticsRequest with _$RegisterLogisticsRequest {
  const factory RegisterLogisticsRequest({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String fleetName,
  }) = _RegisterLogisticsRequest;

  factory RegisterLogisticsRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterLogisticsRequestFromJson(json);
}
