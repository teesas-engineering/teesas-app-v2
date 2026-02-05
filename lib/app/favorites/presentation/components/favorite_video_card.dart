import 'package:flutter/material.dart';

import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/widgets/app_card.dart';

class FavoriteVideoCard extends StatelessWidget {
  const FavoriteVideoCard({
    required this.title,
    required this.subject,
    required this.thumbnail,
    required this.duration,
    super.key,
  });

  final String title;
  final String subject;
  final String thumbnail;
  final String duration;

  @override
  Widget build(BuildContext context) {
    return AppCard.secondary(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  thumbnail,
                  width: 120,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 4,
                right: 4,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    duration,
                    style: AppTypography.bodySmall.copyWith(
                      color: AppColors.white,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
          12.width,
          Expanded(
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
                    color: AppColors.colorD97706,
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
