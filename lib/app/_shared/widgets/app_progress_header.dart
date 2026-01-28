import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../common/dimens/app_dimens.dart';
import '../../../common/extensions/num_extension.dart';
import '../../../common/style_guide/colors.dart';
import '../../../common/style_guide/style_guide.dart';
import 'app_progress_bar.dart';

class AppProgressHeader extends StatelessWidget implements PreferredSizeWidget {
  const AppProgressHeader({super.key, this.progress = 0.0, this.onBackPressed});

  final double progress;
  final VoidCallback? onBackPressed;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 16.h);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.pagePadding,
        vertical: 16.h,
      ),
      child: SafeArea(
        child: Row(
          children: [
            InkWell(
              onTap: onBackPressed ?? () => Navigator.of(context).pop(),
              borderRadius: BorderRadius.circular(20.r),
              child: Container(
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.buttonBg,
                  border: Border.all(color: AppColors.cardBorder),
                ),
                child: SvgPicture.asset(AppAssets.icArrowBack),
              ),
            ),
            24.width,
            Expanded(
              child: AppProgressBar(
                value: progress,
                height: 6.h,
                borderRadius: BorderRadius.circular(4.r),
                backgroundColor: AppColors.onboardingIndicatorInActive,
                progressColor: AppColors.bgAccent,
                margin: EdgeInsets.zero,
              ),
            ),
            (80.w - Dimens.pagePadding).width,
          ],
        ),
      ),
    );
  }
}
