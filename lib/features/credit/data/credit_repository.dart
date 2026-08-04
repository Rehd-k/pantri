import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/dio_client.dart';
import '../domain/credit_account.dart';
import '../domain/deduction_percent_response.dart';
import '../domain/ledger_entry.dart';
import 'credit_api.dart';

class CreditRepository {
  CreditRepository(this._api);

  final CreditApi _api;

  Future<CreditAccount> getCreditAccount() => _api.getCreditAccount();

  Future<List<LedgerEntry>> getLedger({int? limit, String? cursor}) =>
      _api.getLedger(limit: limit, cursor: cursor);

  Future<DeductionPercentResponse> updateDeductionPercent(
    int deductionPercent,
  ) =>
      _api.updateDeductionPercent(deductionPercent);
}

final creditApiProvider = Provider<CreditApi>((ref) {
  return CreditApi(ref.watch(dioProvider));
});

final creditRepositoryProvider = Provider<CreditRepository>((ref) {
  return CreditRepository(ref.watch(creditApiProvider));
});
