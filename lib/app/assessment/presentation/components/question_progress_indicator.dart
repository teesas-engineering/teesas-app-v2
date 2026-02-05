import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/widgets/app_button.dart';

class QuestionProgressIndicator extends StatelessWidget {
  const QuestionProgressIndicator({
    required this.totalQuestions,
    required this.currentIndex,
    super.key,
  });

  final int totalQuestions;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalQuestions, (index) {
        final isCurrent = index == currentIndex;

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w),
          child: Column(
            children: [
              AppButton(
                text: '${index + 1}',
                textStyle: AppTypography.labelMedium.copyWith(
                  color: isCurrent
                      ? AppColors.color0F172A
                      : AppColors.textSecondary,
                  fontWeight: isCurrent ? FontWeight.w800 : FontWeight.w500,
                ),
                onPressed: () async {},
                isFullWidth: false,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 11.w),
                borderColor: isCurrent
                    ? AppColors.bgButtonPrimary
                    : AppColors.colorEFF1F5,
              ),
              if (isCurrent) ...[
                SizedBox(
                  height: 8.h,
                  child: isCurrent
                      ? Container(
                          width: 6.w,
                          height: 6.h,
                          decoration: const BoxDecoration(
                            color: AppColors.colorFF9F1C,
                            shape: BoxShape.circle,
                          ),
                        )
                      : null,
                ),
              ] else ...[
                SizedBox(height: 8.h),
              ],
              4.verticalSpace,
            ],
          ),
        );
      }),
    );
  }
}
