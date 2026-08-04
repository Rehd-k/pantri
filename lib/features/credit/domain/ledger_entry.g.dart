// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ledger_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LedgerEntry _$LedgerEntryFromJson(Map<String, dynamic> json) => _LedgerEntry(
  id: json['id'] as String,
  sequence: (json['sequence'] as num).toInt(),
  entryType: LedgerEntryType.fromApi(json['entryType'] as String),
  amountKobo: (json['amountKobo'] as num).toInt(),
  balanceAfterKobo: (json['balanceAfterKobo'] as num).toInt(),
  reservedAfterKobo: (json['reservedAfterKobo'] as num).toInt(),
  productType: _productTypeFromJson(json['productType'] as String?),
  referenceType: json['referenceType'] as String?,
  referenceId: json['referenceId'] as String?,
  createdAt: json['createdAt'] as String,
);

Map<String, dynamic> _$LedgerEntryToJson(_LedgerEntry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sequence': instance.sequence,
      'entryType': _entryTypeToJson(instance.entryType),
      'amountKobo': instance.amountKobo,
      'balanceAfterKobo': instance.balanceAfterKobo,
      'reservedAfterKobo': instance.reservedAfterKobo,
      'productType': _productTypeToJson(instance.productType),
      'referenceType': instance.referenceType,
      'referenceId': instance.referenceId,
      'createdAt': instance.createdAt,
    };
