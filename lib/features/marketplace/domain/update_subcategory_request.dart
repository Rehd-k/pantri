// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_subcategory_request.freezed.dart';
part 'update_subcategory_request.g.dart';

@freezed
abstract class UpdateSubcategoryRequest with _$UpdateSubcategoryRequest {
  const factory UpdateSubcategoryRequest({
    String? name,
    int? sortOrder,
    bool? isActive,
  }) = _UpdateSubcategoryRequest;

  factory UpdateSubcategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateSubcategoryRequestFromJson(json);
}
