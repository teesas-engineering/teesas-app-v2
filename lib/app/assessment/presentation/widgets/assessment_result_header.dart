import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';

class AssessmentResultHeader extends StatelessWidget {
  const AssessmentResultHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ColoredBox(
          color: AppColors.colorF5F9FB,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Assessment Questions',
                  style: AppTypography.titleMedium.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.color808080,
                  ),
                ),
                12.verticalSpace,
                Text(
                  'View the following details below.',
                  style: AppTypography.bodyMedium.copyWith(
                    color: AppColors.color0A0A0A,
                  ),
                ),
              ],
            ),
          ),
        ),
        16.verticalSpace,
        Center(
          child: Image.asset(
            AppAssets.successImage,
            width: 150.w,
            height: 105.h,
            fit: BoxFit.cover,
          ),
        ),
        24.verticalSpace,
        Text(
          'Awesome Performance!!',
          style: AppTypography.headlineSmall.copyWith(
            color: AppColors.color011739,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
        8.verticalSpace,
        Text(
          'Below are a few things you need to note',
          style: AppTypography.bodyMedium.copyWith(
            color: AppColors.color0A0A0A,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
