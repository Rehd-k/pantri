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
    title: 'Your Groceries, On Your Terms',
    body:
        'Get what your home needs today. No cards, no cash, no upfront costs.',
    kind: OnboardingIllustrationKind.creditShop,
    accent: OnboardingAccent.primary,
  ),
  OnboardingSlide(
    title: 'Set It and Forget It',
    body:
        'Watch your balance shrink automatically. Repayments are gently '
        'spread across your next few paychecks.',
    kind: OnboardingIllustrationKind.payroll,
    accent: OnboardingAccent.secondary,
  ),
  OnboardingSlide(
    title: 'Shop. Share. Pick Up.',
    body:
        'Build your own cart or grab a pre-sized household package. Collect '
        'it easily at work when it\'s ready.',
    kind: OnboardingIllustrationKind.marketplace,
    accent: OnboardingAccent.tertiary,
  ),
  OnboardingSlide(
    title: 'Eat Better, Restock Faster',
    body:
        'Set your health goals for custom meal plans. When the pantry gets '
        'light, restock it instantly.',
    kind: OnboardingIllustrationKind.meals,
    accent: OnboardingAccent.mixed,
  ),
];
