// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'credit_account_status.dart';

part 'credit_account.freezed.dart';
part 'credit_account.g.dart';

String _statusToJson(CreditAccountStatus status) => status.apiValue;

/// Mirrors NestJS [CreditAccountResponseDto].
@freezed
abstract class CreditAccount with _$CreditAccount {
  const factory CreditAccount({
    required String id,
    required int creditLimitKobo,
    int? manualLimitOverrideKobo,
    required int effectiveLimitKobo,
    required int principalOutstandingKobo,
    required int postedInterestKobo,
    required int postedFeesKobo,
    required int postedPenaltiesKobo,
    required int reservedKobo,
    required int accruedInterestUnpostedKobo,
    required int availableKobo,
    required int totalOwedKobo,
    @JsonKey(fromJson: CreditAccountStatus.fromApi, toJson: _statusToJson)
    required CreditAccountStatus status,
    required int consecutiveMissedDeductions,
    required String updatedAt,
  }) = _CreditAccount;

  factory CreditAccount.fromJson(Map<String, dynamic> json) =>
      _$CreditAccountFromJson(json);
}
