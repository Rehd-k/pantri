// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_distribution.freezed.dart';
part 'rating_distribution.g.dart';

@freezed
abstract class RatingDistribution with _$RatingDistribution {
  const factory RatingDistribution({
    @Default(0) int star1,
    @Default(0) int star2,
    @Default(0) int star3,
    @Default(0) int star4,
    @Default(0) int star5,
  }) = _RatingDistribution;

  factory RatingDistribution.fromJson(Map<String, dynamic> json) =>
      _$RatingDistributionFromJson(json);
}
