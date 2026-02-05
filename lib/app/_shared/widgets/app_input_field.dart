import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/dimens/app_dimens.dart';
import '../../../common/style_guide/colors.dart';
import '../../../common/style_guide/style_guide.dart';

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
    final inputBorderRadius =
        borderRadius ?? BorderRadius.circular(Dimens.borderRadiusMin);
    final inputBackgroundColor = backgroundColor ?? AppColors.bgSecondary;
    final inputPadding =
        padding ??
        const EdgeInsets.symmetric(
          horizontal: Dimens.pagePadding,
          vertical: Dimens.buttonPadding,
        );

    final unfocusedBorderColor = borderColor ?? AppColors.colorE2E8F0;
    final focusedBorder = focusedBorderColor ?? AppColors.color16A34A;

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
      cursorColor: AppColors.bgBrand,
      maxLength: maxLength,
      inputFormatters: inputFormatters,
      autofocus: autofocus,
      style: AppTypography.bodyLarge.copyWith(color: AppColors.textSecondary),
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        hintStyle: AppTypography.bodySmall.copyWith(
          color: AppColors.textTertiary,
        ),
        labelStyle: AppTypography.bodySmall.copyWith(
          color: AppColors.textTertiary,
        ),
        filled: true,
        fillColor: inputBackgroundColor,
        contentPadding: inputPadding,
        border: OutlineInputBorder(
          borderRadius: inputBorderRadius,
          borderSide: BorderSide(color: unfocusedBorderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: inputBorderRadius,
          borderSide: BorderSide(color: unfocusedBorderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: inputBorderRadius,
          borderSide: BorderSide(color: focusedBorder),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: inputBorderRadius,
          borderSide: BorderSide(color: AppColors.colorF1F5F9),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: inputBorderRadius,
          borderSide: BorderSide(color: AppColors.colorE12F4F),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: inputBorderRadius,
          borderSide: BorderSide(color: AppColors.colorE12F4F),
        ),
        suffixIcon: keyboardType == TextInputType.emailAddress
            ? IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(AppAssets.email, width: 16, height: 16),
              )
            : suffixIcon,
        prefixIcon: prefixIcon,
        counterText: '',
      ),
    );
  }
}
