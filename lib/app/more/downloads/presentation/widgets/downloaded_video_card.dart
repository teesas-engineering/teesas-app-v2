import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../common/extensions/num_extension.dart';
import '../../../../../common/style_guide/colors.dart';
import '../../../../../common/style_guide/style_guide.dart';
import '../../../../_shared/widgets/app_card.dart';
import '../../data/model/downloaded_video.dart';

class DownloadedVideoCard extends StatelessWidget {
  const DownloadedVideoCard({required this.video, super.key});

  final DownloadedVideo video;

  @override
  Widget build(BuildContext context) {
    return AppCard.tertiary(
      backgroundColor: AppColors.white,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: Image.asset(
                      video.thumbnail,
                      width: 80.w,
                      height: 56.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 4.h,
                    right: 4.w,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 4.5.w,
                        vertical: 2.5.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      child: Text(
                        video.duration,
                        style: AppTypography.labelSmall.copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black,
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
                      video.title,
                      style: AppTypography.bodyMedium.copyWith(
                        fontWeight: FontWeight.w500,
                        color: AppColors.color0A0A0A,
                      ),
                    ),
                    8.height,
                    Text(
                      video.subject,
                      style: AppTypography.bodySmall.copyWith(
                        color: AppColors.colorFF9F1C,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          9.height,
          Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4.r),
                  child: LinearProgressIndicator(
                    value: video.progress,
                    backgroundColor: AppColors.colorE2E8F0,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      video.isCompleted
                          ? AppColors.bgBrandSecondary
                          : AppColors.colorFF9F1C,
                    ),
                    minHeight: 6.h,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
              ),
              24.width,
              Text(
                '${(video.progress * 100).toInt()}%',
                style: AppTypography.labelSmall.copyWith(
                  color: AppColors.textSecondary,
                  fontWeight: FontWeight.w400,
                  fontSize: 10.sp,
                ),
              ),
              8.width,
              SvgPicture.asset(
                AppAssets.icDownloads,
                width: 16.w,
                height: 16.w,
                colorFilter: const ColorFilter.mode(
                  AppColors.colorFF9F1C,
                  BlendMode.srcIn,
                ), // Orange color for download icon
              ),
            ],
          ),
        ],
      ),
    );
  }
}
