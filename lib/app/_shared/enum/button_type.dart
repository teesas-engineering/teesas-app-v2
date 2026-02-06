import 'package:flutter/material.dart';

import '../../../common/style_guide/colors.dart';
import '../../../common/style_guide/style_guide.dart';

enum ButtonType { primary, secondary }

extension ButtonTypeExtension on ButtonType {
  Color getButtonColor(BuildContext context, {Color? buttonColor}) {
    switch (this) {
      case ButtonType.primary:
        return AppColors.bgBrandSecondaryLight;
      case ButtonType.secondary:
        return Colors.transparent;
    }
  }

  Color getTextColor(BuildContext context) {
    switch (this) {
      case ButtonType.primary:
        return AppColors.textButtonPrimary;
      case ButtonType.secondary:
        return AppColors.textButtonSecondary;
    }
  }

  Color getIconColor(BuildContext context) {
    switch (this) {
      case ButtonType.primary:
      case ButtonType.secondary:
        return AppColors.iconsButtonSecondary;
    }
  }

  Color getSplashColor(BuildContext context) {
    switch (this) {
      case ButtonType.primary:
        return AppColors.bgButtonPrimarySplash;
      case ButtonType.secondary:
        return AppColors.bgButtonSecondarySplash;
    }
  }

  TextStyle getButtonTextStyle(BuildContext context) {
    switch (this) {
      case ButtonType.primary:
      case ButtonType.secondary:
        return AppTypography.titleMedium.copyWith(fontSize: 18);
    }
  }

  Color getDisabledButtonColor(BuildContext context) {
    switch (this) {
      case ButtonType.primary:
        return AppColors.bgButtonDisabled;
      case ButtonType.secondary:
        return Colors.transparent;
    }
  }

  Border? getBorder(BuildContext context, {Color? borderColor}) {
    if (this == ButtonType.secondary) {
      return Border.all(
        color: borderColor ?? AppColors.borderButtonSecondary,
        width: .25,
      );
    }
    const otherBorder = BorderSide(color: AppColors.bgButtonPrimary, width: .5);
    return const Border(
      bottom: BorderSide(color: AppColors.bgButtonPrimary, width: 5),
      top: otherBorder,
      left: otherBorder,
      right: otherBorder,
    );
  }

  double getIconSize(BuildContext context) {
    switch (this) {
      case ButtonType.primary:
      case ButtonType.secondary:
        return 24;
    }
  }
}
