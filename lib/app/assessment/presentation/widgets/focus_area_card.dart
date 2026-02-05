import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/widgets/app_card.dart';

class FocusAreaData {
  const FocusAreaData({
    required this.subject,
    required this.performance,
    required this.unansweredQuestions,
    required this.totalQuestions,
    required this.icon,
    required this.iconBackgroundColor,
    required this.performanceColor,
  });

  factory FocusAreaData.withAutoColor({
    required String subject,
    required String performance,
    required int unansweredQuestions,
    required int totalQuestions,
    required String icon,
    required Color iconBackgroundColor,
  }) {
    return FocusAreaData(
      subject: subject,
      performance: performance,
      unansweredQuestions: unansweredQuestions,
      totalQuestions: totalQuestions,
      icon: icon,
      iconBackgroundColor: iconBackgroundColor,
      performanceColor: _getPerformanceColor(performance),
    );
  }

  final String subject;
  final String performance;
  final int unansweredQuestions;
  final int totalQuestions;
  final String icon;
  final Color iconBackgroundColor;
  final Color performanceColor;

  static Color _getPerformanceColor(String performance) {
    switch (performance.toLowerCase()) {
      case 'excellent':
        return AppColors.bgBrand;
      case 'good':
        return AppColors.bgBrandSecondary;
      case 'average':
        return AppColors.colorFF9F1C;
      case 'poor':
        return AppColors.colorE12F4F;
      default:
        return AppColors.color94A3B8;
    }
  }
}

class FocusAreaCard extends StatelessWidget {
  const FocusAreaCard({required this.data, super.key});

  final FocusAreaData data;

  @override
  Widget build(BuildContext context) {
    return AppCard.primary(
      padding: EdgeInsets.all(16.r),
      child: Row(
        children: [
          Container(
            width: 44.w,
            height: 44.h,
            decoration: BoxDecoration(
              color: data.iconBackgroundColor,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Image.asset(data.icon, width: 28.w, height: 28.h),
          ),
          12.horizontalSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.subject,
                  style: AppTypography.titleSmall.copyWith(
                    color: AppColors.color0F172A,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                4.verticalSpace,
                RichText(
                  text: TextSpan(
                    text: 'Performance: ',
                    style: AppTypography.bodySmall.copyWith(
                      color: AppColors.color94A3B8,
                    ),
                    children: [
                      TextSpan(
                        text: data.performance,
                        style: AppTypography.bodySmall.copyWith(
                          color: data.performanceColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                4.verticalSpace,
                Text(
                  '${data.unansweredQuestions}/${data.totalQuestions} Question Unanswered',
                  style: AppTypography.bodySmall.copyWith(
                    color: AppColors.color94A3B8,
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
