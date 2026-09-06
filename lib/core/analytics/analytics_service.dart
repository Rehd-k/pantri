import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../config/app_config.dart';
import '../network/dio_client.dart';
import 'analytics_events.dart';

final analyticsServiceProvider = Provider<AnalyticsService>((ref) {
  final service = AnalyticsService(ref.watch(dioProvider));
  ref.onDispose(service.dispose);
  return service;
});

/// Fire-and-forget client analytics. Never throws into UI paths.
class AnalyticsService {
  AnalyticsService(this._dio) {
    _sessionId = _newSessionId();
    _flushTimer = Timer.periodic(const Duration(seconds: 8), (_) {
      unawaited(flush());
    });
  }

  final Dio _dio;
  final List<Map<String, dynamic>> _queue = [];
  Timer? _flushTimer;
  late String _sessionId;
  bool _started = false;

  String get sessionId => _sessionId;

  void startSession() {
    if (_started) return;
    _started = true;
    track(AnalyticsEvents.appOpened);
    track(AnalyticsEvents.sessionStarted);
  }

  void endSession() {
    track(AnalyticsEvents.sessionEnded);
    unawaited(flush());
  }

  void track(
    String eventName, {
    String? entityType,
    String? entityId,
    Map<String, dynamic>? metadata,
  }) {
    _queue.add({
      'eventName': eventName,
      'occurredAt': DateTime.now().toUtc().toIso8601String(),
      'sessionId': _sessionId,
      if (entityType != null) 'entityType': entityType,
      if (entityId != null) 'entityId': entityId,
      'platform': _platform(),
      'appVersion': AppConfig.appVersion,
      if (metadata != null && metadata.isNotEmpty) 'metadata': metadata,
    });
    if (_queue.length >= 20) {
      unawaited(flush());
    }
  }

  Future<void> flush() async {
    if (_queue.isEmpty) return;
    final batch = List<Map<String, dynamic>>.from(_queue.take(50));
    _queue.removeRange(0, batch.length);
    try {
      await _dio.post<void>(
        '/analytics/events',
        data: {'events': batch},
        options: Options(
          sendTimeout: const Duration(seconds: 5),
          receiveTimeout: const Duration(seconds: 5),
        ),
      );
    } catch (_) {
      if (kDebugMode) {
        // ignore: avoid_print
        print('Analytics flush failed (${batch.length} events dropped)');
      }
    }
  }

  void dispose() {
    _flushTimer?.cancel();
    unawaited(flush());
  }

  static String _platform() {
    if (kIsWeb) return 'web';
    try {
      if (Platform.isIOS) return 'ios';
      if (Platform.isAndroid) return 'android';
    } catch (_) {
      return 'other';
    }
    return 'other';
  }

  static String _newSessionId() {
    final r = Random.secure();
    final bytes = List<int>.generate(16, (_) => r.nextInt(256));
    return bytes.map((b) => b.toRadixString(16).padLeft(2, '0')).join();
  }
}
