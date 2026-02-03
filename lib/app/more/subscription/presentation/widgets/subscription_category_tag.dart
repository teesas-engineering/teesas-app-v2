import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../common/style_guide/colors.dart';
import '../../../../../common/style_guide/style_guide.dart';

class SubscriptionCategoryTag extends StatelessWidget {
  const SubscriptionCategoryTag(this.category, {super.key});

  final String category;

  @override
  Widget build(BuildContext context) {
    final isLeaderInMe = category.toLowerCase().contains('leader');
    final bgColor = isLeaderInMe ? AppColors.badgeBgRed : AppColors.badgeBgBlue;
    final textColor = isLeaderInMe
        ? AppColors.badgeTextRed
        : AppColors.badgeTextBlue;
    final borderColor = isLeaderInMe
        ? AppColors.bgBorderRed
        : AppColors.bgBorderBlue;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(2.r),
        border: Border.all(color: borderColor),
      ),
      child: Text(
        category,
        style: AppTypography.bodySmall.copyWith(
          color: textColor,
          fontWeight: FontWeight.w500,
          fontSize: 10.sp,
        ),
      ),
    );
  }
}
