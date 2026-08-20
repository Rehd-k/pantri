enum OnboardingIllustrationKind { creditShop, payroll, marketplace, meals }

enum OnboardingAccent { primary, secondary, tertiary, mixed }

class OnboardingSlide {
  const OnboardingSlide({
    required this.title,
    required this.body,
    required this.kind,
    required this.accent,
  });

  final String title;
  final String body;
  final OnboardingIllustrationKind kind;
  final OnboardingAccent accent;
}

const onboardingSlides = <OnboardingSlide>[
  OnboardingSlide(
    title: 'Shop now, pay from salary',
    body:
        'Stock your pantry without paying upfront. Checkout uses your '
        'employer-backed credit line — not card or cash.',
    kind: OnboardingIllustrationKind.creditShop,
    accent: OnboardingAccent.primary,
  ),
  OnboardingSlide(
    title: 'Repaid when you get paid',
    body:
        'See your limit, balance, and next deduction. A slice of each '
        'paycheck clears what you owe across 5 or 6 months.',
    kind: OnboardingIllustrationKind.payroll,
    accent: OnboardingAccent.secondary,
  ),
  OnboardingSlide(
    title: 'Marketplace, packages, pickup',
    body:
        'Browse by category, grab Bachelor or Family baskets, and collect '
        'at your company hub when the order is ready.',
    kind: OnboardingIllustrationKind.marketplace,
    accent: OnboardingAccent.tertiary,
  ),
  OnboardingSlide(
    title: 'Meals and a smarter pantry',
    body:
        'Complete a short health questionnaire for AI meal plans, track '
        'household stock, and restock in one tap when you run low.',
    kind: OnboardingIllustrationKind.meals,
    accent: OnboardingAccent.mixed,
  ),
];
