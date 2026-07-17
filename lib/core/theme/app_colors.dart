import 'package:flutter/material.dart';

/// Pantri brand color tokens. Widgets must use [ThemeData.colorScheme], not these
/// constants directly — except when building [ColorScheme]s in [AppColors].
abstract final class AppColors {
  static const Color primary = Color(0xFF1B7A4E);
  static const Color primaryDark = Color(0xFF4CAF7A);
  static const Color onPrimary = Color(0xFFFFFFFF);

  static const Color secondary = Color(0xFFE8A317);
  static const Color onSecondary = Color(0xFF1A1400);

  static const Color tertiary = Color(0xFF2D6A8F);
  static const Color onTertiary = Color(0xFFFFFFFF);

  static const Color error = Color(0xFFC62828);
  static const Color onError = Color(0xFFFFFFFF);

  static const Color surfaceLight = Color(0xFFF7F9F6);
  static const Color surfaceContainerLight = Color(0xFFFFFFFF);
  static const Color onSurfaceLight = Color(0xFF1A221C);
  static const Color outlineLight = Color(0xFFC5CDC6);

  static const Color surfaceDark = Color(0xFF121A16);
  static const Color surfaceContainerDark = Color(0xFF1C2620);
  static const Color onSurfaceDark = Color(0xFFE4EBE5);
  static const Color outlineDark = Color(0xFF4A564E);

  static ColorScheme get lightScheme {
    return ColorScheme.fromSeed(
      seedColor: primary,
      brightness: Brightness.light,
      primary: primary,
      onPrimary: onPrimary,
      secondary: secondary,
      onSecondary: onSecondary,
      tertiary: tertiary,
      onTertiary: onTertiary,
      error: error,
      onError: onError,
      surface: surfaceLight,
      onSurface: onSurfaceLight,
      outline: outlineLight,
    ).copyWith(
      surfaceContainerHighest: surfaceContainerLight,
      surfaceContainer: surfaceContainerLight,
      primaryContainer: const Color(0xFFD4EEDF),
      onPrimaryContainer: const Color(0xFF0A3D24),
      secondaryContainer: const Color(0xFFFFE8B8),
      onSecondaryContainer: const Color(0xFF3D2A00),
      tertiaryContainer: const Color(0xFFD0E4F2),
      onTertiaryContainer: const Color(0xFF0F3548),
      errorContainer: const Color(0xFFFFDAD6),
      onErrorContainer: const Color(0xFF410002),
    );
  }

  static ColorScheme get darkScheme {
    return ColorScheme.fromSeed(
      seedColor: primaryDark,
      brightness: Brightness.dark,
      primary: primaryDark,
      onPrimary: const Color(0xFF003920),
      secondary: secondary,
      onSecondary: onSecondary,
      tertiary: const Color(0xFF7EB3D4),
      onTertiary: const Color(0xFF00344F),
      error: const Color(0xFFFFB4AB),
      onError: const Color(0xFF690005),
      surface: surfaceDark,
      onSurface: onSurfaceDark,
      outline: outlineDark,
    ).copyWith(
      surfaceContainerHighest: surfaceContainerDark,
      surfaceContainer: surfaceContainerDark,
      primaryContainer: const Color(0xFF0F5C38),
      onPrimaryContainer: const Color(0xFFD4EEDF),
      secondaryContainer: const Color(0xFF5C4200),
      onSecondaryContainer: const Color(0xFFFFE8B8),
      tertiaryContainer: const Color(0xFF1A4A66),
      onTertiaryContainer: const Color(0xFFD0E4F2),
      errorContainer: const Color(0xFF93000A),
      onErrorContainer: const Color(0xFFFFDAD6),
    );
  }
}
