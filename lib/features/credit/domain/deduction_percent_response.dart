// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'deduction_percent_response.freezed.dart';
part 'deduction_percent_response.g.dart';

/// Mirrors NestJS `PATCH /employees/me/deduction-percent` response.
@freezed
abstract class DeductionPercentResponse with _$DeductionPercentResponse {
  const factory DeductionPercentResponse({
    required int deductionPercent,
  }) = _DeductionPercentResponse;

  factory DeductionPercentResponse.fromJson(Map<String, dynamic> json) =>
      _$DeductionPercentResponseFromJson(json);
}
