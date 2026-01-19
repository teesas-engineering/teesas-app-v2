// ignore_for_file: avoid_positional_boolean_parameters

part of 'app_theme.dart';

class AppStyles {
  AppStyles(this.isDark);

  final bool isDark;

  // Create a local instance of AppColors to resolve dynamic colors based on isDark
  AppColors get colors => AppColors(isDark);

  // ===========================================================================
  // DISPLAY STYLES (Hero Headers, Splash Text)
  // Font: Manrope (UI)
  // ===========================================================================

  TextStyle get displayLarge =>
      AllStyles.displayLarge.copyWith(color: colors.textPrimary);

  TextStyle get displayMedium =>
      AllStyles.displayMedium.copyWith(color: colors.textPrimary);

  TextStyle get displaySmall =>
      AllStyles.displaySmall.copyWith(color: colors.textPrimary);

  // ===========================================================================
  // HEADLINE STYLES (Page Titles, Section Headers)
  // Font: Manrope (UI)
  // ===========================================================================

  TextStyle get headlineLarge =>
      AllStyles.headlineLarge.copyWith(color: colors.textPrimary);

  TextStyle get headlineMedium =>
      AllStyles.headlineMedium.copyWith(color: colors.textPrimary);

  TextStyle get headlineSmall =>
      AllStyles.headlineSmall.copyWith(color: colors.textPrimary);

  // ===========================================================================
  // TITLE STYLES (Card Titles, List Items)
  // Font: Manrope (UI)
  // ===========================================================================

  TextStyle get titleLarge =>
      AllStyles.titleLarge.copyWith(color: colors.textPrimary);

  TextStyle get titleMedium =>
      AllStyles.titleMedium.copyWith(color: colors.textPrimary);

  TextStyle get titleSmall =>
      AllStyles.titleSmall.copyWith(color: colors.textPrimary);

  // ===========================================================================
  // BODY STYLES (Paragraphs, Descriptions)
  // Font: Manrope (UI)
  // ===========================================================================

  TextStyle get bodyLarge =>
      AllStyles.bodyLarge.copyWith(color: colors.textSecondary);

  TextStyle get bodyMedium =>
      AllStyles.bodyMedium.copyWith(color: colors.textSecondary);

  TextStyle get bodySmall =>
      AllStyles.bodySmall.copyWith(color: colors.textTertiary);

  // ===========================================================================
  // LABEL STYLES (Buttons, Tags, Metadata)
  // Font: Manrope (UI) -- Used for UI elements
  // ===========================================================================

  TextStyle get labelLarge =>
      AllStyles.labelLarge.copyWith(color: colors.textPrimary);

  TextStyle get labelMedium =>
      AllStyles.labelMedium.copyWith(color: colors.textSecondary);

  TextStyle get labelSmall =>
      AllStyles.labelSmall.copyWith(color: colors.textTertiary);

  // ===========================================================================
  // CODE & DATA STYLES (Snippets, Stats, Pollen Count)
  // Font: JetBrains Mono (Code) -- The "Dev" Vibe
  // ===========================================================================

  TextStyle get codeLarge =>
      AllStyles.codeLarge.copyWith(color: colors.textPrimary);

  TextStyle get codeMedium =>
      AllStyles.codeMedium.copyWith(color: colors.textPrimary);

  TextStyle get codeSmall =>
      AllStyles.codeSmall.copyWith(color: colors.textSecondary);

  // Special Style for "Pollen Count" and "Streaks" (Bold & Mono)
  TextStyle get statValue =>
      AllStyles.statValue.copyWith(color: colors.textPrimary);
}
