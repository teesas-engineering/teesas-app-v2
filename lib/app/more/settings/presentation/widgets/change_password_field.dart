import 'package:flutter/material.dart';
import '../../../../../common/style_guide/colors.dart';
import '../../../../_shared/widgets/app_input_field.dart';

class ChangePasswordField extends StatelessWidget {
  const ChangePasswordField({
    required this.controller,
    required this.labelText,
    super.key,
    this.hintText,
  });

  final TextEditingController controller;
  final String labelText;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return AppInputField(
      controller: controller,
      labelText: labelText,
      hintText: hintText,
      obscureText: true,
      backgroundColor: AppColors.white,
      borderColor: AppColors.colorE2E8F0,
    );
  }
}
