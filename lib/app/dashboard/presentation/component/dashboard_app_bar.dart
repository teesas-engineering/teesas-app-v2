import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../common/dimens/app_dimens.dart';
import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../../common/utils/modal_helper.dart';
import '../../../_shared/enum/gender.dart';
import '../../../_shared/widgets/clickable_drop_down_button.dart';
import '../../../_shared/widgets/user_avatar.dart';
import '../modal/account_modal.dart';
import 'app_bar_action.dart';

class DashboardAppBar extends StatefulWidget implements PreferredSizeWidget {
  const DashboardAppBar({super.key});

  @override
  State<DashboardAppBar> createState() => _DashboardAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(120);
}

class _DashboardAppBarState extends State<DashboardAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Dimens.pagePadding,
      ).copyWith(top: 60),
      color: AppColors.white,
      child: Column(
        children: [
          8.height,
          Row(
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
          24.height,
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    UserAvatar(
                      gender: Gender.female,
                      onTap: () {
                        unawaited(AccountModal.show(context));
                      },
                    ),
                    4.width,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome',
                          style: AppTypography.bodySmall.copyWith(
                            color: AppColors.textButtonPrimary,
                          ),
                        ),
                        4.height,
                        Text(
                          'James Omokewe',
                          style: AppTypography.titleMedium.copyWith(
                            color: AppColors.textButtonPrimary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              4.width,
              ClickableDropdownButton(text: 'Grade 1', onTap: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
