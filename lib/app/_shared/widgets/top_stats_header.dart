import 'package:flutter/material.dart';
import '../../../common/dimens/app_dimens.dart';
import '../../../common/style_guide/colors.dart';
import '../../../common/style_guide/style_guide.dart';
import '../../dashboard/presentation/component/app_bar_action.dart';

class TopStatsHeader extends StatelessWidget implements PreferredSizeWidget {
  const TopStatsHeader({super.key, this.includePadding = true});

  final bool includePadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Dimens.pagePadding,
      ).copyWith(bottom: includePadding ? 20 : 0),
      color: AppColors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const AppBarAction(asset: AppAssets.pointsIcon, value: '224'),
          const AppBarAction(
            asset: AppAssets.streakIcon,
            width: 16,
            height: 19,
            value: '12',
          ),
          AppBarAction(asset: AppAssets.notificationIcon, onClick: () {}),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
