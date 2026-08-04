// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_distribution.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RatingDistribution _$RatingDistributionFromJson(Map<String, dynamic> json) =>
    _RatingDistribution(
      star1: (json['star1'] as num?)?.toInt() ?? 0,
      star2: (json['star2'] as num?)?.toInt() ?? 0,
      star3: (json['star3'] as num?)?.toInt() ?? 0,
      star4: (json['star4'] as num?)?.toInt() ?? 0,
      star5: (json['star5'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$RatingDistributionToJson(_RatingDistribution instance) =>
    <String, dynamic>{
      'star1': instance.star1,
      'star2': instance.star2,
      'star3': instance.star3,
      'star4': instance.star4,
      'star5': instance.star5,
    };
