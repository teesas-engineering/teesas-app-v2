import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/widgets/app_divider.dart';

class AssessmentRuleItem extends StatelessWidget {
  const AssessmentRuleItem({
    required this.number,
    required this.text,
    this.isLast = false,
    super.key,
  });

  final String number;
  final String text;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 21.w,
              height: 29.w,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.colorFF9F1C),
                borderRadius: BorderRadius.circular(72.r),
              ),
              alignment: Alignment.center,
              child: Text(
                number,
                style: AppTypography.labelSmall.copyWith(
                  color: AppColors.colorFF9F1C,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            12.horizontalSpace,
            Expanded(
              child: Text(
                text,
                style: AppTypography.bodySmall.copyWith(
                  color: AppColors.textPrimary,
                ),
              ),
            ),
          ],
        ),
        if (!isLast) AppDivider(height: 16.h),
      ],
    );
  }
}
