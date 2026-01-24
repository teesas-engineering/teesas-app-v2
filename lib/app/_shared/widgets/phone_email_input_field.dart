import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/style_guide/style_guide.dart';
import '../../../common/utils/form_mixin.dart';
import '../enum/input_type.dart';
import 'app_input_field.dart';

class PhoneEmailInputField extends StatefulWidget {
  const PhoneEmailInputField({
    required this.onChange,
    super.key,
    this.controller,
    this.inputType,
    this.suffixIcon,
    this.onInputTypeChange,
    this.focusNode,
    this.hintText,
    this.labelText,
    this.enabled = true,
    this.validator,
    this.borderRadius,
    this.borderColor,
    this.focusedBorderColor,
    this.backgroundColor,
    this.padding,
  });

  final TextEditingController? controller;
  final void Function(String, InputType? inputType) onChange;
  final void Function(InputType?)? onInputTypeChange;
  final FocusNode? focusNode;
  final InputType? inputType;
  final Widget? suffixIcon;
  final String? hintText;
  final String? labelText;
  final bool enabled;
  final String? Function(String?)? validator;
  final BorderRadius? borderRadius;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final Color? backgroundColor;
  final EdgeInsets? padding;

  @override
  State<PhoneEmailInputField> createState() => _PhoneEmailInputFieldState();
}

class _PhoneEmailInputFieldState extends State<PhoneEmailInputField>
    with FormMixin {
  bool isPhone = false;

  @override
  void initState() {
    super.initState();
    isPhone = widget.inputType == InputType.phone;
  }

  @override
  Widget build(BuildContext context) {
    final hint =
        widget.hintText ??
        (widget.inputType == null
            ? 'Input your Email or Phone Number'
            : (widget.inputType == InputType.phone
                  ? 'Input your phone number'
                  : 'Input your email address'));

    final label =
        widget.labelText ??
        (widget.inputType == null
            ? 'Email or Phone Number'
            : (widget.inputType == InputType.phone
                  ? 'Enter your phone number'
                  : 'Enter your email address'));

    return AppInputField(
      controller: widget.controller,
      hintText: hint,
      labelText: label,
      enabled: widget.enabled,
      focusNode: widget.focusNode,
      keyboardType: widget.inputType == InputType.phone
          ? TextInputType.phone
          : TextInputType.emailAddress,
      validator:
          widget.validator ??
          (value) {
            final validEmail = isValidEmailAddress(value);
            final validPhoneNumber = phoneValid(value);
            if (widget.inputType == InputType.email && validEmail != null) {
              return 'Enter a valid email address';
            }
            if (widget.inputType == InputType.phone &&
                validPhoneNumber != null) {
              return 'Enter a valid phone number';
            }
            if (widget.inputType == null) {
              if (validEmail == null || validPhoneNumber == null) {
                return null;
              }
              return 'Enter a valid email or phone number';
            }
            return null;
          },
      inputFormatters: [
        denyWhiteSpaceInTextField(),
        if (!isPhone || widget.inputType == InputType.email) ...[
          LengthLimitingTextInputFormatter(50),
        ],
        if (isPhone || widget.inputType == InputType.phone) ...[
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(15),
        ],
      ],
      onChanged: (val) {
        final result = getActualPhoneNumberOrEmail(val);

        // If input type is explicitly set, use it
        if (widget.inputType != null) {
          widget.onInputTypeChange?.call(widget.inputType);
          widget.onChange(result, widget.inputType);
          return;
        }

        // Auto-detect input type
        final validPhoneNumber = allInputsAreNumbers(val);
        final detectedType = validPhoneNumber
            ? InputType.phone
            : InputType.email;

        // Update state if type changed
        if (detectedType == InputType.phone && !isPhone) {
          setState(() {
            isPhone = true;
          });
          widget.onInputTypeChange?.call(InputType.phone);
        } else if (detectedType == InputType.email && isPhone) {
          setState(() {
            isPhone = false;
          });
          widget.onInputTypeChange?.call(InputType.email);
        }

        widget.onChange(result, detectedType);
      },
      prefixIcon: isPhone
          ? IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                AppAssets.nigerianFlag,
                width: 16,
                height: 16,
              ),
            )
          : null,
      suffixIcon: widget.suffixIcon != null
          ? IconButton(onPressed: () {}, icon: widget.suffixIcon!)
          : (!isPhone
                ? IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AppAssets.email,
                      width: 16,
                      height: 16,
                    ),
                  )
                : null),
      borderRadius: widget.borderRadius,
      borderColor: widget.borderColor,
      focusedBorderColor: widget.focusedBorderColor,
      backgroundColor: widget.backgroundColor,
      padding: widget.padding,
    );
  }
}
