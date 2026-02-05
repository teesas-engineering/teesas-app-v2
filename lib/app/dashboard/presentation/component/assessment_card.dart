import 'package:flutter/material.dart';

import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/widgets/app_card.dart';
import '../../../_shared/widgets/app_progress_bar.dart';

class AssessmentCard extends StatelessWidget {
  const AssessmentCard({
    required this.icon,
    required this.subject,
    required this.score,
    required this.progress,
    required this.isCompleted,
    super.key,
  });

  final String icon;
  final String subject;
  final String score;
  final double progress;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return AppCard.secondary(
      child: Stack(
        children: [
          Column(
            children: [
              Image.asset(icon, width: 32, height: 32),
              8.height,
              Text(
                subject,
                style: AppTypography.titleSmall.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              8.height,
              AppProgressBar(
                value: progress,
                height: 6,
                backgroundColor: AppColors.colorE2E8F0,
                progressColor: progress == 1.0
                    ? AppColors.bgBrandSecondary
                    : AppColors.colorFF9F1C,
                borderRadius: BorderRadius.circular(3),
                margin: EdgeInsets.zero,
              ),
              8.height,
              Text(
                score,
                style: AppTypography.bodySmall.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
          if (isCompleted)
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.bgBrandSecondary,
                ),
                child: Icon(Icons.check, size: 14, color: AppColors.white),
              ),
            ),
        ],
      ),
    );
  }
}
