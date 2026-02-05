import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common/style_guide/colors.dart';

class AppThumbProgressBar extends StatelessWidget {
  const AppThumbProgressBar({required this.progress, super.key});

  final double progress;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final progressWidth = width * progress;

        return SizedBox(
          height: 6.h,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              // Background line
              Container(
                width: width,
                height: 8.h,
                decoration: BoxDecoration(
                  color: AppColors.bgPrimary,
                  borderRadius: BorderRadius.circular(4.r),
                ),
              ),
              // Progress line
              Container(
                width: progressWidth,
                height: 8.h,
                decoration: BoxDecoration(
                  color: AppColors.colorFF9F1C,
                  borderRadius: BorderRadius.circular(4.r),
                ),
              ),
              // Thumb indicator
              Positioned(
                left: (progressWidth - 6.h).clamp(0, width - 5.h),
                child: Container(
                  width: 5.h,
                  height: 5.h,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.color8A5206),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
