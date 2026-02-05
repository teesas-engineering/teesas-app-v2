import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';

class StatisticsCard extends StatelessWidget {
  const StatisticsCard({
    required this.value,
    required this.label,
    super.key,
    this.iconSize,
    this.backgroundColor,
  });

  final String value;
  final String label;
  final double? iconSize;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.white,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColors.colorE2E8F0),
      ),
      child: Row(
        children: [
          Image.asset(
            AppAssets.math,
            width: iconSize ?? 24.w,
            height: iconSize ?? 24.h,
          ),
          4.horizontalSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  value,
                  style: AppTypography.titleMedium.copyWith(
                    color: AppColors.color0F172A,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                2.verticalSpace,
                Text(
                  label,
                  style: AppTypography.bodySmall.copyWith(
                    color: AppColors.color94A3B8,
                    fontSize: 10.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
