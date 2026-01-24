import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../common/dimens/app_dimens.dart';
import '../../../common/style_guide/colors.dart';
import '../../../common/style_guide/style_guide.dart';
import '../enum/button_type.dart';

class AppButton extends StatefulWidget {
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
      borderColor: negativeBorder
          ? AppColors.borderNegative
          : AppColors.bgBrandSecondary,
      buttonType: ButtonType.secondary,
      backgroundColor: negativeBorder
          ? AppColors.bgNegativeLight
          : AppColors.bgBrandSecondaryLight,
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
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    const verticalPadding = 15.0;
    const horizontalPadding = 20.0;

    const padding = EdgeInsets.symmetric(
      vertical: verticalPadding,
      horizontal: horizontalPadding,
    );

    final buttonColor = widget.isDisabled
        ? widget.buttonType.getDisabledButtonColor(context)
        : (widget.backgroundColor ??
              widget.buttonType.getButtonColor(
                context,
                buttonColor: widget.backgroundColor,
              ));

    return GestureDetector(
      onTapDown: widget.isDisabled || widget.isLoading
          ? null
          : (_) {
              setState(() {
                _isPressed = true;
              });
            },
      onTapUp: widget.isDisabled || widget.isLoading
          ? null
          : (_) {
              setState(() {
                _isPressed = false;
              });
              unawaited(HapticFeedback.mediumImpact());
              unawaited(widget.onPressed());
            },
      onTapCancel: widget.isDisabled || widget.isLoading
          ? null
          : () {
              setState(() {
                _isPressed = false;
              });
            },
      child: Transform.scale(
        scale: _isPressed ? 0.98 : 1.0,
        child: Container(
          padding: padding,
          decoration: BoxDecoration(
            color: _isPressed ? buttonColor.withOpacity(0.9) : buttonColor,
            borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius),
            border: widget.buttonType.getBorder(
              context,
              borderColor: widget.borderColor,
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              if (widget.isLoading)
                _getLoader(context)
              else
                Row(
                  mainAxisSize: widget.isFullWidth
                      ? MainAxisSize.max
                      : MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (widget.leadingIcon != null) ...[
                      Icon(
                        widget.leadingIcon,
                        color: widget.isDisabled
                            ? AppColors.iconsButtonDisabled
                            : widget.buttonType.getIconColor(context),
                        size: widget.buttonType.getIconSize(context),
                      ),
                      const SizedBox(width: 8),
                    ],
                    Flexible(child: _getTextWidget(context)),
                    if (widget.trailingIcon != null) ...[
                      const SizedBox(width: 8),
                      Icon(
                        widget.trailingIcon,
                        color: widget.isDisabled
                            ? AppColors.iconsButtonDisabled
                            : widget.buttonType.getIconColor(context),
                        size: widget.buttonType.getIconSize(context),
                      ),
                    ],
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getTextWidget(BuildContext context) {
    final textStyle = widget.buttonType.getButtonTextStyle(context);

    return Text(
      widget.text,
      textAlign: TextAlign.center,
      style: textStyle.copyWith(
        fontFamily: AppTypography.balooBhaijaan,
        color:
            widget.textColor ??
            (widget.isDisabled
                ? AppColors.textButtonDisabled
                : widget.buttonType.getTextColor(context)),
        fontWeight: widget.buttonType == ButtonType.secondary
            ? FontWeight.w400
            : FontWeight.w800,
        fontSize: widget.buttonType == ButtonType.secondary ? 14 : 16,
      ),
    );
  }

  Widget _getLoader(BuildContext context) {
    final color = widget.buttonType.getTextColor(context);
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
