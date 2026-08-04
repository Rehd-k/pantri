// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreditAccount _$CreditAccountFromJson(
  Map<String, dynamic> json,
) => _CreditAccount(
  id: json['id'] as String,
  creditLimitKobo: (json['creditLimitKobo'] as num).toInt(),
  manualLimitOverrideKobo: (json['manualLimitOverrideKobo'] as num?)?.toInt(),
  effectiveLimitKobo: (json['effectiveLimitKobo'] as num).toInt(),
  principalOutstandingKobo: (json['principalOutstandingKobo'] as num).toInt(),
  postedInterestKobo: (json['postedInterestKobo'] as num).toInt(),
  postedFeesKobo: (json['postedFeesKobo'] as num).toInt(),
  postedPenaltiesKobo: (json['postedPenaltiesKobo'] as num).toInt(),
  reservedKobo: (json['reservedKobo'] as num).toInt(),
  accruedInterestUnpostedKobo: (json['accruedInterestUnpostedKobo'] as num)
      .toInt(),
  availableKobo: (json['availableKobo'] as num).toInt(),
  totalOwedKobo: (json['totalOwedKobo'] as num).toInt(),
  status: CreditAccountStatus.fromApi(json['status'] as String),
  consecutiveMissedDeductions: (json['consecutiveMissedDeductions'] as num)
      .toInt(),
  updatedAt: json['updatedAt'] as String,
);

Map<String, dynamic> _$CreditAccountToJson(_CreditAccount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creditLimitKobo': instance.creditLimitKobo,
      'manualLimitOverrideKobo': instance.manualLimitOverrideKobo,
      'effectiveLimitKobo': instance.effectiveLimitKobo,
      'principalOutstandingKobo': instance.principalOutstandingKobo,
      'postedInterestKobo': instance.postedInterestKobo,
      'postedFeesKobo': instance.postedFeesKobo,
      'postedPenaltiesKobo': instance.postedPenaltiesKobo,
      'reservedKobo': instance.reservedKobo,
      'accruedInterestUnpostedKobo': instance.accruedInterestUnpostedKobo,
      'availableKobo': instance.availableKobo,
      'totalOwedKobo': instance.totalOwedKobo,
      'status': _statusToJson(instance.status),
      'consecutiveMissedDeductions': instance.consecutiveMissedDeductions,
      'updatedAt': instance.updatedAt,
    };
