/// App-wide configuration for the Pantri Flutter client.
abstract final class AppConfig {
  /// NestJS API base URL (no trailing slash).
  ///
  /// Override at build time:
  /// `flutter run --dart-define=API_BASE_URL=http://127.0.0.1:3000/api/v1`
  ///
  /// Hosts:
  /// - Physical phone, same Wi-Fi as this PC: `http://192.168.1.180:3000/api/v1`
  /// - Physical phone on mobile data, with USB/wireless debugging:
  ///   `adb reverse tcp:3000 tcp:3000` then `http://127.0.0.1:3000/api/v1`
  /// - Android emulator: `http://10.0.2.2:3000/api/v1`
  /// - iOS simulator / desktop: `http://localhost:3000/api/v1`
  static const String apiBaseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'http://192.168.1.180:3000/api/v1',
  );

  /// Extra bases tried in debug when [apiBaseUrl] cannot be reached.
  static const List<String> debugFallbackBaseUrls = [
    'http://127.0.0.1:3000/api/v1',
    'http://10.0.2.2:3000/api/v1',
  ];

  static const String shareBaseUrl = String.fromEnvironment(
    'APP_SHARE_BASE_URL',
    defaultValue: 'https://joinpantri.com/app',
  );

  static const String appVersion = String.fromEnvironment(
    'APP_VERSION',
    defaultValue: '0.1.0',
  );
}
