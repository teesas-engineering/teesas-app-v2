import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/dimens/app_dimens.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({
    required this.text,
    required this.optionLabel,
    required this.isSelected,
    required this.isSubmitted,
    required this.isCorrect,
    required this.isWrong,
    required this.shouldHighlightCorrect,
    required this.onTap,
    super.key,
  });

  final String text;
  final String optionLabel;
  final bool isSelected;
  final bool isSubmitted;
  final bool isCorrect;
  final bool isWrong;
  final bool shouldHighlightCorrect;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = AppColors.white;
    Color borderColor = AppColors.colorE2E8F0;
    Color textColor = AppColors.textSecondary;
    BoxBorder? boxBorder;

    bool use3DStyle = false;
    Color? shadowColor; // The "bottom" border color for 3D effect

    if (isSubmitted) {
      if (isCorrect || shouldHighlightCorrect) {
        use3DStyle = true;
        backgroundColor = AppColors.bgBrandSecondaryLight;
        shadowColor = AppColors.bgButtonPrimary;
        borderColor = AppColors.bgButtonPrimary;
        textColor = AppColors.color1E1C1C;
      } else if (isWrong) {
        use3DStyle = true;
        backgroundColor = AppColors.colorFEF2F2;
        shadowColor = AppColors.colorE12F4F;
        borderColor = AppColors.colorE12F4F;
        textColor = AppColors.color1E1C1C;
      } else {
        // Other unselected options
        borderColor = AppColors.colorE2E8F0;
        textColor = AppColors.textSecondary;
      }
    } else {
      if (isSelected) {
        use3DStyle = true;
        backgroundColor = AppColors.white;
        shadowColor = AppColors.color1E1C1C;
        borderColor = AppColors.color1E1C1C;
        textColor = AppColors.color1E1C1C;
      }
    }

    if (use3DStyle) {
      boxBorder = Border(
        top: BorderSide(color: borderColor, width: 0.5),
        left: BorderSide(color: borderColor, width: 0.5),
        right: BorderSide(color: borderColor, width: 0.5),
        bottom: BorderSide(color: shadowColor!, width: 4),
      );
    } else {
      boxBorder = Border.all(color: borderColor, width: 0.5);
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius),
          border: boxBorder,
        ),
        child: Row(
          children: [
            Text(
              '$optionLabel.',
              style: AppTypography.titleSmall.copyWith(
                color: AppColors.color0F172A,
                fontWeight: FontWeight.w700,
              ),
            ),
            16.horizontalSpace,
            Expanded(
              child: Text(
                text,
                style: AppTypography.bodyMedium.copyWith(
                  color:
                      isSelected ||
                          (isSubmitted &&
                              (isCorrect || shouldHighlightCorrect || isWrong))
                      ? AppColors.color0F172A
                      : AppColors.textSecondary,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            // Trailing Icon
            if (isSubmitted) ...[
              if (isCorrect || shouldHighlightCorrect)
                Icon(
                  Icons.check_circle_rounded,
                  color: AppColors.bgButtonPrimary,
                  size: 16.w,
                )
              else if (isWrong)
                Icon(
                  Icons.cancel_rounded,
                  color: AppColors.colorE12F4F,
                  size: 16.w,
                ),
            ] else if (isSelected) ...[
              Container(
                height: 10.w,
                width: 10.w,
                padding: EdgeInsets.all(2.r),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.white,
                  border: Border.all(),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.black,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
