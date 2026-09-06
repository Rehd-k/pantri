import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../config/app_config.dart';

const _skipKey = 'skipDevHostFallback';

/// In debug, retries unreachable requests against loopback (`adb reverse`)
/// and the Android emulator host alias.
class DevHostFallbackInterceptor extends Interceptor {
  DevHostFallbackInterceptor(this._dio);

  final Dio _dio;
  static String? _resolvedBase;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final resolved = _resolvedBase;
    if (resolved != null && options.extra[_skipKey] != true) {
      options.baseUrl = resolved;
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (!kDebugMode || err.requestOptions.extra[_skipKey] == true) {
      handler.next(err);
      return;
    }

    final unreachable =
        err.type == DioExceptionType.connectionError ||
        err.type == DioExceptionType.connectionTimeout;
    if (!unreachable) {
      handler.next(err);
      return;
    }

    final tried = <String>{err.requestOptions.baseUrl};
    final candidates = <String>[
      AppConfig.apiBaseUrl,
      ...AppConfig.debugFallbackBaseUrls,
    ].where((url) => url.isNotEmpty && !tried.contains(url));

    for (final base in candidates) {
      tried.add(base);
      try {
        final response = await _dio.fetch<dynamic>(
          err.requestOptions.copyWith(
            baseUrl: base,
            connectTimeout: const Duration(seconds: 3),
            extra: {...err.requestOptions.extra, _skipKey: true},
          ),
        );
        _resolvedBase = base;
        _dio.options.baseUrl = base;
        handler.resolve(response);
        return;
      } on DioException {
        continue;
      }
    }

    handler.next(err);
  }
}
