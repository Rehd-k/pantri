import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/router/app_router.dart';
import '../../../core/theme/app_radius.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_button.dart';
import '../data/onboarding_slides.dart';
import '../providers/first_launch_provider.dart';
import 'widgets/onboarding_illustration.dart';

@RoutePage()
class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen>
    with TickerProviderStateMixin {
  late final PageController _pageController;
  late final AnimationController _floatController;
  var _index = 0;
  var _completing = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _floatController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 4200),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _pageController.dispose();
    _floatController.dispose();
    super.dispose();
  }

  bool get _isLast => _index >= onboardingSlides.length - 1;

  Future<void> _complete() async {
    if (_completing) return;
    setState(() => _completing = true);
    await ref.read(firstLaunchProvider.notifier).markSeen();
    if (!mounted) return;
    await context.router.replace(const WelcomeRoute());
  }

  void _next() {
    if (_isLast) {
      _complete();
      return;
    }
    _pageController.nextPage(
      duration: const Duration(milliseconds: 420),
      curve: Curves.easeOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final page = _pageController.hasClients
        ? _pageController.page ?? _index.toDouble()
        : _index.toDouble();
    final overlay = colorScheme.brightness == Brightness.dark
        ? SystemUiOverlayStyle.light
        : SystemUiOverlayStyle.dark;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: overlay,
      child: Scaffold(
        body: AnimatedBuilder(
          animation: Listenable.merge([_pageController, _floatController]),
          builder: (context, _) {
            return DecoratedBox(
              decoration: BoxDecoration(
                gradient: _gradientForPage(colorScheme, page),
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.xl,
                  ),
                  child: Column(
                    children: [
                      _TopBar(
                        showSkip: !_isLast && !_completing,
                        onSkip: _complete,
                      ),
                      Expanded(
                        child: PageView.builder(
                          controller: _pageController,
                          itemCount: onboardingSlides.length,
                          onPageChanged: (index) {
                            HapticFeedback.selectionClick();
                            setState(() => _index = index);
                          },
                          itemBuilder: (context, index) {
                            final slide = onboardingSlides[index];
                            final delta = (page - index).clamp(-1.0, 1.0);
                            return Opacity(
                              opacity: (1 - delta.abs() * 0.45).clamp(0.4, 1),
                              child: Transform.translate(
                                offset: Offset(delta * 36, 0),
                                child: _SlideBody(
                                  slide: slide,
                                  progress: _floatController.value,
                                  textTheme: textTheme,
                                  colorScheme: colorScheme,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      _PillIndicator(
                        count: onboardingSlides.length,
                        page: page,
                        colorScheme: colorScheme,
                      ),
                      const SizedBox(height: AppSpacing.xl),
                      AppButton(
                        label: _isLast ? 'Get started' : 'Next',
                        expanded: true,
                        loading: _completing,
                        onPressed: _completing ? null : _next,
                      ),
                      const SizedBox(height: AppSpacing.lg),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  LinearGradient _gradientForPage(ColorScheme colorScheme, double page) {
    final fromIndex = page.floor().clamp(0, onboardingSlides.length - 1);
    final toIndex = page.ceil().clamp(0, onboardingSlides.length - 1);
    final t = (page - fromIndex).clamp(0.0, 1.0);
    final from = _colorsForAccent(
      colorScheme,
      onboardingSlides[fromIndex].accent,
    );
    final to = _colorsForAccent(colorScheme, onboardingSlides[toIndex].accent);
    return LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color.lerp(from.$1, to.$1, t)!, Color.lerp(from.$2, to.$2, t)!],
    );
  }

  (Color, Color) _colorsForAccent(
    ColorScheme colorScheme,
    OnboardingAccent accent,
  ) {
    return switch (accent) {
      OnboardingAccent.primary => (
        colorScheme.primaryContainer,
        colorScheme.surface,
      ),
      OnboardingAccent.secondary => (
        colorScheme.secondaryContainer,
        colorScheme.surface,
      ),
      OnboardingAccent.tertiary => (
        colorScheme.tertiaryContainer,
        colorScheme.surface,
      ),
      OnboardingAccent.mixed => (
        Color.lerp(
          colorScheme.primaryContainer,
          colorScheme.secondaryContainer,
          0.45,
        )!,
        colorScheme.surface,
      ),
    };
  }
}

class _TopBar extends StatelessWidget {
  const _TopBar({required this.showSkip, required this.onSkip});

  final bool showSkip;
  final VoidCallback onSkip;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SizedBox(
      height: 56,
      child: Row(
        children: [
          Text(
            'Pantri',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: colorScheme.primary,
              fontWeight: FontWeight.w800,
            ),
          ),
          const Spacer(),
          if (showSkip)
            AppButton(
              label: 'Skip',
              variant: AppButtonVariant.text,
              size: AppButtonSize.compact,
              onPressed: onSkip,
            )
          else
            const SizedBox(width: 64),
        ],
      ),
    );
  }
}

class _SlideBody extends StatelessWidget {
  const _SlideBody({
    required this.slide,
    required this.progress,
    required this.textTheme,
    required this.colorScheme,
  });

  final OnboardingSlide slide;
  final double progress;
  final TextTheme textTheme;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 11,
          child: OnboardingIllustration(
            kind: slide.kind,
            accent: slide.accent,
            progress: progress,
          ),
        ),
        const SizedBox(height: AppSpacing.lg),
        Text(
          slide.title,
          textAlign: TextAlign.center,
          style: textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w800,
            height: 1.15,
            letterSpacing: -0.4,
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        Text(
          slide.body,
          textAlign: TextAlign.center,
          style: textTheme.bodyLarge?.copyWith(
            color: colorScheme.onSurface.withValues(alpha: 0.72),
            height: 1.45,
          ),
        ),
        const SizedBox(height: AppSpacing.xl),
      ],
    );
  }
}

class _PillIndicator extends StatelessWidget {
  const _PillIndicator({
    required this.count,
    required this.page,
    required this.colorScheme,
  });

  final int count;
  final double page;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var i = 0; i < count; i++) ...[
          if (i > 0) const SizedBox(width: AppSpacing.sm),
          _PillDot(
            active: 1 - (page - i).abs().clamp(0.0, 1.0),
            colorScheme: colorScheme,
          ),
        ],
      ],
    );
  }
}

class _PillDot extends StatelessWidget {
  const _PillDot({required this.active, required this.colorScheme});

  final double active;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 280),
      curve: Curves.easeOutCubic,
      width: 8 + (20 * active),
      height: 8,
      decoration: BoxDecoration(
        borderRadius: AppRadius.borderFull,
        color: Color.lerp(
          colorScheme.outline.withValues(alpha: 0.45),
          colorScheme.secondary,
          active,
        ),
      ),
    );
  }
}
