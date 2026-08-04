// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_dashboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreditSummary _$CreditSummaryFromJson(Map<String, dynamic> json) =>
    _CreditSummary(
      creditLimitKobo: (json['creditLimitKobo'] as num).toInt(),
      outstandingKobo: (json['outstandingKobo'] as num).toInt(),
      availableKobo: (json['availableKobo'] as num).toInt(),
      reservedKobo: (json['reservedKobo'] as num).toInt(),
    );

Map<String, dynamic> _$CreditSummaryToJson(_CreditSummary instance) =>
    <String, dynamic>{
      'creditLimitKobo': instance.creditLimitKobo,
      'outstandingKobo': instance.outstandingKobo,
      'availableKobo': instance.availableKobo,
      'reservedKobo': instance.reservedKobo,
    };

_NextDeduction _$NextDeductionFromJson(Map<String, dynamic> json) =>
    _NextDeduction(
      amountKobo: (json['amountKobo'] as num).toInt(),
      scheduledFor: json['scheduledFor'] as String,
    );

Map<String, dynamic> _$NextDeductionToJson(_NextDeduction instance) =>
    <String, dynamic>{
      'amountKobo': instance.amountKobo,
      'scheduledFor': instance.scheduledFor,
    };

_EmployeeDashboard _$EmployeeDashboardFromJson(Map<String, dynamic> json) =>
    _EmployeeDashboard(
      credit: CreditSummary.fromJson(json['credit'] as Map<String, dynamic>),
      nextDeduction: json['nextDeduction'] == null
          ? null
          : NextDeduction.fromJson(
              json['nextDeduction'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$EmployeeDashboardToJson(_EmployeeDashboard instance) =>
    <String, dynamic>{
      'credit': instance.credit,
      'nextDeduction': instance.nextDeduction,
    };
