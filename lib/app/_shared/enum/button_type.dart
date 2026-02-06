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
        return AppColors.color1E1C1C;
      case ButtonType.secondary:
        return AppColors.color171818;
    }
  }

  Color getIconColor(BuildContext context) {
    switch (this) {
      case ButtonType.primary:
      case ButtonType.secondary:
        return AppColors.color0F172A;
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
        color: borderColor ?? AppColors.color0F172A,
        width: .25,
      );
    }
    final color = borderColor ?? AppColors.bgButtonPrimary;
    final otherBorder = BorderSide(color: color, width: .5);
    return Border(
      bottom: BorderSide(color: color, width: 5),
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
