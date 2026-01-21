
part of 'app_theme.dart';

class AppColors {
  AppColors(this.isDark);

  final bool isDark;

  // Backgrounds
  Color get bgPrimary =>  AllColors.bgPrimary;
  Color get bgSecondary => AllColors.bgSecondary;
  Color get bgBrand => AllColors.bgBrand;
  Color get bgBrandLight => AllColors.bgBrandLight;
  Color get bgInvert => AllColors.bgInvert;

  // Buttons
  Color get bgButtonPrimary => AllColors.bgButtonPrimary;
  Color get bgButtonDisabled => AllColors.bgButtonDisabled;
  Color get bgButtonSecondary => AllColors.bgSecondary; // Assuming secondary bg

  // Semantic Backgrounds
  Color get bgNegative => AllColors.bgNegative;
  Color get bgWarning =>  AllColors.bgWarning;
  Color get bgPositive => AllColors.bgPositive;
  Color get bgInfo =>  AllColors.bgInfo;

  // Accents (Mapped to Pollenair Tracks)
  Color get bgAccent =>  AllColors.bgAccent;
  Color get bgAccentAmber => AllColors.bgAccentAmber;
  Color get bgAccentOrchid => AllColors.bgAccentOrchid;
  Color get bgAccentRosewood => AllColors.bgAccentRosewood;
  Color get bgAccentTeal => AllColors.bgAccentTeal;
  Color get bgAccentIndigo => AllColors.bgAccentIndigo;
  Color get bgAccentSage => AllColors.bgAccentSage;
  Color get bgAccentMulberry => AllColors.bgAccentMulberry;

  // Text
  Color get textPrimary => AllColors.textPrimary;
  Color get textSecondary => AllColors.textSecondary;
  Color get textTertiary => AllColors.textTertiary;
  Color get textBrand => AllColors.textBrand; // Note flip for visibility
  Color get textInvert => AllColors.textInvert;

  Color get textButtonPrimary => AllColors.textButtonPrimary;
  Color get textButtonSecondary => AllColors.textButtonSecondary;
  Color get textButtonDisabled => AllColors.textButtonDisabled;

  Color get textNegative => AllColors.textNegative;
  Color get textWarning => AllColors.textWarning;
  Color get textPositive => AllColors.textPositive;
  Color get textInfo =>  AllColors.textInfo;
  Color get textDisabled => AllColors.textDisabled;

  // Icons
  Color get iconsPrimary => AllColors.iconsPrimary;
  Color get iconsSecondary => AllColors.iconsSecondary;
  Color get iconsTertiary => AllColors.iconsTertiary;
  Color get iconsBrand =>AllColors.iconsBrand;
  Color get iconsInvert => AllColors.iconsInvert;

  Color get iconsButtonPrimary => AllColors.iconsButtonPrimary;
  Color get iconsButtonSecondary => AllColors.iconsButtonSecondary;
  Color get iconsButtonDisabled =>AllColors.iconsButtonDisabled;

  Color get iconsNegative => AllColors.iconsNegative;
  Color get iconsWarning =>AllColors.iconsWarning;
  Color get iconsPositive => AllColors.iconsPositive;
  Color get iconsInfo => AllColors.iconsInfo;
  Color get iconsDisabled =>AllColors.iconsDisabled;

  // Icon Accents
  Color get iconsAccentAmber => AllColors.iconsAccentAmber;
  Color get iconsAccentOrchid =>AllColors.iconsAccentOrchid;
  Color get iconsAccentRosewood => AllColors.iconsAccentRosewood;
  Color get iconsAccentTeal => AllColors.iconsAccentTeal;
  Color get iconsAccentIndigo => AllColors.iconsAccentIndigo;
  Color get iconsAccentSage => AllColors.iconsAccentSage;
  Color get iconsAccentMulberry =>AllColors.iconsAccentMulberry;

  // Borders
  Color get borderPrimary => AllColors.borderPrimary;
  Color get borderSecondary => AllColors.borderSecondary;
  Color get borderBrand => AllColors.borderBrand;
  Color get borderInvert => AllColors.borderInvert;

  Color get borderButtonSecondary => AllColors.borderButtonSecondary;
  Color get borderButtonDisabled => AllColors.borderButtonDisabled;

  Color get borderNegative => AllColors.borderNegative;
  Color get borderWarning =>AllColors.borderWarning;
  Color get borderPositive => AllColors.borderPositive;
  Color get borderInfo =>AllColors.borderInfo;
  Color get borderDisabled => AllColors.borderDisabled;
}
