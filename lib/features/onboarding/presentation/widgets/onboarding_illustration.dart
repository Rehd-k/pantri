import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../data/onboarding_slides.dart';

/// Themed vector-style hero for an onboarding page.
class OnboardingIllustration extends StatelessWidget {
  const OnboardingIllustration({
    super.key,
    required this.kind,
    required this.accent,
    required this.progress,
  });

  final OnboardingIllustrationKind kind;
  final OnboardingAccent accent;
  final double progress;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final float = math.sin(progress * math.pi) * 10;
    final floatAlt = math.cos(progress * math.pi) * 8;

    return LayoutBuilder(
      builder: (context, constraints) {
        final size = math.min(constraints.maxWidth, constraints.maxHeight);
        return Center(
          child: SizedBox(
            width: size,
            height: size,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                CustomPaint(
                  size: Size.square(size),
                  painter: _AtmospherePainter(
                    colorScheme: colorScheme,
                    accent: accent,
                    progress: progress,
                  ),
                ),
                Transform.translate(
                  offset: Offset(0, float),
                  child: _HeroStage(
                    colorScheme: colorScheme,
                    accent: accent,
                    size: size * 0.46,
                    child: _heroIcon(colorScheme),
                  ),
                ),
                ..._orbitingAccents(colorScheme, size, float, floatAlt),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _heroIcon(ColorScheme colorScheme) {
    final color = _heroIconColor(colorScheme);
    final icon = switch (kind) {
      OnboardingIllustrationKind.creditShop => Icons.shopping_bag_rounded,
      OnboardingIllustrationKind.payroll => Icons.payments_rounded,
      OnboardingIllustrationKind.marketplace => Icons.inventory_2_rounded,
      OnboardingIllustrationKind.meals => Icons.restaurant_rounded,
    };
    return Icon(icon, size: 72, color: color);
  }

  Color _heroIconColor(ColorScheme colorScheme) {
    return switch (accent) {
      OnboardingAccent.primary => colorScheme.primary,
      OnboardingAccent.secondary => colorScheme.secondary,
      OnboardingAccent.tertiary => colorScheme.tertiary,
      OnboardingAccent.mixed => colorScheme.primary,
    };
  }

  List<Widget> _orbitingAccents(
    ColorScheme colorScheme,
    double size,
    double float,
    double floatAlt,
  ) {
    return switch (kind) {
      OnboardingIllustrationKind.creditShop => [
        Positioned(
          right: size * 0.12,
          bottom: size * 0.18,
          child: Transform.translate(
            offset: Offset(floatAlt, -float),
            child: _NairaChip(colorScheme: colorScheme),
          ),
        ),
        Positioned(
          left: size * 0.08,
          top: size * 0.18,
          child: Transform.translate(
            offset: Offset(-floatAlt * 0.6, float),
            child: _MiniOrb(
              color: colorScheme.secondaryContainer,
              iconColor: colorScheme.onSecondaryContainer,
              icon: Icons.spa_rounded,
            ),
          ),
        ),
        Positioned(
          left: size * 0.16,
          bottom: size * 0.22,
          child: Transform.translate(
            offset: Offset(float * 0.4, floatAlt),
            child: _MiniOrb(
              color: colorScheme.tertiaryContainer,
              iconColor: colorScheme.onTertiaryContainer,
              icon: Icons.eco_rounded,
            ),
          ),
        ),
      ],
      OnboardingIllustrationKind.payroll => [
        Positioned(
          right: size * 0.1,
          top: size * 0.2,
          child: Transform.translate(
            offset: Offset(floatAlt, float * 0.5),
            child: _MonthPills(colorScheme: colorScheme),
          ),
        ),
        Positioned(
          left: size * 0.1,
          bottom: size * 0.2,
          child: Transform.translate(
            offset: Offset(-float, floatAlt),
            child: _MiniOrb(
              color: colorScheme.secondaryContainer,
              iconColor: colorScheme.onSecondaryContainer,
              icon: Icons.calendar_month_rounded,
            ),
          ),
        ),
        Positioned(
          right: size * 0.18,
          bottom: size * 0.16,
          child: Transform.translate(
            offset: Offset(float, -floatAlt),
            child: _MiniOrb(
              color: colorScheme.primaryContainer,
              iconColor: colorScheme.onPrimaryContainer,
              icon: Icons.receipt_long_rounded,
            ),
          ),
        ),
      ],
      OnboardingIllustrationKind.marketplace => [
        Positioned(
          right: size * 0.12,
          top: size * 0.16,
          child: Transform.translate(
            offset: Offset(floatAlt, float),
            child: _MiniOrb(
              color: colorScheme.tertiaryContainer,
              iconColor: colorScheme.onTertiaryContainer,
              icon: Icons.location_on_rounded,
              size: 64,
            ),
          ),
        ),
        Positioned(
          left: size * 0.1,
          top: size * 0.28,
          child: Transform.translate(
            offset: Offset(-floatAlt, -float * 0.4),
            child: _MiniOrb(
              color: colorScheme.secondaryContainer,
              iconColor: colorScheme.onSecondaryContainer,
              icon: Icons.shopping_basket_rounded,
            ),
          ),
        ),
        Positioned(
          left: size * 0.18,
          bottom: size * 0.18,
          child: Transform.translate(
            offset: Offset(float * 0.5, floatAlt),
            child: _MiniOrb(
              color: colorScheme.primaryContainer,
              iconColor: colorScheme.onPrimaryContainer,
              icon: Icons.local_grocery_store_rounded,
            ),
          ),
        ),
      ],
      OnboardingIllustrationKind.meals => [
        Positioned(
          right: size * 0.1,
          top: size * 0.18,
          child: Transform.translate(
            offset: Offset(floatAlt, -float),
            child: _MiniOrb(
              color: colorScheme.secondaryContainer,
              iconColor: colorScheme.onSecondaryContainer,
              icon: Icons.kitchen_rounded,
            ),
          ),
        ),
        Positioned(
          left: size * 0.12,
          top: size * 0.22,
          child: Transform.translate(
            offset: Offset(-float, floatAlt * 0.6),
            child: _MiniOrb(
              color: colorScheme.primaryContainer,
              iconColor: colorScheme.onPrimaryContainer,
              icon: Icons.favorite_rounded,
            ),
          ),
        ),
        Positioned(
          right: size * 0.16,
          bottom: size * 0.18,
          child: Transform.translate(
            offset: Offset(float, floatAlt),
            child: _MiniOrb(
              color: colorScheme.tertiaryContainer,
              iconColor: colorScheme.onTertiaryContainer,
              icon: Icons.auto_awesome_rounded,
            ),
          ),
        ),
      ],
    };
  }
}

class _HeroStage extends StatelessWidget {
  const _HeroStage({
    required this.colorScheme,
    required this.accent,
    required this.size,
    required this.child,
  });

  final ColorScheme colorScheme;
  final OnboardingAccent accent;
  final double size;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final fill = switch (accent) {
      OnboardingAccent.primary => colorScheme.surfaceContainerHighest,
      OnboardingAccent.secondary => colorScheme.surfaceContainerHighest,
      OnboardingAccent.tertiary => colorScheme.surfaceContainerHighest,
      OnboardingAccent.mixed => colorScheme.surfaceContainerHighest,
    };
    final ring = switch (accent) {
      OnboardingAccent.primary => colorScheme.primary.withValues(alpha: 0.22),
      OnboardingAccent.secondary => colorScheme.secondary.withValues(
        alpha: 0.28,
      ),
      OnboardingAccent.tertiary => colorScheme.tertiary.withValues(alpha: 0.24),
      OnboardingAccent.mixed => colorScheme.primary.withValues(alpha: 0.2),
    };

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: fill,
        boxShadow: [
          BoxShadow(color: ring, blurRadius: 36, spreadRadius: 8),
          BoxShadow(
            color: colorScheme.shadow.withValues(alpha: 0.08),
            blurRadius: 24,
            offset: const Offset(0, 12),
          ),
        ],
        border: Border.all(color: ring, width: 2),
      ),
      child: Center(child: child),
    );
  }
}

class _MiniOrb extends StatelessWidget {
  const _MiniOrb({
    required this.color,
    required this.iconColor,
    required this.icon,
    this.size = 52,
  });

  final Color color;
  final Color iconColor;
  final IconData icon;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: color.withValues(alpha: 0.45),
            blurRadius: 16,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Icon(icon, color: iconColor, size: size * 0.46),
    );
  }
}

class _NairaChip extends StatelessWidget {
  const _NairaChip({required this.colorScheme});

  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.sm,
      ),
      decoration: BoxDecoration(
        color: colorScheme.secondary,
        borderRadius: AppRadius.borderFull,
        boxShadow: [
          BoxShadow(
            color: colorScheme.secondary.withValues(alpha: 0.4),
            blurRadius: 16,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Text(
        '₦',
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
          color: colorScheme.onSecondary,
          fontWeight: FontWeight.w800,
          height: 1,
        ),
      ),
    );
  }
}

class _MonthPills extends StatelessWidget {
  const _MonthPills({required this.colorScheme});

  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.sm,
      ),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest,
        borderRadius: AppRadius.borderFull,
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withValues(alpha: 0.1),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (var i = 0; i < 6; i++) ...[
            if (i > 0) const SizedBox(width: 5),
            Container(
              width: i < 2 ? 14 : 8,
              height: 8,
              decoration: BoxDecoration(
                color: i < 2
                    ? colorScheme.secondary
                    : colorScheme.outline.withValues(alpha: 0.55),
                borderRadius: AppRadius.borderFull,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _AtmospherePainter extends CustomPainter {
  _AtmospherePainter({
    required this.colorScheme,
    required this.accent,
    required this.progress,
  });

  final ColorScheme colorScheme;
  final OnboardingAccent accent;
  final double progress;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final t = progress;
    final primary = switch (accent) {
      OnboardingAccent.primary => colorScheme.primary,
      OnboardingAccent.secondary => colorScheme.secondary,
      OnboardingAccent.tertiary => colorScheme.tertiary,
      OnboardingAccent.mixed => colorScheme.primary,
    };
    final secondary = switch (accent) {
      OnboardingAccent.primary => colorScheme.tertiary,
      OnboardingAccent.secondary => colorScheme.primary,
      OnboardingAccent.tertiary => colorScheme.secondary,
      OnboardingAccent.mixed => colorScheme.secondary,
    };

    void blob(Offset offset, double radius, Color color, double alpha) {
      final paint = Paint()
        ..color = color.withValues(alpha: alpha)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 18);
      canvas.drawCircle(offset, radius, paint);
    }

    blob(
      center + Offset(-size.width * 0.18, -size.height * 0.08 + t * 6),
      size.width * 0.34,
      primary,
      0.16,
    );
    blob(
      center + Offset(size.width * 0.22, size.height * 0.1 - t * 5),
      size.width * 0.28,
      secondary,
      0.14,
    );
    blob(
      center + Offset(size.width * 0.04, size.height * 0.26),
      size.width * 0.18,
      colorScheme.primary,
      0.08,
    );

    final ringPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.4
      ..color = primary.withValues(alpha: 0.22);
    canvas.drawCircle(center, size.width * 0.42, ringPaint);

    final dashed = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.6
      ..strokeCap = StrokeCap.round
      ..color = secondary.withValues(alpha: 0.35);

    final radius = size.width * 0.36;
    const dashCount = 28;
    for (var i = 0; i < dashCount; i++) {
      final start = (i / dashCount) * math.pi * 2 + t * 0.6;
      final p1 = Offset(
        center.dx + math.cos(start) * radius,
        center.dy + math.sin(start) * radius,
      );
      final p2 = Offset(
        center.dx + math.cos(start + 0.08) * radius,
        center.dy + math.sin(start + 0.08) * radius,
      );
      if (i.isEven) canvas.drawLine(p1, p2, dashed);
    }

    final sparkle = Paint()..color = secondary.withValues(alpha: 0.55);
    for (final i in [0, 1, 2, 3, 4]) {
      final angle = (i / 5) * math.pi * 2 + t * 0.8;
      final r = size.width * (0.3 + (i.isEven ? 0.08 : 0.02));
      canvas.drawCircle(
        Offset(
          center.dx + math.cos(angle) * r,
          center.dy + math.sin(angle) * r,
        ),
        i.isEven ? 3.2 : 2.1,
        sparkle,
      );
    }
  }

  @override
  bool shouldRepaint(covariant _AtmospherePainter oldDelegate) {
    return oldDelegate.progress != progress ||
        oldDelegate.accent != accent ||
        oldDelegate.colorScheme != colorScheme;
  }
}
