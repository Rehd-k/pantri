// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_dashboard.freezed.dart';
part 'employee_dashboard.g.dart';

/// Mirrors NestJS [CreditSummaryDto].
@freezed
abstract class CreditSummary with _$CreditSummary {
  const factory CreditSummary({
    required int creditLimitKobo,
    required int outstandingKobo,
    required int availableKobo,
    required int reservedKobo,
  }) = _CreditSummary;

  factory CreditSummary.fromJson(Map<String, dynamic> json) =>
      _$CreditSummaryFromJson(json);
}

/// Mirrors NestJS [NextDeductionDto].
@freezed
abstract class NextDeduction with _$NextDeduction {
  const factory NextDeduction({
    required int amountKobo,
    required String scheduledFor,
  }) = _NextDeduction;

  factory NextDeduction.fromJson(Map<String, dynamic> json) =>
      _$NextDeductionFromJson(json);
}

/// Mirrors NestJS [EmployeeDashboardDto].
@freezed
abstract class EmployeeDashboard with _$EmployeeDashboard {
  const factory EmployeeDashboard({
    required CreditSummary credit,
    NextDeduction? nextDeduction,
  }) = _EmployeeDashboard;

  factory EmployeeDashboard.fromJson(Map<String, dynamic> json) =>
      _$EmployeeDashboardFromJson(json);
}
