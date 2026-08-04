// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_subcategory_request.freezed.dart';
part 'create_subcategory_request.g.dart';

@freezed
abstract class CreateSubcategoryRequest with _$CreateSubcategoryRequest {
  const factory CreateSubcategoryRequest({
    required String categoryId,
    required String name,
    int? sortOrder,
    bool? isActive,
  }) = _CreateSubcategoryRequest;

  factory CreateSubcategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSubcategoryRequestFromJson(json);
}
