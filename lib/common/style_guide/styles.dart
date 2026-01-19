part of 'style_guide.dart';

class AllStyles {
  AllStyles._();

  static const String fontFamilyUI = 'Manrope';
  static const String fontFamilyCode = 'JetBrains Mono';

  // ===========================================================================
  // DISPLAY STYLES (Hero Headers, Splash Text)
  // Font: Manrope (UI)
  // ===========================================================================
  
  static const displayLarge = TextStyle(
    fontSize: 57, 
    fontWeight: FontWeight.w800, // ExtraBold for impact
    height: 1.12, // 64/57
    letterSpacing: -0.25,
    fontFamily: fontFamilyUI,
    color: AllColors.textPrimaryDark, // Defaulting to Dark/Base color
  );

  static const displayMedium = TextStyle(
    fontSize: 45,
    fontWeight: FontWeight.w700, // Bold
    height: 1.15, // 52/45
    letterSpacing: 0.0,
    fontFamily: fontFamilyUI,
    color: AllColors.textPrimaryDark,
  );

  static const displaySmall = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w700,
    height: 1.22, // 44/36
    letterSpacing: 0.0,
    fontFamily: fontFamilyUI,
    color: AllColors.textPrimaryDark,
  );

  // ===========================================================================
  // HEADLINE STYLES (Page Titles, Section Headers)
  // Font: Manrope (UI)
  // ===========================================================================

  static const headlineLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w600, // SemiBold
    height: 1.25, // 40/32
    letterSpacing: 0.0,
    fontFamily: fontFamilyUI,
    color: AllColors.textPrimaryDark,
  );

  static const headlineMedium = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    height: 1.28, // 36/28
    letterSpacing: 0.0,
    fontFamily: fontFamilyUI,
    color: AllColors.textPrimaryDark,
  );

  static const headlineSmall = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1.33, // 32/24
    letterSpacing: 0.0,
    fontFamily: fontFamilyUI,
    color: AllColors.textPrimaryDark,
  );

  // ===========================================================================
  // TITLE STYLES (Card Titles, List Items)
  // Font: Manrope (UI)
  // ===========================================================================

  static const titleLarge = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500, // Medium
    height: 1.27, // 28/22
    letterSpacing: 0.0,
    fontFamily: fontFamilyUI,
    color: AllColors.textPrimaryDark,
  );

  static const titleMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600, // SemiBold for emphasis at small size
    height: 1.5, // 24/16
    letterSpacing: 0.15,
    fontFamily: fontFamilyUI,
    color: AllColors.textPrimaryDark,
  );

  static const titleSmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.43, // 20/14
    letterSpacing: 0.1,
    fontFamily: fontFamilyUI,
    color: AllColors.textPrimaryDark,
  );

  // ===========================================================================
  // BODY STYLES (Paragraphs, Descriptions)
  // Font: Manrope (UI)
  // ===========================================================================

  static const bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400, // Regular
    height: 1.5, // 24/16
    letterSpacing: 0.5,
    fontFamily: fontFamilyUI,
    color: AllColors.textSecondaryDark,
  );

  static const bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.43, // 20/14
    letterSpacing: 0.25,
    fontFamily: fontFamilyUI,
    color: AllColors.textSecondaryDark,
  );

  static const bodySmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.33, // 16/12
    letterSpacing: 0.4,
    fontFamily: fontFamilyUI,
    color: AllColors.textTertiaryDark,
  );

  // ===========================================================================
  // LABEL STYLES (Buttons, Tags, Metadata)
  // Font: Manrope (UI) -- Used for UI elements
  // ===========================================================================

  static const labelLarge = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600, // SemiBold
    height: 1.43, // 20/14
    letterSpacing: 0.1,
    fontFamily: fontFamilyUI,
    color: AllColors.textPrimaryDark,
  );

  static const labelMedium = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 1.33, // 16/12
    letterSpacing: 0.5,
    fontFamily: fontFamilyUI,
    color: AllColors.textSecondaryDark,
  );

  static const labelSmall = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w600,
    height: 1.45, // 16/11
    letterSpacing: 0.5,
    fontFamily: fontFamilyUI,
    color: AllColors.textTertiaryDark,
  );
      
  // ===========================================================================
  // CODE & DATA STYLES (Snippets, Stats, Pollen Count)
  // Font: JetBrains Mono (Code) -- The "Dev" Vibe
  // ===========================================================================

  static const codeLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.5,
    letterSpacing: 0.0,
    fontFamily: fontFamilyCode,
    color: AllColors.textPrimaryDark,
  );

  static const codeMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.43,
    letterSpacing: 0.0,
    fontFamily: fontFamilyCode,
    color: AllColors.textPrimaryDark,
  );

  static const codeSmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.33,
    letterSpacing: 0.0,
    fontFamily: fontFamilyCode,
    color: AllColors.textSecondaryDark,
  );
      
  // Special Style for "Pollen Count" and "Streaks" (Bold & Mono)
  static const statValue = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700, // Bold
    height: 1.0,
    letterSpacing: -1.0, // Tight tracking for numbers
    fontFamily: fontFamilyCode,
    color: AllColors.textPrimaryDark,
  );
}
