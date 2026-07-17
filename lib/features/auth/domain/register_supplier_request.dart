import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_supplier_request.freezed.dart';
part 'register_supplier_request.g.dart';

/// Mirrors NestJS [RegisterSupplierDto].
@freezed
abstract class RegisterSupplierRequest with _$RegisterSupplierRequest {
  const factory RegisterSupplierRequest({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String businessName,
  }) = _RegisterSupplierRequest;

  factory RegisterSupplierRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterSupplierRequestFromJson(json);
}
