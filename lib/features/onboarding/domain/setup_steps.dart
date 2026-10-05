import 'package:flutter/material.dart';

/// One stop on the setup path, including the account form.
enum SetupStepKind {
  household,
  kids,
  lifestyle,
  allergies,
  aboutYou,
  goals,
  account,
}

class SetupStep {
  const SetupStep({required this.kind, required this.icon});

  final SetupStepKind kind;
  final IconData icon;
}

/// Quiz questions plus the account form. Kids only appears for shared households.
List<SetupStep> setupStepsFor({required int householdSize}) {
  return [
    const SetupStep(kind: SetupStepKind.household, icon: Icons.home_outlined),
    if (householdSize > 1)
      const SetupStep(
        kind: SetupStepKind.kids,
        icon: Icons.child_care_outlined,
      ),
    const SetupStep(
      kind: SetupStepKind.lifestyle,
      icon: Icons.restaurant_outlined,
    ),
    const SetupStep(
      kind: SetupStepKind.allergies,
      icon: Icons.health_and_safety_outlined,
    ),
    const SetupStep(kind: SetupStepKind.aboutYou, icon: Icons.person_outline),
    const SetupStep(kind: SetupStepKind.goals, icon: Icons.flag_outlined),
    const SetupStep(kind: SetupStepKind.account, icon: Icons.badge_outlined),
  ];
}

/// First stop is 20%. The account form, the last stop, is 100%.
int setupPercent(int index, int count) {
  if (count <= 1) return 100;
  final clamped = index.clamp(0, count - 1);
  return (20 + (clamped / (count - 1)) * 80).round();
}
