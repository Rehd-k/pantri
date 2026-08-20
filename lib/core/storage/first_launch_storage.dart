import 'package:shared_preferences/shared_preferences.dart';

/// Persists whether the first-install intro slider has been completed.
class FirstLaunchStorage {
  FirstLaunchStorage({SharedPreferences? preferences})
    : _preferences = preferences;

  static const _seenKey = 'pantri_has_seen_onboarding';

  SharedPreferences? _preferences;

  Future<SharedPreferences> _prefs() async {
    return _preferences ??= await SharedPreferences.getInstance();
  }

  Future<bool> hasSeenOnboarding() async {
    final prefs = await _prefs();
    return prefs.getBool(_seenKey) ?? false;
  }

  Future<void> markOnboardingSeen() async {
    final prefs = await _prefs();
    await prefs.setBool(_seenKey, true);
  }
}
