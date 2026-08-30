import 'package:shared_preferences/shared_preferences.dart';

/// Persists whether the first-install intro and preference quiz are done.
class FirstLaunchStorage {
  FirstLaunchStorage({SharedPreferences? preferences})
    : _preferences = preferences;

  static const _legacySeenKey = 'pantri_has_seen_onboarding';
  static const _introKey = 'pantri_has_seen_intro';
  static const _quizKey = 'pantri_has_finished_pref_quiz';

  SharedPreferences? _preferences;

  Future<SharedPreferences> _prefs() async {
    return _preferences ??= await SharedPreferences.getInstance();
  }

  Future<bool> hasSeenIntro() async {
    final prefs = await _prefs();
    return prefs.getBool(_introKey) ?? prefs.getBool(_legacySeenKey) ?? false;
  }

  Future<bool> hasFinishedQuiz() async {
    final prefs = await _prefs();
    return prefs.getBool(_quizKey) ?? prefs.getBool(_legacySeenKey) ?? false;
  }

  Future<bool> hasSeenOnboarding() async {
    final intro = await hasSeenIntro();
    final quiz = await hasFinishedQuiz();
    return intro && quiz;
  }

  Future<void> markIntroSeen() async {
    final prefs = await _prefs();
    await prefs.setBool(_introKey, true);
    if (await hasFinishedQuiz()) {
      await prefs.setBool(_legacySeenKey, true);
    }
  }

  Future<void> markQuizFinished() async {
    final prefs = await _prefs();
    await prefs.setBool(_quizKey, true);
    await prefs.setBool(_legacySeenKey, true);
  }

  Future<void> markOnboardingSeen() async {
    await markIntroSeen();
    await markQuizFinished();
  }
}
