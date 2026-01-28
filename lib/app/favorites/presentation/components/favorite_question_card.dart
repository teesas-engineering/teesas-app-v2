import 'package:flutter/material.dart';

import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/widgets/app_card.dart';

class FavoriteQuestionCard extends StatelessWidget {
  const FavoriteQuestionCard({
    required this.title,
    required this.subject,
    super.key,
  });

  final String title;
  final String subject;

  @override
  Widget build(BuildContext context) {
    return AppCard.primary(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTypography.titleSmall.copyWith(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.w600,
            ),
          ),
          4.height,
          Text(
            subject,
            style: AppTypography.bodySmall.copyWith(
              color: AppColors.textWarning,
            ),
          ),
        ],
      ),
    );
  }
}
