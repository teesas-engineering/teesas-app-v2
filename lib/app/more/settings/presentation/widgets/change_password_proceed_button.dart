import 'package:flutter/material.dart';
import '../../../../../common/dimens/app_dimens.dart';
import '../../../../../common/style_guide/colors.dart';
import '../../../../_shared/widgets/app_button.dart';

class ChangePasswordProceedButton extends StatelessWidget {
  const ChangePasswordProceedButton({
    required this.isLoading,
    required this.onPressed,
    super.key,
  });

  final bool isLoading;
  final Future<void> Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius),
        border: Border.all(color: AppColors.bgBrand, width: 2),
      ),
      child: AppButton(
        text: 'Proceed',
        onPressed: onPressed,
        isLoading: isLoading,
        backgroundColor: AppColors.white,
        textColor: AppColors.textPrimary,
        borderColor: AppColors.transparent,
      ),
    );
  }
}
