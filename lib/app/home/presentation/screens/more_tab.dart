import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../common/dimens/app_dimens.dart';
import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../../dependency_manager/injectable.dart';
import '../../../../router/route_helper.dart';
import '../../../_shared/widgets/app_card.dart';
import '../../../_shared/widgets/top_stats_header.dart';

class MoreTab extends StatelessWidget {
  const MoreTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgPrimary,
      appBar: const TopStatsHeader(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.pagePadding),
          child: Column(
            children: [
              24.height,
              const _ProfileSection(),
              24.height,
              _MenuItem(
                icon: AppAssets.icAccounts,
                title: 'Manage Accounts',
                onTap: () => getIt<RouteHelper>().showManageAccounts(),
              ),
              _MenuItem(
                icon: AppAssets.icReferAndEarn,
                title: 'Refer & Earn',
                onTap: () {},
              ),
              _MenuItem(
                icon: AppAssets.icSubscriptions,
                title: 'Subscriptions',
                onTap: () {},
              ),
              _MenuItem(
                icon: AppAssets.icTeesasPortal,
                title: 'Teesas Portal',
                iconColor: AppColors.iconsInfo,
                onTap: () {},
              ),
              _MenuItem(
                icon: AppAssets.icDownloads,
                title: 'Downloaded Video',
                iconColor: AppColors.textSecondary,
                onTap: () {},
              ),
              _MenuItem(
                icon: AppAssets.icPerformanceReport,
                title: 'Performance Reports',
                onTap: () {},
              ),
              _MenuItem(
                icon: AppAssets.icShare,
                title: 'Share The App',
                onTap: () {},
              ),
              8.height,
              const Divider(height: 1, color: AppColors.dividerColor),
              16.height,
              _MenuItem(
                icon: AppAssets.icSettings,
                title: 'Settings',
                onTap: () {},
              ),
              _MenuItem(
                icon: AppAssets.icLogout,
                title: 'Log Out',
                onTap: () {},
              ),
              100.height, // Bottom padding for nav bar
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfileSection extends StatelessWidget {
  const _ProfileSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                'https://i.pravatar.cc/150?u=a042581f4e29026704d',
              ),
            ),
            24.width,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'James Omokewe',
                  style: AppTypography.titleSmall.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                4.height,
                Text(
                  'Primary 1 Student',
                  style: AppTypography.bodySmall.copyWith(
                    fontSize: 14,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.bgBrandSecondaryLight,
              elevation: 0,
              padding: const EdgeInsets.symmetric(vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              'View Profile',
              style: AppTypography.bodyMedium.copyWith(
                color: AppColors.textBrand,
              ),
            ),
          ),
        ),
        16.height,
        const Divider(height: 1, color: AppColors.dividerColor),
      ],
    );
  }
}

class _MenuItem extends StatelessWidget {
  const _MenuItem({
    required this.icon,
    required this.title,
    required this.onTap,
    this.iconColor,
  });

  final String icon;
  final String title;
  final Color? iconColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: AppCard.tertiary(
          backgroundColor: AppColors.white,
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
                colorFilter: iconColor == null
                    ? null
                    : ColorFilter.mode(iconColor!, BlendMode.srcIn),
                height: 16,
                width: 16,
              ),
              12.width,
              Expanded(child: Text(title, style: AppTypography.bodyMedium)),
              const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: AppColors.textSecondary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
