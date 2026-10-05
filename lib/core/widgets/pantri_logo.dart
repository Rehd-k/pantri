import 'package:flutter/material.dart';

/// Brand asset variants shipped under `assets/`.
enum PantriLogoVariant {
  /// Square colored app mark.
  mark,

  /// Horizontal colored lockup (icon + wordmark).
  lockup,

  /// Wordmark only.
  wordmark,
}

/// Renders the correct Pantri PNG for the current brightness / surface.
class PantriLogo extends StatelessWidget {
  const PantriLogo({
    super.key,
    this.variant = PantriLogoVariant.mark,
    this.height = 28,
    this.forceTone,
  });

  final PantriLogoVariant variant;
  final double height;

  /// When set, ignores theme brightness (`light` → colored, `dark` → white).
  final Brightness? forceTone;

  @override
  Widget build(BuildContext context) {
    final brightness =
        forceTone ?? Theme.of(context).brightness;
    final dark = brightness == Brightness.dark;
    final asset = switch (variant) {
      PantriLogoVariant.mark =>
        dark ? 'assets/white_logo.png' : 'assets/colored_logo.png',
      PantriLogoVariant.lockup => dark
          ? 'assets/white_logo_and_name.png'
          : 'assets/colored_logo_and_name.png',
      PantriLogoVariant.wordmark =>
        dark ? 'assets/white_name.png' : 'assets/colored_name.png',
    };

    final aspect = switch (variant) {
      PantriLogoVariant.mark => 1.0,
      PantriLogoVariant.lockup => 2208 / 571,
      PantriLogoVariant.wordmark => 1461 / 441,
    };

    return Image.asset(
      asset,
      height: height,
      width: height * aspect,
      fit: BoxFit.contain,
      filterQuality: FilterQuality.high,
      semanticLabel: 'Pantri',
    );
  }
}
