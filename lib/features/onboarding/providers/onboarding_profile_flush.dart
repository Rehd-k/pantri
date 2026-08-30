import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../auth/domain/user_role.dart';
import '../../nutrition/data/nutrition_repository.dart';
import '../../nutrition/providers/nutrition_providers.dart';
import 'first_launch_provider.dart';

/// Saves a completed pre-auth quiz onto the employee HealthProfile.
Future<void> flushOnboardingPrefs(Ref ref, UserRole role) async {
  if (role != UserRole.employee) return;
  final storage = ref.read(onboardingPrefsStorageProvider);
  final draft = await storage.read();
  if (draft == null || !draft.isComplete || !draft.canComplete) {
    return;
  }

  final repo = ref.read(nutritionRepositoryProvider);
  try {
    final existing = await repo.getProfile();
    if (existing != null) {
      await storage.clear();
      return;
    }
    final catalog = await repo.getCatalog();
    await repo.upsertProfile(draft.toUpsertRequest(catalog));
    await storage.clear();
    ref.invalidate(healthProfileProvider);
    ref.invalidate(mealPlansProvider);
    unawaited(
      repo.generateMealPlan().then((_) {
        ref.invalidate(mealPlansProvider);
      }, onError: (_) {}),
    );
  } catch (_) {
    // Keep the stash so the Meals-tab questionnaire can hydrate it.
  }
}
