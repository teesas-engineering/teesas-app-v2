import 'package:flutter/material.dart';

import '../../../common/dimens/app_dimens.dart';
import '../../../common/theme/app_theme.dart';

enum _AppButtonVariant { primary, secondary, custom }

class AppButton extends StatelessWidget {
  const AppButton._({
    required this.onPressed,
    required this.text,
    required this.variant,
    super.key,
    this.isEnabled = true,
    this.height,
    this.width,
    this.borderColor,
    this.backgroundColor,
    this.textColor,
    this.iconColor,
    this.borderRadius,
    this.padding,
    this.leadingIcon,
    this.trailingIcon,
  });

  final VoidCallback? onPressed;
  final String text;
  final bool isEnabled;
  final double? height;
  final double? width;
  final _AppButtonVariant variant;
  final Color? borderColor;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? iconColor;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;
  final Widget? leadingIcon;
  final Widget? trailingIcon;

  /// Primary button variant with green border and white background
  factory AppButton.primary({
    required VoidCallback? onPressed,
    required String text,
    bool isEnabled = true,
    double? height,
    double? width,
    BorderRadius? borderRadius,
    EdgeInsets? padding,
    Widget? leadingIcon,
    Widget? trailingIcon,
    Key? key,
  }) {
    return AppButton._(
      onPressed: onPressed,
      text: text,
      variant: _AppButtonVariant.primary,
      isEnabled: isEnabled,
      height: height,
      width: width ?? double.infinity,
      borderRadius: borderRadius,
      padding: padding,
      leadingIcon: leadingIcon,
      trailingIcon: trailingIcon,
      key: key,
    );
  }

  /// Secondary button variant with customizable border and background
  factory AppButton.secondary({
    required VoidCallback? onPressed,
    required String text,
    bool isEnabled = true,
    double? height,
    double? width,
    BorderRadius? borderRadius,
    EdgeInsets? padding,
    Widget? leadingIcon,
    Widget? trailingIcon,
    Color? borderColor,
    Color? backgroundColor,
    Color? textColor,
    Color? iconColor,
    Key? key,
  }) {
    return AppButton._(
      onPressed: onPressed,
      text: text,
      variant: _AppButtonVariant.secondary,
      isEnabled: isEnabled,
      height: height,
      width: width ?? double.infinity,
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      textColor: textColor,
      iconColor: iconColor,
      borderRadius: borderRadius,
      padding: padding,
      leadingIcon: leadingIcon,
      trailingIcon: trailingIcon,
      key: key,
    );
  }

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    final appStyles = context.appStyles;

    final buttonHeight = height ?? Dimens.buttonHeight;
    final buttonBorderRadius =
        borderRadius ?? BorderRadius.circular(Dimens.defaultBorderRadius);

    // Determine colors based on variant and enabled state
    Color effectiveBorderColor;
    Color effectiveBackgroundColor;
    Color effectiveTextColor;
    Color effectiveIconColor;

    switch (variant) {
      case _AppButtonVariant.primary:
        effectiveBorderColor = isEnabled
            ? (borderColor ?? appColors.borderBrand)
            : appColors.borderDisabled;
        effectiveBackgroundColor = backgroundColor ?? appColors.bgSecondary;
        effectiveTextColor = isEnabled
            ? (textColor ?? appColors.textPrimary)
            : appColors.textDisabled;
        effectiveIconColor = isEnabled
            ? (iconColor ?? appColors.iconsPrimary)
            : appColors.iconsDisabled;
        break;
      case _AppButtonVariant.secondary:
        effectiveBorderColor = isEnabled
            ? (borderColor ?? appColors.borderPrimary)
            : appColors.borderDisabled;
        effectiveBackgroundColor = backgroundColor ?? appColors.bgSecondary;
        effectiveTextColor = isEnabled
            ? (textColor ?? appColors.textPrimary)
            : appColors.textDisabled;
        effectiveIconColor = isEnabled
            ? (iconColor ?? appColors.iconsPrimary)
            : appColors.iconsDisabled;
        break;
      case _AppButtonVariant.custom:
        effectiveBorderColor = isEnabled
            ? (borderColor ?? appColors.borderBrand)
            : appColors.borderDisabled;
        effectiveBackgroundColor = backgroundColor ?? appColors.bgSecondary;
        effectiveTextColor = isEnabled
            ? (textColor ?? appColors.textPrimary)
            : appColors.textDisabled;
        effectiveIconColor = isEnabled
            ? (iconColor ?? appColors.iconsPrimary)
            : appColors.iconsDisabled;
        break;
    }

    final buttonPadding =
        padding ?? const EdgeInsets.symmetric(horizontal: Dimens.buttonPadding);

    Widget buttonChild;
    if (leadingIcon != null || trailingIcon != null) {
      buttonChild = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leadingIcon != null) ...[
            IconTheme(
              data: IconThemeData(color: effectiveIconColor, size: 20),
              child: leadingIcon!,
            ),
            const SizedBox(width: 8),
          ],
          Text(
            text,
            style: appStyles.labelLarge.copyWith(color: effectiveTextColor),
          ),
          if (trailingIcon != null) ...[
            const SizedBox(width: 8),
            IconTheme(
              data: IconThemeData(color: effectiveIconColor, size: 20),
              child: trailingIcon!,
            ),
          ],
        ],
      );
    } else {
      buttonChild = Text(
        text,
        style: appStyles.labelLarge.copyWith(color: effectiveTextColor),
      );
    }

    return SizedBox(
      height: buttonHeight,
      width: width ?? double.infinity,
      child: OutlinedButton(
        onPressed: isEnabled ? onPressed : null,
        style: OutlinedButton.styleFrom(
          backgroundColor: effectiveBackgroundColor,
          foregroundColor: effectiveTextColor,
          side: BorderSide(color: effectiveBorderColor, width: 2),
          shape: RoundedRectangleBorder(borderRadius: buttonBorderRadius),
          padding: buttonPadding,
          elevation: 0,
        ),
        child: buttonChild,
      ),
    );
  }
}
