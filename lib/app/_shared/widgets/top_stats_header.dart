import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/dimens/app_dimens.dart';
import '../../../common/extensions/num_extension.dart';
import '../../../common/style_guide/colors.dart';
import '../../../common/style_guide/style_guide.dart';

class TopStatsHeader extends StatelessWidget implements PreferredSizeWidget {
  const TopStatsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      elevation: 0,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.pagePadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(AppAssets.icPoints, width: 16, height: 19),
                6.width,
                Text(
                  '234',
                  style: AppTypography.titleMedium.copyWith(
                    color: AppColors.iconsAccentBlue,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(AppAssets.icStreak, width: 16, height: 19),
                6.width,
                Text(
                  '12',
                  style: AppTypography.titleMedium.copyWith(
                    color: AppColors.iconsAccentOrange,
                  ),
                ),
              ],
            ),
            SvgPicture.asset(AppAssets.icNotification, width: 16, height: 19),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
