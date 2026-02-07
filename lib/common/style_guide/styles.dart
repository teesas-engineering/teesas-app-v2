part of 'style_guide.dart';

class AppTypography {
  AppTypography._();

  static const String fontFamilyUI = 'BalooBhaijaan2';
  static const String fontFamilyUISecondary = 'Plus Jakarta Sans';
  static const String balooBhaijaan = 'BalooBhaijaan2';

  // ===========================================================================
  // LABEL STYLES (normal weight)
  // ===========================================================================

  static const label8 = TextStyle(
    fontSize: 8,
    fontWeight: FontWeight.w400,
    height: 1.25,
    letterSpacing: 0,
    fontFamily: fontFamilyUI,
  );

  static const label10 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    height: 1.3,
    letterSpacing: 0,
    fontFamily: fontFamilyUI,
  );

  static const label11 = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    height: 1.45,
    letterSpacing: 0.5,
    fontFamily: fontFamilyUI,
  );

  static const label12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.33,
    letterSpacing: 0.5,
    fontFamily: fontFamilyUI,
  );

  // ===========================================================================
  // BODY STYLES (normal weight)
  // ===========================================================================

  static const body11 = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    height: 1.45,
    letterSpacing: 0.25,
    fontFamily: fontFamilyUI,
  );

  static const body12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.33,
    letterSpacing: 0.4,
    fontFamily: fontFamilyUI,
  );

  static const body14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.43,
    letterSpacing: 0.25,
    fontFamily: fontFamilyUI,
  );

  static const body16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
    fontFamily: fontFamilyUI,
  );

  static const body18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    height: 1.44,
    letterSpacing: 0.15,
    fontFamily: fontFamilyUI,
  );

  // ===========================================================================
  // TITLE STYLES (bold weight)
  // ===========================================================================

  static const title14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    height: 1.43,
    letterSpacing: 0.25,
    fontFamily: fontFamilyUI,
  );

  static const title16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 1.5,
    letterSpacing: 0.15,
    fontFamily: fontFamilyUI,
  );

  static const title18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    height: 1.33,
    letterSpacing: 0,
    fontFamily: fontFamilyUI,
  );

  static const title20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    height: 1.3,
    letterSpacing: 0,
    fontFamily: fontFamilyUI,
  );

  static const title22 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    height: 1.27,
    letterSpacing: 0,
    fontFamily: fontFamilyUI,
  );

  static const title24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 1.33,
    letterSpacing: 0,
    fontFamily: fontFamilyUI,
  );

  // ===========================================================================
  // DISPLAY STYLES (bold weight)
  // ===========================================================================

  static const display22 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    height: 1.27,
    letterSpacing: 0,
    fontFamily: fontFamilyUI,
  );

  static const display24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 1.33,
    letterSpacing: 0,
    fontFamily: fontFamilyUI,
  );

  static const display26 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w700,
    height: 1.3,
    letterSpacing: 0,
    fontFamily: fontFamilyUI,
  );

  static const display28 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    height: 1.28,
    letterSpacing: 0,
    fontFamily: fontFamilyUI,
  );

  static const display32 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 1.25,
    letterSpacing: 0,
    fontFamily: fontFamilyUI,
  );

  static const display36 = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w700,
    height: 1.22,
    letterSpacing: 0,
    fontFamily: fontFamilyUI,
  );

  // ===========================================================================
  // LEGACY ALIASES (map old names to new naming scheme for backward compatibility)
  // ===========================================================================

  static const displaySmall = display36;
  static const headlineLarge = display32;
  static const headlineMedium = display28;
  static const headlineSmall = display24;
  static const titleLarge = title22;
  static const titleMedium = title16;
  static const titleSmall = title16;
  static const bodyLarge = body16;
  static const bodyMedium = body14;
  static const bodySmall = body12;
  static const labelLarge = label12;
  static const labelMedium = label12;
  static const labelSmall = label11;
}
