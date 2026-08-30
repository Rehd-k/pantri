import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../domain/onboarding_prefs_draft.dart';

class OnboardingPrefsStorage {
  OnboardingPrefsStorage({SharedPreferences? preferences})
    : _preferences = preferences;

  static const _prefsKey = 'pantri_onboarding_prefs_draft';

  SharedPreferences? _preferences;

  Future<SharedPreferences> _prefs() async {
    return _preferences ??= await SharedPreferences.getInstance();
  }

  Future<OnboardingPrefsDraft?> read() async {
    final prefs = await _prefs();
    final raw = prefs.getString(_prefsKey);
    if (raw == null || raw.isEmpty) return null;
    try {
      final decoded = jsonDecode(raw);
      if (decoded is Map<String, dynamic>) {
        return OnboardingPrefsDraft.fromJson(decoded);
      }
      if (decoded is Map) {
        return OnboardingPrefsDraft.fromJson(
          decoded.map((key, value) => MapEntry(key.toString(), value)),
        );
      }
    } catch (_) {
      return null;
    }
    return null;
  }

  Future<void> save(OnboardingPrefsDraft draft) async {
    final prefs = await _prefs();
    await prefs.setString(_prefsKey, jsonEncode(draft.toJson()));
  }

  Future<void> clear() async {
    final prefs = await _prefs();
    await prefs.remove(_prefsKey);
  }
}
