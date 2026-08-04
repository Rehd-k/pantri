/// App-wide configuration for the Pantri Flutter client.
abstract final class AppConfig {
  /// NestJS API base URL (no trailing slash).
  /// Android emulator: use http://10.0.2.2:3000
  /// iOS simulator / desktop: use http://localhost:3000
  static const String apiBaseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'http://192.168.1.180:3000/api/v1',
  );
}
