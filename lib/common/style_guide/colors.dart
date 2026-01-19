import 'package:flutter/material.dart';

class AllColors {
  AllColors._();

  // ===========================================================================
  // LIGHT THEME (Concept: "Clean Lab" - #F8FAFC)
  // ===========================================================================

  static const bgPrimary = Color(0xFFF8FAFC); // Lab Slate
  static const bgSecondary = Color(0xFFFFFFFF); // Pure White Cards
  static const bgBrand = Color(0xFF16A34A); // Deep Ascension Green
  static const bgBrandLight = Color(0xFFDCFCE7); // Mint Tint
  static const bgInvert = Color(0xFF0F172A); // Space Navy (Text on Light)

  static const bgButtonPrimary = Color(0xFF16A34A);
  static const bgButtonDisabled = Color(0xFFCBD5E1);

  // Semantic Backgrounds
  static const bgNegative = Color(0xFFFEF2F2);
  static const bgWarning = Color(0xFFFFFBEB);
  static const bgPositive = Color(0xFFF0FDF4);
  static const bgInfo = Color(0xFFF0F9FF);

  // Accents (Mapped to Career Tracks)
  static const bgAccent = Color(0xFFD97706); // Pollen Gold (Secondary)
  static const bgAccentAmber = Color(0xFFD97706); // Bee Track
  static const bgAccentOrchid = Color(0xFF9333EA); // Butterfly Track
  static const bgAccentRosewood = Color(0xFFEA580C); // Ant Track (Orange-ish)
  static const bgAccentTeal = Color(0xFF0D9488); // Dragonfly Track
  static const bgAccentIndigo = Color(0xFF4F46E5); // Firefly Track

  // Extra Accents from your schema
  static const bgAccentSage = Color(0xFF16A34A);
  static const bgAccentMulberry = Color(0xFFBE185D);

  // ===========================================================================
  // DARK THEME (Concept: "Code Hero" - #0F172A)
  // ===========================================================================

  static const bgPrimaryDark =  Color(0xFF0F172A); // Space Navy Color(0x0F172AFF); //TODO CHANGE TO THIS
  static const bgSecondaryDark = Color(0xFF1E293B); // Lighter Navy Cards
  static const bgBrandDark = Color(0xFF4ADE80); // Neon Ascension Green
  static const bgBrandLightDark = Color(0xFF064E3B); // Dark Forest
  static const bgInvertDark = Color(0xFFFFFFFF); // White Text

  static const bgButtonPrimaryDark = Color(0xFF4ADE80); // Neon Green
  static const bgButtonDisabledDark = Color(0xFF334155);

  // Semantic Backgrounds (Dark)
  static const bgNegativeDark = Color(0xFF7F1D1D);
  static const bgWarningDark = Color(0xFF78350F);
  static const bgPositiveDark = Color(0xFF14532D);
  static const bgInfoDark = Color(0xFF0C4A6E);

  // Accents (Dark Mode - Neon)
  static const bgAccentDark = Color(0xFFFFD600); // Electric Pollen
  static const bgAccentAmberDark = Color(0xFFFFD600); // Bee
  static const bgAccentOrchidDark = Color(0xFFC084FC); // Butterfly
  static const bgAccentRosewoodDark = Color(0xFFF97316); // Ant
  static const bgAccentTealDark = Color(0xFF2DD4BF); // Dragonfly
  static const bgAccentIndigoDark = Color(0xFF818CF8); // Firefly

  static const bgAccentSageDark = Color(0xFF4ADE80);
  static const bgAccentMulberryDark = Color(0xFFF472B6);

  // ===========================================================================
  // TEXT COLORS
  // ===========================================================================

  // Light Theme Text
  static const textPrimary = Color(0xFF0F172A); // Deep Navy
  static const textSecondary = Color(0xFF475569); // Slate
  static const textTertiary = Color(0xFF94A3B8); // Muted
  static const textBrand = Color(0xFF16A34A);
  static const textInvert = Color(0xFFFFFFFF);

  static const textButtonPrimary = Color(0xFFFFFFFF);
  static const textButtonSecondary = Color(0xFF0F172A);
  static const textButtonDisabled = Color(0xFF94A3B8);

  static const textNegative = Color(0xFFDC2626);
  static const textWarning = Color(0xFFD97706);
  static const textPositive = Color(0xFF16A34A);
  static const textInfo = Color(0xFF0284C7);
  static const textDisabled = Color(0xFFCBD5E1);

  // Dark Theme Text
  static const textPrimaryDark = Color(0xFFFFFFFF);
  static const textSecondaryDark = Color(0xFF94A3B8);
  static const textTertiaryDark = Color(0xFF64748B);
  static const textBrandDark = Color(0xFF4ADE80);
  static const textInvertDark = Color(0xFF0F172A);

  static const textButtonPrimaryDark = Color(
    0xFF0F172A,
  ); // Dark text on Neon Button
  static const textButtonSecondaryDark = Color(0xFFFFFFFF);
  static const textButtonDisabledDark = Color(0xFF64748B);

  static const textNegativeDark = Color(0xFFFF5252);
  static const textWarningDark = Color(0xFFFFD600);
  static const textPositiveDark = Color(0xFF4ADE80);
  static const textInfoDark = Color(0xFF38BDF8);
  static const textDisabledDark = Color(0xFF475569);

  // ===========================================================================
  // ICON COLORS
  // ===========================================================================

  // Light Theme Icons
  static const iconsPrimary = Color(0xFF0F172A);
  static const iconsSecondary = Color(0xFF475569);
  static const iconsTertiary = Color(0xFF94A3B8);
  static const iconsBrand = Color(0xFF16A34A);
  static const iconsInvert = Color(0xFFFFFFFF);

  static const iconsButtonPrimary = Color(0xFFFFFFFF);
  static const iconsButtonSecondary = Color(0xFF0F172A);
  static const iconsButtonDisabled = Color(0xFF94A3B8);

  static const iconsNegative = Color(0xFFDC2626);
  static const iconsWarning = Color(0xFFD97706);
  static const iconsPositive = Color(0xFF16A34A);
  static const iconsInfo = Color(0xFF0284C7);
  static const iconsDisabled = Color(0xFFCBD5E1);

  // Accents (Icons)
  static const iconsAccentAmber = Color(0xFFD97706);
  static const iconsAccentOrchid = Color(0xFF9333EA);
  static const iconsAccentRosewood = Color(0xFFEA580C);
  static const iconsAccentTeal = Color(0xFF0D9488);
  static const iconsAccentIndigo = Color(0xFF4F46E5);
  static const iconsAccentSage = Color(0xFF16A34A);
  static const iconsAccentMulberry = Color(0xFFBE185D);

  // Dark Theme Icons
  static const iconsPrimaryDark = Color(0xFFFFFFFF);
  static const iconsSecondaryDark = Color(0xFF94A3B8);
  static const iconsTertiaryDark = Color(0xFF64748B);
  static const iconsBrandDark = Color(0xFF4ADE80);
  static const iconsInvertDark = Color(0xFF0F172A);

  static const iconsButtonPrimaryDark = Color(0xFF0F172A);
  static const iconsButtonSecondaryDark = Color(0xFFFFFFFF);
  static const iconsButtonDisabledDark = Color(0xFF64748B);

  static const iconsNegativeDark = Color(0xFFFF5252);
  static const iconsWarningDark = Color(0xFFFFD600);
  static const iconsPositiveDark = Color(0xFF4ADE80);
  static const iconsInfoDark = Color(0xFF38BDF8);
  static const iconsDisabledDark = Color(0xFF475569);

  // Accents (Icons Dark)
  static const iconsAccentAmberDark = Color(0xFFFFD600);
  static const iconsAccentOrchidDark = Color(0xFFC084FC);
  static const iconsAccentRosewoodDark = Color(0xFFF97316);
  static const iconsAccentTealDark = Color(0xFF2DD4BF);
  static const iconsAccentIndigoDark = Color(0xFF818CF8);
  static const iconsAccentSageDark = Color(0xFF4ADE80);
  static const iconsAccentMulberryDark = Color(0xFFF472B6);

  // ===========================================================================
  // BORDER COLORS
  // ===========================================================================

  // Light Theme Borders
  static const borderPrimary = Color(0xFFE2E8F0);
  static const borderSecondary = Color(0xFFCBD5E1);
  static const borderBrand = Color(0xFF16A34A);
  static const borderInvert = Color(0xFF0F172A);
  static const borderButtonSecondary = Color(0xFF0F172A);
  static const borderButtonDisabled = Color(0xFFCBD5E1);
  static const borderNegative = Color(0xFFDC2626);
  static const borderWarning = Color(0xFFD97706);
  static const borderPositive = Color(0xFF16A34A);
  static const borderInfo = Color(0xFF0284C7);
  static const borderDisabled = Color(0xFFF1F5F9);

  // Dark Theme Borders
  static const borderPrimaryDark = Color(0xFF334155);
  static const borderSecondaryDark = Color(0xFF475569);
  static const borderBrandDark = Color(0xFF4ADE80);
  static const borderInvertDark = Color(0xFFFFFFFF);
  static const borderButtonSecondaryDark = Color(0xFFFFFFFF);
  static const borderButtonDisabledDark = Color(0xFF334155);
  static const borderNegativeDark = Color(0xFFFF5252);
  static const borderWarningDark = Color(0xFFFFD600);
  static const borderPositiveDark = Color(0xFF4ADE80);
  static const borderInfoDark = Color(0xFF38BDF8);
  static const borderDisabledDark = Color(0xFF1E293B);

  // ===========================================================================
  // SPLASH & LEGACY
  // ===========================================================================

  // Light Theme Splash Colors
  static const bgTileSplash = Color(0xFF0F172A);
  static const bgButtonPrimarySplash = Color(0xFF16A34A);
  static const bgButtonSecondarySplash = Color(0xFFDCFCE7);
  static const bgIconWithBgSplash = Color(0xFFDCFCE7);
  static const borderButtonSecondarySplash = Color(0xFF16A34A);
  static const iconsSplash = Color(0xFF16A34A);

  // Dark Theme Splash Colors
  static const bgTileSplashDark = Color(0xFFFFFFFF);
  static const bgButtonPrimarySplashDark = Color(0xFF4ADE80);
  static const bgButtonSecondarySplashDark = Color(0xFF064E3B);
  static const bgIconWithBgSplashDark = Color(0xFF064E3B);
  static const borderButtonSecondarySplashDark = Color(0xFF4ADE80);
  static const iconsSplashDark = Color(0xFF4ADE80);

  // Learning Info Screen Colors (Dark Mode)
  static const learningInfoDarkBlue = Color(0xFF0F172A);
  static const learningInfoCardBg = Color(0xFF1E293B);
  static const learningInfoBorder = Color(0xFF334155);
  static const learningInfoYellow = Color(0xFFFFD600);
  static const learningInfoGold = Color(0xFFF59E0B);
  static const learningInfoTextGray = Color(0xFF94A3B8);
  static const learningInfoCyan = Color(0xFF38BDF8);
  static const learningInfoGreen = Color(0xFF4ADE80);
  static const learningInfoDarkGreen = Color(0xFF15803D);
  static const learningInfoRed = Color(0xFFFF5252);
  static const learningInfoIconGray = Color(0xFF64748B);
  static const learningInfoLeafDarkGreen = Color(0xFF22C55E);

  // Learning Info Screen Colors (Light Mode)
  static const learningInfoDarkBlueLight = Color(
    0xFFF8FAFC,
  ); // Light background
  static const learningInfoCardBgLight = Color(0xFFFFFFFF); // White cards
  static const learningInfoBorderLight = Color(0xFFE2E8F0); // Light border
  static const learningInfoYellowLight = Color(0xFFD97706); // Deep Amber
  static const learningInfoGoldLight = Color(
    0xFFB45309,
  ); // Darker gold for light mode
  static const learningInfoTextGrayLight = Color(0xFF475569); // Slate gray
  static const learningInfoCyanLight = Color(0xFF0284C7); // Deep blue
  static const learningInfoGreenLight = Color(0xFF16A34A); // Deep green
  static const learningInfoDarkGreenLight = Color(
    0xFF15803D,
  ); // Same dark green
  static const learningInfoRedLight = Color(0xFFDC2626); // Deep red
  static const learningInfoIconGrayLight = Color(0xFF64748B); // Same gray
  static const learningInfoLeafDarkGreenLight = Color(
    0xFF16A34A,
  ); // Deep green for leaves

  // Helpers
  static Color black = const Color(0xFF000000);
  static Color white = const Color(0xFFFFFFFF);
  static Color transparent = Colors.transparent;
}
