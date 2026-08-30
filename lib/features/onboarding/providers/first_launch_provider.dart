import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/storage/first_launch_storage.dart';
import '../data/onboarding_prefs_storage.dart';
import '../domain/onboarding_prefs_draft.dart';

final firstLaunchStorageProvider = Provider<FirstLaunchStorage>(
  (ref) => FirstLaunchStorage(),
);

final onboardingPrefsStorageProvider = Provider<OnboardingPrefsStorage>(
  (ref) => OnboardingPrefsStorage(),
);

sealed class FirstLaunchState {
  const FirstLaunchState();
}

class FirstLaunchUnknown extends FirstLaunchState {
  const FirstLaunchUnknown();
}

class FirstLaunchLoaded extends FirstLaunchState {
  const FirstLaunchLoaded({
    required this.hasSeenIntro,
    required this.hasFinishedQuiz,
  });

  final bool hasSeenIntro;
  final bool hasFinishedQuiz;

  bool get hasSeenOnboarding => hasSeenIntro && hasFinishedQuiz;
}

final firstLaunchProvider =
    NotifierProvider<FirstLaunchNotifier, FirstLaunchState>(
      FirstLaunchNotifier.new,
    );

class FirstLaunchNotifier extends Notifier<FirstLaunchState> {
  @override
  FirstLaunchState build() => const FirstLaunchUnknown();

  FirstLaunchStorage get _storage => ref.read(firstLaunchStorageProvider);

  Future<void> load() async {
    final intro = await _storage.hasSeenIntro();
    final quiz = await _storage.hasFinishedQuiz();
    state = FirstLaunchLoaded(hasSeenIntro: intro, hasFinishedQuiz: quiz);
  }

  Future<void> markIntroSeen() async {
    await _storage.markIntroSeen();
    final quiz = state is FirstLaunchLoaded
        ? (state as FirstLaunchLoaded).hasFinishedQuiz
        : await _storage.hasFinishedQuiz();
    state = FirstLaunchLoaded(hasSeenIntro: true, hasFinishedQuiz: quiz);
  }

  Future<void> markQuizFinished() async {
    await _storage.markQuizFinished();
    state = const FirstLaunchLoaded(hasSeenIntro: true, hasFinishedQuiz: true);
  }

  Future<void> markSeen() async {
    await _storage.markOnboardingSeen();
    state = const FirstLaunchLoaded(hasSeenIntro: true, hasFinishedQuiz: true);
  }
}

final onboardingPrefsDraftProvider =
    NotifierProvider<OnboardingPrefsNotifier, OnboardingPrefsDraft>(
      OnboardingPrefsNotifier.new,
    );

class OnboardingPrefsNotifier extends Notifier<OnboardingPrefsDraft> {
  @override
  OnboardingPrefsDraft build() => const OnboardingPrefsDraft();

  OnboardingPrefsStorage get _storage =>
      ref.read(onboardingPrefsStorageProvider);

  Future<void> hydrateFromStorage() async {
    final stored = await _storage.read();
    if (stored != null) {
      state = stored;
    }
  }

  Future<void> persist(OnboardingPrefsDraft draft) async {
    state = draft;
    await _storage.save(draft);
  }

  Future<void> completeAndPersist(OnboardingPrefsDraft draft) async {
    final next = draft.copyWith(isComplete: true);
    state = next;
    await _storage.save(next);
  }

  Future<void> skip() async {
    await _storage.save(state.copyWith(isComplete: false));
  }

  Future<void> clear() async {
    await _storage.clear();
    state = const OnboardingPrefsDraft();
  }
}
