import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/dimens/app_dimens.dart';
import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../../dependency_manager/injectable.dart';
import '../../../../router/main_router.dart';
import '../../../../router/route_helper.dart';
import '../../../_shared/widgets/invite_friends_sheet.dart';
import '../../../_shared/widgets/top_stats_header.dart';
import '../component/more_menu_item.dart';
import '../component/more_profile_section.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Scaffold(
          appBar: const TopStatsHeader(),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.pagePadding),
            child: Column(
              children: [
                24.height,
                const MoreProfileSection(),
                24.height,
                MoreMenuItem(
                  icon: AppAssets.icAccounts,
                  title: 'Manage Accounts',
                  onTap: () => getIt<RouteHelper>().showManageAccounts(),
                ),
                MoreMenuItem(
                  icon: AppAssets.icReferAndEarn,
                  title: 'Refer & Earn',
                  onTap: () => context.push(MainRouter.referAndEarn),
                ),
                MoreMenuItem(
                  icon: AppAssets.icSubscriptions,
                  title: 'Subscriptions',
                  onTap: () => context.push(MainRouter.subscription),
                ),
                MoreMenuItem(
                  icon: AppAssets.icTeesasPortal,
                  title: 'Teesas Portal',
                  iconColor: AppColors.iconsInfo,
                  onTap: () {},
                ),
                MoreMenuItem(
                  icon: AppAssets.icDownloads,
                  title: 'Downloaded Video',
                  iconColor: AppColors.textSecondary,
                  onTap: () => context.push(MainRouter.downloadedVideos),
                ),
                MoreMenuItem(
                  icon: AppAssets.icPerformanceReport,
                  title: 'Performance Reports',
                  onTap: () {},
                ),
                MoreMenuItem(
                  icon: AppAssets.icShare,
                  title: 'Share The App',
                  onTap: () async {
                    await showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) =>
                          const InviteFriendsSheet(referralCode: r'OJUY$%TE'),
                    );
                  },
                ),
                8.height,
                const Divider(height: 1, color: AppColors.dividerColor),
                16.height,
                MoreMenuItem(
                  icon: AppAssets.icSettings,
                  title: 'Settings',
                  onTap: () => context.push(MainRouter.settings),
                ),
                MoreMenuItem(
                  icon: AppAssets.icLogout,
                  title: 'Log Out',
                  onTap: () {},
                ),
                100.height, // Bottom padding for nav bar
              ],
            ),
          ),
        ),
      ),
    );
  }
}
