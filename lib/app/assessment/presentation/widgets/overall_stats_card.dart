import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:go_router/go_router.dart';

import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../../router/main_router.dart';
import '../../../_shared/widgets/app_button.dart';
import 'assessment_stat_item.dart';
import 'subject_donut_chart.dart';

class OverallStatsCard extends StatefulWidget {
  const OverallStatsCard({super.key});

  @override
  State<OverallStatsCard> createState() => _OverallStatsCardState();
}

class _OverallStatsCardState extends State<OverallStatsCard> {
  bool _showDetails = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        24.verticalSpace,
        Text(
          'Overall Stats',
          style: AppTypography.bodyMedium.copyWith(
            color: AppColors.textTertiary,
            fontWeight: FontWeight.w500,
          ),
        ),
        16.verticalSpace,
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(20.w),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            children: [
              if (_showDetails) ...[
                const SubjectDonutChart(
                  segments: [
                    ChartSegment(
                      label: 'Subject 1',
                      value: 10,
                      color: AppColors.color8BD812,
                    ),
                    ChartSegment(
                      label: 'Subject 2',
                      value: 30,
                      color: AppColors.colorE8A838,
                    ),
                    ChartSegment(
                      label: 'Subject 3',
                      value: 20,
                      color: AppColors.colorF1E15B,
                    ),
                    ChartSegment(
                      label: 'Subject 4',
                      value: 20,
                      color: AppColors.colorF47560,
                    ),
                    ChartSegment(
                      label: 'Subject 5',
                      value: 20,
                      color: AppColors.colorE8C1A0,
                    ),
                  ],
                ),
                32.verticalSpace,
              ],
              // Inlined Stats List
              Column(
                children: [
                  const AssessmentStatItem(
                    count: 8,
                    label: 'Correct',
                    icon: Icons.check,
                    iconColor: Color(0xFF27AE60),
                    backgroundColor: Color(0xFFF6FBF7),
                  ),
                  16.verticalSpace,
                  const AssessmentStatItem(
                    count: 12,
                    label: 'Incorrect',
                    icon: Icons.close,
                    iconColor: Color(0xFFE12F4F),
                    backgroundColor: Color(0xFFFFF5F5),
                  ),
                  16.verticalSpace,
                  const AssessmentStatItem(
                    count: 40,
                    label: 'Unanswered',
                    icon: Icons.priority_high,
                    iconColor: Color(0xFFFF9F1C),
                    backgroundColor: Color(0xFFFFF9F0),
                  ),
                ],
              ),
              32.verticalSpace,
              AppButton.secondary(
                text: _showDetails ? 'View Solution' : 'View Details',
                onPressed: () async {
                  if (_showDetails) {
                    context.push(MainRouter.assessmentSolution);
                  } else {
                    setState(() {
                      _showDetails = true;
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
