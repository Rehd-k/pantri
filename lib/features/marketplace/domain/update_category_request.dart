// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_category_request.freezed.dart';
part 'update_category_request.g.dart';

/// Mirrors NestJS [UpdateCategoryDto].
@freezed
abstract class UpdateCategoryRequest with _$UpdateCategoryRequest {
  const factory UpdateCategoryRequest({
    String? name,
    String? imageUrl,
    String? accentColor,
    int? sortOrder,
    bool? isActive,
  }) = _UpdateCategoryRequest;

  factory UpdateCategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateCategoryRequestFromJson(json);
}
