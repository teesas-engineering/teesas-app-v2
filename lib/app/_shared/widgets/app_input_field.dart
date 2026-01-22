import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../common/dimens/app_dimens.dart';
import '../../../common/theme/app_theme.dart';

class AppInputField extends StatelessWidget {
  const AppInputField({
     this.controller,
    super.key,
    this.hintText,
    this.labelText,
    this.obscureText = false,
    this.enabled = true,
    this.readOnly = false,
    this.keyboardType,
    this.textInputAction,
    this.validator,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    this.maxLines = 1,
    this.maxLength,
    this.inputFormatters,
    this.suffixIcon,
    this.prefixIcon,
    this.focusNode,
    this.autofocus = false,
    this.borderRadius,
    this.borderColor,
    this.focusedBorderColor,
    this.backgroundColor,
    this.padding,
  });

  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final bool obscureText;
  final bool enabled;
  final bool readOnly;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final void Function()? onTap;
  final int maxLines;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final FocusNode? focusNode;
  final bool autofocus;
  final BorderRadius? borderRadius;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final Color? backgroundColor;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    final appStyles = context.appStyles;

    final inputBorderRadius =
        borderRadius ?? BorderRadius.circular(Dimens.borderRadiusMin);
    final inputBackgroundColor = backgroundColor ?? appColors.bgSecondary;
    final inputPadding =
        padding ??
        const EdgeInsets.symmetric(
          horizontal: Dimens.pagePadding,
          vertical: Dimens.buttonPadding,
        );

    final unfocusedBorderColor = borderColor ?? appColors.borderPrimary;
    final focusedBorder = focusedBorderColor ?? appColors.borderBrand;

    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      obscureText: obscureText,
      enabled: enabled,
      readOnly: readOnly,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      validator: validator,
      onChanged: onChanged,
      onFieldSubmitted: onSubmitted,
      onTap: onTap,
      maxLines: maxLines,
      maxLength: maxLength,
      inputFormatters: inputFormatters,
      autofocus: autofocus,
      style: appStyles.bodyLarge,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        hintStyle: appStyles.bodySmall,
        labelStyle: appStyles.bodySmall,
        filled: true,
        fillColor: inputBackgroundColor,
        contentPadding: inputPadding,
        border: OutlineInputBorder(
          borderRadius: inputBorderRadius,
          borderSide: BorderSide(color: unfocusedBorderColor, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: inputBorderRadius,
          borderSide: BorderSide(color: unfocusedBorderColor, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: inputBorderRadius,
          borderSide: BorderSide(color: focusedBorder, width: 1),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: inputBorderRadius,
          borderSide: BorderSide(color: appColors.borderDisabled, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: inputBorderRadius,
          borderSide: BorderSide(color: appColors.borderNegative, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: inputBorderRadius,
          borderSide: BorderSide(color: appColors.borderNegative, width: 1),
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        counterText: '',
      ),
    );
  }
}
