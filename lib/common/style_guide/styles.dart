part of 'style_guide.dart';

class AppTypography {
  AppTypography._();

  static const String fontFamilyUI = 'BalooBhaijaan2';
  static const String fontFamilyUISecondary = 'Plus Jakarta Sans';
  static const String balooBhaijaan = 'BalooBhaijaan2';

  static const displayLarge = TextStyle(
    fontSize: 57,
    fontWeight: FontWeight.w800, // ExtraBold for impact
    height: 1.12, // 64/57
    letterSpacing: -0.25,
    fontFamily: fontFamilyUI,
  );

  static const displayMedium = TextStyle(
    fontSize: 45,
    fontWeight: FontWeight.w700, // Bold
    height: 1.15, // 52/45
    letterSpacing: 0,
    fontFamily: fontFamilyUI,
  );

  static const displaySmall = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w700,
    height: 1.22, // 44/36
    letterSpacing: 0,
    fontFamily: fontFamilyUI,
  );

  static const headlineLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w600, // SemiBold
    height: 1.25, // 40/32
    letterSpacing: 0,
    fontFamily: fontFamilyUI,
  );

  static const headlineMedium = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    height: 1.28, // 36/28
    letterSpacing: 0,
    fontFamily: fontFamilyUI,
  );

  static const headlineSmall = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1.33, // 32/24
    letterSpacing: 0,
    fontFamily: fontFamilyUI,
  );

  // ===========================================================================
  // TITLE STYLES (Card Titles, List Items)
  // Font: Manrope (UI)
  // ===========================================================================

  static const titleLarge = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500, // Medium
    height: 1.27, // 28/22
    letterSpacing: 0,
    fontFamily: fontFamilyUI,
  );

  static const titleMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600, // SemiBold for emphasis at small size
    height: 1.5, // 24/16
    letterSpacing: 0.15,
    fontFamily: fontFamilyUI,
  );

  static const titleSmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.43, // 20/14
    letterSpacing: 0.1,
    fontFamily: fontFamilyUI,
  );

  static const bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400, // Regular
    height: 1.5, // 24/16
    letterSpacing: 0.5,
    fontFamily: fontFamilyUI,
  );

  static const bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.43, // 20/14
    letterSpacing: 0.25,
    fontFamily: fontFamilyUI,
  );

  static const bodySmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.33, // 16/12
    letterSpacing: 0.4,
    fontFamily: fontFamilyUI,
  );

  static const labelLarge = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600, // SemiBold
    height: 1.43, // 20/14
    letterSpacing: 0.1,
    fontFamily: fontFamilyUI,
  );

  static const labelMedium = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 1.33, // 16/12
    letterSpacing: 0.5,
    fontFamily: fontFamilyUI,
  );

  static const labelSmall = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w600,
    height: 1.45, // 16/11
    letterSpacing: 0.5,
    fontFamily: fontFamilyUI,
  );
}
