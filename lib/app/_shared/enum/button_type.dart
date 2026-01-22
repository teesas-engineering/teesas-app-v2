import 'package:flutter/material.dart';

import '../../../common/theme/app_theme.dart';

enum ButtonType {
  primary,
  secondary,
}

extension ButtonTypeExtension on ButtonType {
  Color getButtonColor(BuildContext context,{Color? buttonColor}) {
    final appColors = context.appColors;
    switch (this) {
      case ButtonType.primary:
        return appColors.bgSecondary;
      case ButtonType.secondary:
        return Colors.transparent;
    }
  }

  Color getTextColor(BuildContext context) {
    final appColors = context.appColors;
    switch (this) {
      case ButtonType.primary:
        return appColors.textButtonPrimary;
      case ButtonType.secondary:
        return appColors.textButtonSecondary;
    }
  }

  Color getIconColor(BuildContext context) {
    final appColors = context.appColors;
    switch (this) {
      case ButtonType.primary:
      case ButtonType.secondary:
        return appColors.iconsButtonSecondary;
    }
  }

  Color getSplashColor(BuildContext context) {
    final appColors = context.appColors;
    switch (this) {
      case ButtonType.primary:
        return appColors.bgButtonPrimarySplash;
      case ButtonType.secondary:
        return appColors.bgButtonSecondarySplash;
    }
  }

  TextStyle getButtonTextStyle(BuildContext context) {
    final appStyles = context.appStyles;
    switch (this) {
      case ButtonType.primary:
      case ButtonType.secondary:
        return appStyles.titleMedium.copyWith(fontSize: 18);
    }
  }

  Color getDisabledButtonColor(BuildContext context) {
    final appColors = context.appColors;
    switch (this) {
      case ButtonType.primary:
        return appColors.bgButtonDisabled;
      case ButtonType.secondary:
        return Colors.transparent;
    }
  }

  Border? getBorder(BuildContext context, {Color? borderColor}) {
    final appColors = context.appColors;
    if (this == ButtonType.secondary) {
      return Border.all(color: borderColor??appColors.borderButtonSecondary,width: .25);
    }
    final otherBorder = BorderSide(color: appColors.bgButtonPrimary,width: .5);
    return Border(
      bottom: BorderSide(color: appColors.bgButtonPrimary, width: 5),
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
