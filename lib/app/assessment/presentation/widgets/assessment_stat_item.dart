import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';

class AssessmentStatItem extends StatelessWidget {
  const AssessmentStatItem({
    required this.count,
    required this.label,
    required this.icon,
    required this.iconColor,
    super.key,
    this.backgroundColor,
  });

  final int count;
  final String label;
  final IconData icon;
  final Color iconColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 9.h),
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          Text(
            count.toString(),
            style: AppTypography.titleMedium.copyWith(
              color: AppColors.color0F172A,
              fontWeight: FontWeight.w700,
            ),
          ),
          12.horizontalSpace,
          Expanded(
            child: Text(
              label,
              style: AppTypography.bodyMedium.copyWith(
                color: AppColors.color94A3B8,
                fontSize: 10.sp,
              ),
            ),
          ),
          Container(
            width: 16.w,
            height: 16.w,
            decoration: BoxDecoration(color: iconColor, shape: BoxShape.circle),
            child: Icon(icon, color: AppColors.white, size: 16.w),
          ),
        ],
      ),
    );
  }
}
