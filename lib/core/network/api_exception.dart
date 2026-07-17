/// Normalized API error for UI presentation.
class ApiException implements Exception {
  ApiException({
    required this.message,
    this.statusCode,
    this.isPendingApproval = false,
  });

  final String message;
  final int? statusCode;
  final bool isPendingApproval;

  @override
  String toString() => message;
}
