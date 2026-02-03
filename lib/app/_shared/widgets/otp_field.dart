import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../common/dimens/app_dimens.dart';
import '../../../common/style_guide/colors.dart';
import '../../../common/style_guide/style_guide.dart';
import '../../../common/utils/form_mixin.dart';

class OtpField extends StatelessWidget with FormMixin {
  const OtpField({
    super.key,
    required this.controller,
    this.errorController,
    this.onChanged,
    this.onCompleted,
    this.length = 4,
    this.obscureText = false,
    this.fontSize = 18,
    this.validator,
  });

  final TextEditingController controller;
  final StreamController<ErrorAnimationType>? errorController;
  final void Function(String)? onChanged;
  final void Function(String)? onCompleted;
  final int length;
  final bool obscureText;
  final double fontSize;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    final inputBorderRadius = BorderRadius.circular(Dimens.defaultBorderRadius);
    const inputBackgroundColor = AppColors.bgBrandSecondaryLight;
    const unfocusedBorderColor = AppColors.colorD0D5DD;
    const focusedBorderColor = AppColors.bgBrandSecondary;
    const errorBorderColor = AppColors.colorE12F4F;

    return PinCodeTextField(
      appContext: context,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      length: length,
      obscureText: obscureText,
      animationType: AnimationType.fade,
      keyboardType: TextInputType.number,
      blinkWhenObscuring: true,
      obscuringCharacter: '❋',
      useExternalAutoFillGroup: true,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(width: 10);
      },
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: inputBorderRadius,
        fieldHeight: 56,
        fieldWidth: MediaQuery.of(context).size.width / 6.5,
        activeFillColor: inputBackgroundColor,
        inactiveFillColor: AppColors.white,
        inactiveColor: unfocusedBorderColor,
        activeColor: focusedBorderColor,
        selectedFillColor: inputBackgroundColor,
        selectedColor: focusedBorderColor,
        inactiveBorderWidth: 1,
        selectedBorderWidth: 1,
        activeBorderWidth: 1,
        errorBorderColor: errorBorderColor,
      ),
      animationDuration: Duration.zero,
      backgroundColor: Colors.transparent,
      enableActiveFill: true,
      cursorColor: AppColors.color16A34A,
      validator: validator ?? isRequired,
      textStyle: AppTypography.bodyLarge.copyWith(
        color: AppColors.textSecondary,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      ),
      errorAnimationController: errorController,
      controller: controller,
      onCompleted: onCompleted,
      onChanged: onChanged,
      beforeTextPaste: (text) {
        return true;
      },
    );
  }
}
