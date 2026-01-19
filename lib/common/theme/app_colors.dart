// ignore_for_file: avoid_positional_boolean_parameters

part of 'app_theme.dart';

class AppColors {
  AppColors(this.isDark);

  final bool isDark;

  // Backgrounds
  Color get bgPrimary => isDark ? AllColors.bgPrimaryDark : AllColors.bgPrimary;
  Color get bgSecondary =>
      isDark ? AllColors.bgSecondaryDark : AllColors.bgSecondary;
  Color get bgBrand => isDark ? AllColors.bgBrandDark : AllColors.bgBrand;
  Color get bgBrandLight =>
      isDark ? AllColors.bgBrandLightDark : AllColors.bgBrandLight;
  Color get bgInvert => isDark ? AllColors.bgInvertDark : AllColors.bgInvert;

  // Buttons
  Color get bgButtonPrimary =>
      isDark ? AllColors.bgButtonPrimaryDark : AllColors.bgButtonPrimary;
  Color get bgButtonDisabled =>
      isDark ? AllColors.bgButtonDisabledDark : AllColors.bgButtonDisabled;
  Color get bgButtonSecondary => isDark
      ? AllColors.bgSecondaryDark
      : AllColors.bgSecondary; // Assuming secondary bg

  // Semantic Backgrounds
  Color get bgNegative =>
      isDark ? AllColors.bgNegativeDark : AllColors.bgNegative;
  Color get bgWarning => isDark ? AllColors.bgWarningDark : AllColors.bgWarning;
  Color get bgPositive =>
      isDark ? AllColors.bgPositiveDark : AllColors.bgPositive;
  Color get bgInfo => isDark ? AllColors.bgInfoDark : AllColors.bgInfo;

  // Accents (Mapped to Pollenair Tracks)
  Color get bgAccent => isDark ? AllColors.bgAccentDark : AllColors.bgAccent;
  Color get bgAccentAmber =>
      isDark ? AllColors.bgAccentAmberDark : AllColors.bgAccentAmber;
  Color get bgAccentOrchid =>
      isDark ? AllColors.bgAccentOrchidDark : AllColors.bgAccentOrchid;
  Color get bgAccentRosewood =>
      isDark ? AllColors.bgAccentRosewoodDark : AllColors.bgAccentRosewood;
  Color get bgAccentTeal =>
      isDark ? AllColors.bgAccentTealDark : AllColors.bgAccentTeal;
  Color get bgAccentIndigo =>
      isDark ? AllColors.bgAccentIndigoDark : AllColors.bgAccentIndigo;
  Color get bgAccentSage =>
      isDark ? AllColors.bgAccentSageDark : AllColors.bgAccentSage;
  Color get bgAccentMulberry =>
      isDark ? AllColors.bgAccentMulberryDark : AllColors.bgAccentMulberry;

  // Text
  Color get textPrimary =>
      isDark ? AllColors.textPrimaryDark : AllColors.textPrimary;
  Color get textSecondary =>
      isDark ? AllColors.textSecondaryDark : AllColors.textSecondary;
  Color get textTertiary =>
      isDark ? AllColors.textTertiaryDark : AllColors.textTertiary;
  Color get textBrand => isDark
      ? AllColors.textBrandDark
      : AllColors.textBrand; // Note flip for visibility
  Color get textInvert =>
      isDark ? AllColors.textInvertDark : AllColors.textInvert;

  Color get textButtonPrimary =>
      isDark ? AllColors.textButtonPrimaryDark : AllColors.textButtonPrimary;
  Color get textButtonSecondary => isDark
      ? AllColors.textButtonSecondaryDark
      : AllColors.textButtonSecondary;
  Color get textButtonDisabled =>
      isDark ? AllColors.textButtonDisabledDark : AllColors.textButtonDisabled;

  Color get textNegative =>
      isDark ? AllColors.textNegativeDark : AllColors.textNegative;
  Color get textWarning =>
      isDark ? AllColors.textWarningDark : AllColors.textWarning;
  Color get textPositive =>
      isDark ? AllColors.textPositiveDark : AllColors.textPositive;
  Color get textInfo => isDark ? AllColors.textInfoDark : AllColors.textInfo;
  Color get textDisabled =>
      isDark ? AllColors.textDisabledDark : AllColors.textDisabled;

  // Icons
  Color get iconsPrimary =>
      isDark ? AllColors.iconsPrimaryDark : AllColors.iconsPrimary;
  Color get iconsSecondary =>
      isDark ? AllColors.iconsSecondaryDark : AllColors.iconsSecondary;
  Color get iconsTertiary =>
      isDark ? AllColors.iconsTertiaryDark : AllColors.iconsTertiary;
  Color get iconsBrand =>
      isDark ? AllColors.iconsBrandDark : AllColors.iconsBrand;
  Color get iconsInvert =>
      isDark ? AllColors.iconsInvertDark : AllColors.iconsInvert;

  Color get iconsButtonPrimary =>
      isDark ? AllColors.iconsButtonPrimaryDark : AllColors.iconsButtonPrimary;
  Color get iconsButtonSecondary => isDark
      ? AllColors.iconsButtonSecondaryDark
      : AllColors.iconsButtonSecondary;
  Color get iconsButtonDisabled => isDark
      ? AllColors.iconsButtonDisabledDark
      : AllColors.iconsButtonDisabled;

  Color get iconsNegative =>
      isDark ? AllColors.iconsNegativeDark : AllColors.iconsNegative;
  Color get iconsWarning =>
      isDark ? AllColors.iconsWarningDark : AllColors.iconsWarning;
  Color get iconsPositive =>
      isDark ? AllColors.iconsPositiveDark : AllColors.iconsPositive;
  Color get iconsInfo => isDark ? AllColors.iconsInfoDark : AllColors.iconsInfo;
  Color get iconsDisabled =>
      isDark ? AllColors.iconsDisabledDark : AllColors.iconsDisabled;

  // Icon Accents
  Color get iconsAccentAmber =>
      isDark ? AllColors.iconsAccentAmberDark : AllColors.iconsAccentAmber;
  Color get iconsAccentOrchid =>
      isDark ? AllColors.iconsAccentOrchidDark : AllColors.iconsAccentOrchid;
  Color get iconsAccentRosewood => isDark
      ? AllColors.iconsAccentRosewoodDark
      : AllColors.iconsAccentRosewood;
  Color get iconsAccentTeal =>
      isDark ? AllColors.iconsAccentTealDark : AllColors.iconsAccentTeal;
  Color get iconsAccentIndigo =>
      isDark ? AllColors.iconsAccentIndigoDark : AllColors.iconsAccentIndigo;
  Color get iconsAccentSage =>
      isDark ? AllColors.iconsAccentSageDark : AllColors.iconsAccentSage;
  Color get iconsAccentMulberry => isDark
      ? AllColors.iconsAccentMulberryDark
      : AllColors.iconsAccentMulberry;

  // Borders
  Color get borderPrimary =>
      isDark ? AllColors.borderPrimaryDark : AllColors.borderPrimary;
  Color get borderSecondary =>
      isDark ? AllColors.borderSecondaryDark : AllColors.borderSecondary;
  Color get borderBrand =>
      isDark ? AllColors.borderBrandDark : AllColors.borderBrand;
  Color get borderInvert =>
      isDark ? AllColors.borderInvertDark : AllColors.borderInvert;

  Color get borderButtonSecondary => isDark
      ? AllColors.borderButtonSecondaryDark
      : AllColors.borderButtonSecondary;
  Color get borderButtonDisabled => isDark
      ? AllColors.borderButtonDisabledDark
      : AllColors.borderButtonDisabled;

  Color get borderNegative =>
      isDark ? AllColors.borderNegativeDark : AllColors.borderNegative;
  Color get borderWarning =>
      isDark ? AllColors.borderWarningDark : AllColors.borderWarning;
  Color get borderPositive =>
      isDark ? AllColors.borderPositiveDark : AllColors.borderPositive;
  Color get borderInfo =>
      isDark ? AllColors.borderInfoDark : AllColors.borderInfo;
  Color get borderDisabled =>
      isDark ? AllColors.borderDisabledDark : AllColors.borderDisabled;

  // Splash
  Color get bgTileSplash =>
      isDark ? AllColors.bgTileSplashDark : AllColors.bgTileSplash;
  Color get bgButtonPrimarySplash => isDark
      ? AllColors.bgButtonPrimarySplashDark
      : AllColors.bgButtonPrimarySplash;
  Color get bgButtonSecondarySplash => isDark
      ? AllColors.bgButtonSecondarySplashDark
      : AllColors.bgButtonSecondarySplash;
  Color get bgIconWithBgSplash =>
      isDark ? AllColors.bgIconWithBgSplashDark : AllColors.bgIconWithBgSplash;
  Color get borderButtonSecondarySplash => isDark
      ? AllColors.borderButtonSecondarySplashDark
      : AllColors.borderButtonSecondarySplash;
  Color get iconsSplash =>
      isDark ? AllColors.iconsSplashDark : AllColors.iconsSplash;

  // Specific Learning Info (Theme-aware)
  Color get learningInfoDarkBlue => isDark
      ? AllColors.learningInfoDarkBlue
      : AllColors.learningInfoDarkBlueLight;
  Color get learningInfoCardBg =>
      isDark ? AllColors.learningInfoCardBg : AllColors.learningInfoCardBgLight;
  Color get learningInfoBorder =>
      isDark ? AllColors.learningInfoBorder : AllColors.learningInfoBorderLight;
  Color get learningInfoYellow =>
      isDark ? AllColors.learningInfoYellow : AllColors.learningInfoYellowLight;
  Color get learningInfoGold =>
      isDark ? AllColors.learningInfoGold : AllColors.learningInfoGoldLight;
  Color get learningInfoTextGray => isDark
      ? AllColors.learningInfoTextGray
      : AllColors.learningInfoTextGrayLight;
  Color get learningInfoCyan =>
      isDark ? AllColors.learningInfoCyan : AllColors.learningInfoCyanLight;
  Color get learningInfoGreen =>
      isDark ? AllColors.learningInfoGreen : AllColors.learningInfoGreenLight;
  Color get learningInfoDarkGreen => isDark
      ? AllColors.learningInfoDarkGreen
      : AllColors.learningInfoDarkGreenLight;
  Color get learningInfoRed =>
      isDark ? AllColors.learningInfoRed : AllColors.learningInfoRedLight;
  Color get learningInfoIconGray => isDark
      ? AllColors.learningInfoIconGray
      : AllColors.learningInfoIconGrayLight;
  Color get learningInfoLeafDarkGreen => isDark
      ? AllColors.learningInfoLeafDarkGreen
      : AllColors.learningInfoLeafDarkGreenLight;
}
