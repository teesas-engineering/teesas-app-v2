import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../common/extensions/num_extension.dart';
import '../../../../../app/_shared/widgets/app_thumb_progress_bar.dart';
import '../../../../../common/style_guide/colors.dart';
import '../../../../../common/style_guide/style_guide.dart';
import '../../data/model/subscription.dart';
import 'subscription_category_tag.dart';

class ActiveSubscriptionCard extends StatelessWidget {
  const ActiveSubscriptionCard({required this.subscription, super.key});

  final Subscription subscription;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.cardBorder),
      ),
      child: Row(
        children: [
          Container(
            width: 32.w,
            height: 32.w,
            decoration: BoxDecoration(
              color: AppColors.bgWarning, // Light yellow/orange bg
              borderRadius: BorderRadius.circular(8.r),
            ),
            alignment: Alignment.center,
            child: Icon(
              Icons.auto_stories, // Book/Learning icon
              color: AppColors.bgAccentAmber,
              size: 24.sp,
            ),
          ),
          12.width,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SubscriptionCategoryTag(subscription.category),
                    if (subscription.subCategory != null) ...[
                      8.width,
                      Text(
                        subscription.subCategory!,
                        style: AppTypography.bodySmall.copyWith(
                          color: AppColors.textTertiary,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ],
                ),
                8.height,
                Text(
                  subscription.planName,
                  style: AppTypography.bodyMedium.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: AppColors.textPrimary,
                  ),
                ),
                12.height,
                Row(
                  children: [
                    Expanded(
                      child: AppThumbProgressBar(
                        progress: subscription.progress,
                      ),
                    ),
                    12.width,
                    Text(
                      '${subscription.daysLeft} Days left',
                      style: AppTypography.bodySmall.copyWith(
                        color: AppColors.textTertiary,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
