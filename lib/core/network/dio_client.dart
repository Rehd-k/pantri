import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../config/app_config.dart';
import '../storage/token_storage.dart';
import 'api_exception.dart';

final tokenStorageProvider = Provider<TokenStorage>((ref) => TokenStorage());

class SessionInvalidation extends Notifier<int> {
  @override
  int build() => 0;

  void invalidate() => state++;
}

final sessionInvalidationProvider = NotifierProvider<SessionInvalidation, int>(
  SessionInvalidation.new,
);

bool _isCredentialPath(String path) {
  return path.contains('/auth/login') || path.contains('/auth/register');
}

final dioProvider = Provider<Dio>((ref) {
  final tokenStorage = ref.watch(tokenStorageProvider);
  final dio = Dio(
    BaseOptions(
      baseUrl: AppConfig.apiBaseUrl,
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 20),
      headers: const {'Content-Type': 'application/json'},
    ),
  );

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        final token = await tokenStorage.readToken();
        if (token != null && token.isNotEmpty) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        handler.next(options);
      },
      onError: (error, handler) async {
        final status = error.response?.statusCode;
        final path = error.requestOptions.path;
        if (status == 401 && !_isCredentialPath(path)) {
          await tokenStorage.clearToken();
          ref.read(sessionInvalidationProvider.notifier).invalidate();
        }
        handler.next(error);
      },
    ),
  );

  return dio;
});

ApiException mapDioError(DioException error) {
  final statusCode = error.response?.statusCode;
  final data = error.response?.data;
  String message = 'Something went wrong. Please try again.';

  if (data is Map<String, dynamic>) {
    final raw = data['message'];
    if (raw is String && raw.isNotEmpty) {
      message = raw;
    } else if (raw is List && raw.isNotEmpty) {
      message = raw.map((e) => e.toString()).join(', ');
    }
  } else if (error.type == DioExceptionType.connectionError ||
      error.type == DioExceptionType.connectionTimeout) {
    message = 'Unable to reach the server. Check your connection.';
  }

  final isPending =
      statusCode == 403 &&
      message.toLowerCase().contains('pending admin approval');

  return ApiException(
    message: message,
    statusCode: statusCode,
    isPendingApproval: isPending,
  );
}
