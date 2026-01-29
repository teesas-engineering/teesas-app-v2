import 'package:flutter/material.dart';
import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/components/page_padding.dart';
import 'assessment_card.dart';
class SubjectSection extends StatelessWidget {
  const SubjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  PagePadding(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent Assessment',
                style: AppTypography.titleMedium.copyWith(
                  color: AppColors.textTertiary,
                ),
              ),
              Text(
                'View More',
                style: AppTypography.titleSmall.copyWith(
                  fontSize: 12,
                  color: AppColors.textBrand,
                ),
              ),
            ],
          ),
          12.height,
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 1.31,
            children: const [
              AssessmentCard(
                icon: AppAssets.math,
                subject: 'Mathematics',
                score: '50/50',
                progress: 1.0,
                isCompleted: true,
              ),
              AssessmentCard(
                icon: AppAssets.math,
                subject: 'English',
                score: '9/15',
                progress: 9 / 15,
                isCompleted: false,
              ),
              AssessmentCard(
                icon: AppAssets.math,
                subject: 'Science',
                score: '0/40',
                progress: 0.0,
                isCompleted: false,
              ),
              AssessmentCard(
                icon: AppAssets.math,
                subject: 'Life Skills',
                score: '0/25',
                progress: 0.0,
                isCompleted: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
