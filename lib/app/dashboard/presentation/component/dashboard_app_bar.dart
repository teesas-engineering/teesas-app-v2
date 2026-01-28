import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/components/page_padding.dart';
import '../../../_shared/enum/gender.dart';
import '../../../_shared/stores/dashboard_store/dashboard_store.dart';
import '../../../_shared/widgets/clickable_drop_down_button.dart';
import '../../../_shared/widgets/top_stats_header.dart';
import '../../../_shared/widgets/user_avatar.dart';
import '../modal/account_modal.dart';
import '../modal/category_selection_modal.dart';

class DashboardAppBar extends StatefulWidget implements PreferredSizeWidget {
  const DashboardAppBar({super.key});

  @override
  State<DashboardAppBar> createState() => _DashboardAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(110);
}

class _DashboardAppBarState extends State<DashboardAppBar> {
  @override
  Widget build(BuildContext context) {
    final store = context.read<DashboardStore>();
    return Observer(builder: (_){
      return ColoredBox(
        color: AppColors.white,
        child: Column(
          children: [
           const TopStatsHeader(includePadding: false,),
            if(store.currentIndex==0)
              ...[
                24.height,
                PagePadding(child: Row(
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
                    ClickableDropdownButton(text: 'Grade 1', onTap: () {
                      CategorySelectionModal.show(context);
                    }),
                  ],
                )),
              ]
          ],
        ),
      );
    });
  }
}
