import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/storage/first_launch_storage.dart';

final firstLaunchStorageProvider = Provider<FirstLaunchStorage>(
  (ref) => FirstLaunchStorage(),
);

sealed class FirstLaunchState {
  const FirstLaunchState();
}

class FirstLaunchUnknown extends FirstLaunchState {
  const FirstLaunchUnknown();
}

class FirstLaunchLoaded extends FirstLaunchState {
  const FirstLaunchLoaded({required this.hasSeenOnboarding});

  final bool hasSeenOnboarding;
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
    final seen = await _storage.hasSeenOnboarding();
    state = FirstLaunchLoaded(hasSeenOnboarding: seen);
  }

  Future<void> markSeen() async {
    await _storage.markOnboardingSeen();
    state = const FirstLaunchLoaded(hasSeenOnboarding: true);
  }
}
