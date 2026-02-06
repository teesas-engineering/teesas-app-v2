import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../../router/main_router.dart';
import '../../../_shared/widgets/app_button.dart';
import '../../../_shared/widgets/app_progress_header.dart';
import '../components/assessment_rule_item.dart';

class AssessmentRulesScreen extends StatelessWidget {
  const AssessmentRulesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgPrimary,
      appBar: const AppProgressHeader(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              24.verticalSpace,
              Image.asset(
                AppAssets.successImage,
                height: 120.h,
                width: 120.w,
                fit: BoxFit.contain,
              ),
              32.verticalSpace,
              Text(
                'Assessment Rules',
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
                  color: AppColors.textSecondary,
                ),
                textAlign: TextAlign.center,
              ),
              32.verticalSpace,
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(24.r),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(16.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: const Column(
                  children: [
                    AssessmentRuleItem(
                      number: '1',
                      text:
                          "Select most preferred option and click 'next' to go to the next question.",
                    ),
                    AssessmentRuleItem(
                      number: '2',
                      text: 'Practice test is not timed.',
                    ),
                    AssessmentRuleItem(
                      number: '3',
                      text:
                          'At the top of the screen, you can click on the question number you want practice or review.',
                    ),
                    AssessmentRuleItem(
                      number: '4',
                      text:
                          'Attempt all questions on a subject before you can move to the next subject.',
                      isLast: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          child: AppButton(
            text: 'Start Assessment',
            onPressed: () async {
              unawaited(context.pushNamed(MainRouter.assessmentQuestion));
            },
          ),
        ),
      ),
    );
  }
}
