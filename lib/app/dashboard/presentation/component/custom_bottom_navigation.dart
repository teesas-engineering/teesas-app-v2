import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/stores/dashboard_store/dashboard_store.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final dashboardStore = context.read<DashboardStore>();

    final options = [
      (AppAssets.homeIcon, 'Home'),
      (AppAssets.favorites, 'Favorites'),
      (AppAssets.liveclassesIcon, 'Live Class'),
      (AppAssets.leaderboard, 'Leaderboard'),
      (AppAssets.moreIcon, 'More'),
    ];
    return Container(
      height: 76,
      margin: const EdgeInsets.only(left: 20, right: 20),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(360),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        // spacing: 20,
        children: List.generate(options.length, (index) {
          final e = options[index];
          return Observer(
            builder: (_) {
              final currentIndex = dashboardStore.currentIndex;
              final isSelected = index == currentIndex;
              return InkWell(
                splashColor: AppColors.bgBrandSecondary.withValues(alpha: .1),
                onTap: () => dashboardStore.currentIndex = index,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        e.$1,
                        color: isSelected ? AppColors.bgBrandSecondary : null,
                        width: 24,
                        height: 24,
                      ),
                      6.height,
                      Text(
                        e.$2,
                        style: AppTypography.bodySmall.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: isSelected
                              ? AppColors.bgBrandSecondary
                              : AppColors.textSecondaryActive,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
