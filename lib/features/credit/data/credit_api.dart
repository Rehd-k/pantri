import 'package:dio/dio.dart';

import '../../../core/network/dio_client.dart';
import '../domain/credit_account.dart';
import '../domain/deduction_percent_response.dart';
import '../domain/ledger_entry.dart';

class CreditApi {
  CreditApi(this._dio);

  final Dio _dio;

  Future<CreditAccount> getCreditAccount() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/employees/me/credit-account',
      );
      return CreditAccount.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<List<LedgerEntry>> getLedger({int? limit, String? cursor}) async {
    try {
      final response = await _dio.get<List<dynamic>>(
        '/employees/me/ledger',
        queryParameters: {
          if (limit != null) 'limit': limit,
          if (cursor != null) 'cursor': cursor,
        },
      );
      return response.data!
          .map((e) => LedgerEntry.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  Future<DeductionPercentResponse> updateDeductionPercent(
    int deductionPercent,
  ) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/employees/me/deduction-percent',
        data: {'deductionPercent': deductionPercent},
      );
      return DeductionPercentResponse.fromJson(response.data!);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }
}
