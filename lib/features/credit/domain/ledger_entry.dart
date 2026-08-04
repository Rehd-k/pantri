// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'ledger_entry_type.dart';
import 'product_type.dart';

part 'ledger_entry.freezed.dart';
part 'ledger_entry.g.dart';

String _entryTypeToJson(LedgerEntryType type) => type.apiValue;

ProductType? _productTypeFromJson(String? value) =>
    value == null ? null : ProductType.fromApi(value);
String? _productTypeToJson(ProductType? type) => type?.apiValue;

/// Mirrors NestJS [LedgerEntryResponseDto].
@freezed
abstract class LedgerEntry with _$LedgerEntry {
  const factory LedgerEntry({
    required String id,
    required int sequence,
    @JsonKey(fromJson: LedgerEntryType.fromApi, toJson: _entryTypeToJson)
    required LedgerEntryType entryType,
    required int amountKobo,
    required int balanceAfterKobo,
    required int reservedAfterKobo,
    @JsonKey(fromJson: _productTypeFromJson, toJson: _productTypeToJson)
    ProductType? productType,
    String? referenceType,
    String? referenceId,
    required String createdAt,
  }) = _LedgerEntry;

  factory LedgerEntry.fromJson(Map<String, dynamic> json) =>
      _$LedgerEntryFromJson(json);
}
