// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_category_request.freezed.dart';
part 'create_category_request.g.dart';

/// Mirrors NestJS [CreateCategoryDto].
@freezed
abstract class CreateCategoryRequest with _$CreateCategoryRequest {
  const factory CreateCategoryRequest({
    required String name,
    required String imageUrl,
    required String accentColor,
    int? sortOrder,
    bool? isActive,
  }) = _CreateCategoryRequest;

  factory CreateCategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateCategoryRequestFromJson(json);
}
