import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../../router/main_router.dart';
import '../../../_shared/widgets/app_button.dart';
import '../../../_shared/widgets/app_divider.dart';
import '../widgets/assessment_result_header.dart';
import '../widgets/focus_area_card.dart';
import '../widgets/overall_stats_card.dart';
import '../widgets/statistics_card.dart';

class AssessmentResultScreen extends StatelessWidget {
  const AssessmentResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgPrimary,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.zero,
          physics: const ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AssessmentResultHeader(),
              16.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const OverallStatsCard(),
                    24.verticalSpace,
                    Text(
                      'Statistics',
                      style: AppTypography.bodyLarge.copyWith(
                        color: AppColors.color94A3B8,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    8.verticalSpace,
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(16.w),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Row(
                        children: [
                          const Expanded(
                            child: StatisticsCard(
                              value: '50%',
                              label: 'Accuracy',
                              backgroundColor: Color(0xFFFFF9F0),
                            ),
                          ),
                          8.horizontalSpace,
                          const Expanded(
                            child: StatisticsCard(
                              value: '12 Sec',
                              label: 'Avg Speed /Question',
                              backgroundColor: Color(0xFFFFF9F0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    AppDivider(height: 24.h),
                    Text(
                      'Key Focus Areas',
                      style: AppTypography.bodyLarge.copyWith(
                        color: AppColors.color94A3B8,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    8.verticalSpace,
                    FocusAreaCard(
                      data: FocusAreaData.withAutoColor(
                        subject: 'Lorem Ipsum',
                        performance: 'Poor',
                        unansweredQuestions: 0,
                        totalQuestions: 2,
                        icon: AppAssets.math,
                        iconBackgroundColor: AppColors.colorFCF7EA,
                      ),
                    ),
                  ],
                ),
              ),
              24.verticalSpace,
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          left: 24.w,
          right: 24.w,
          bottom:
              MediaQuery.viewPaddingOf(context).bottom +
              (Platform.isAndroid ? 16.h : 0),
        ),
        child: Row(
          children: [
            Expanded(
              child: AppButton.secondary(
                text: 'Retake Test',
                onPressed: () async {
                  context.go(MainRouter.assessmentRules);
                },
              ),
            ),
            16.horizontalSpace,
            Expanded(
              child: AppButton(
                text: 'Next Lesson',
                onPressed: () async {
                  context
                    ..pop()
                    ..pop();
                },
                trailingIcon: Icons.arrow_forward,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
