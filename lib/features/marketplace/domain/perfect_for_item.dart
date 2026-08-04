// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'perfect_for_item.freezed.dart';
part 'perfect_for_item.g.dart';

@freezed
abstract class PerfectForItem with _$PerfectForItem {
  const factory PerfectForItem({
    required String title,
    required String description,
    required String imageUrl,
  }) = _PerfectForItem;

  factory PerfectForItem.fromJson(Map<String, dynamic> json) =>
      _$PerfectForItemFromJson(json);
}
