import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_employer_request.freezed.dart';
part 'register_employer_request.g.dart';

/// Mirrors NestJS [RegisterEmployerDto].
@freezed
abstract class RegisterEmployerRequest with _$RegisterEmployerRequest {
  const factory RegisterEmployerRequest({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String companyName,
  }) = _RegisterEmployerRequest;

  factory RegisterEmployerRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterEmployerRequestFromJson(json);
}
