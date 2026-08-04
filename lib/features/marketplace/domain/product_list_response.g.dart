// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductListResponse _$ProductListResponseFromJson(Map<String, dynamic> json) =>
    _ProductListResponse(
      items: (json['items'] as List<dynamic>)
          .map((e) => MarketplaceProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$ProductListResponseToJson(
  _ProductListResponse instance,
) => <String, dynamic>{'items': instance.items, 'total': instance.total};
