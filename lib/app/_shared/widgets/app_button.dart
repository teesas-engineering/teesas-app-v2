import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../common/dimens/app_dimens.dart';
import '../../../common/style_guide/colors.dart';
import '../../../common/style_guide/style_guide.dart';
import '../../../common/theme/app_theme.dart';
import '../enum/button_type.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.text,
    required this.onPressed,
    this.buttonType = ButtonType.primary,
    this.leadingIcon,
    this.trailingIcon,
    this.isDisabled = false,
    this.isFullWidth = true,
    this.backgroundColor,
    this.isLoading = false,
    this.textColor,
    this.borderColor,
    super.key,
  });

  factory AppButton.secondary({
    required String text,
    required AsyncCallback onPressed,
    bool isDisabled = false,
    bool negativeBorder = false,
  }) {
    return AppButton(
      text: text,
      onPressed: onPressed,
      isDisabled: isDisabled,
      borderColor: negativeBorder ? AllColors.bgNegative: AllColors.bgBrandSecondary,
      buttonType: ButtonType.secondary,
      backgroundColor:negativeBorder?AllColors.bgNegativeLight: AllColors.bgBrandSecondaryLight,
    );
  }

  final ButtonType buttonType;
  final bool isDisabled;
  final IconData? leadingIcon;
  final AsyncCallback onPressed;
  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  final Color? borderColor;
  final IconData? trailingIcon;
  final bool isFullWidth;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    const verticalPadding = 15.0;
    const horizontalPadding = 20.0;

    const padding = EdgeInsets.symmetric(
      vertical: verticalPadding,
      horizontal: horizontalPadding,
    );

    return InkWell(
      highlightColor: Colors.transparent,
      onTap: isDisabled || isLoading
          ? null
          : () {
              unawaited(HapticFeedback.mediumImpact());
              unawaited(onPressed());
            },
      splashColor: backgroundColor ?? buttonType.getSplashColor(context),
      borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius),
      child: Ink(
        padding: padding,
        decoration: BoxDecoration(
          color: isDisabled
              ? buttonType.getDisabledButtonColor(context)
              : (backgroundColor ??
                    buttonType.getButtonColor(
                      context,
                      buttonColor: backgroundColor,
                    )),
          borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius),
          border: buttonType.getBorder(context, borderColor: borderColor),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            if (isLoading)
              _getLoader(context)
            else
              Row(
                mainAxisSize: isFullWidth ? MainAxisSize.max : MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (leadingIcon != null) ...[
                    Icon(
                      leadingIcon,
                      color: isDisabled
                          ? context.appColors.iconsButtonDisabled
                          : buttonType.getIconColor(context),
                      size: buttonType.getIconSize(context),
                    ),
                    const SizedBox(width: 8),
                  ],
                  Flexible(child: _getTextWidget(context)),
                  if (trailingIcon != null) ...[
                    const SizedBox(width: 8),
                    Icon(
                      trailingIcon,
                      color: isDisabled
                          ? context.appColors.iconsButtonDisabled
                          : buttonType.getIconColor(context),
                      size: buttonType.getIconSize(context),
                    ),
                  ],
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget _getTextWidget(BuildContext context) {
    final appColors = context.appColors;
    final textStyle = buttonType.getButtonTextStyle(context);

    return Text(
      text,
      textAlign: TextAlign.center,
      style: textStyle.copyWith(
        fontFamily: AllStyles.balooBhaijaan,
        color:
            textColor ??
            (isDisabled
                ? appColors.textButtonDisabled
                : buttonType.getTextColor(context)),
        fontWeight: buttonType==ButtonType.secondary?FontWeight.w400:FontWeight.w800,
        fontSize: buttonType==ButtonType.secondary?14:16,
      ),
    );
  }

  Widget _getLoader(BuildContext context) {
    final color = buttonType.getTextColor(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            valueColor: AlwaysStoppedAnimation<Color>(color),
          ),
        ),
      ],
    );
  }
}
