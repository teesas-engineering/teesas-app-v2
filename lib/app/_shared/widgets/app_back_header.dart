import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../common/dimens/app_dimens.dart';
import '../../../common/style_guide/colors.dart';
import '../../../common/style_guide/style_guide.dart';

class AppBackHeader extends StatelessWidget implements PreferredSizeWidget {
  const AppBackHeader({super.key, this.onBackPressed});

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
                  color: AppColors.colorF3F8F8,
                  border: Border.all(color: AppColors.colorD9E8E8),
                ),
                child: SvgPicture.asset(AppAssets.icArrowBack),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
