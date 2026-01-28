import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';

class HomeNavigationBar extends StatelessWidget {
  const HomeNavigationBar({
    required this.currentIndex,
    required this.onIndexChanged,
    super.key,
  });

  final int currentIndex;
  final Function(int) onIndexChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 24,
        right: 24,
        bottom:
            MediaQuery.viewPaddingOf(context).bottom +
            (Platform.isAndroid ? 16 : 0),
      ),
      decoration: BoxDecoration(
        color: AppColors.bgSecondary,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            offset: const Offset(0, 4),
            blurRadius: 16,
            spreadRadius: 2,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _NavItem(
            index: 0,
            label: 'Home',
            icon: AppAssets.icHome,
            currentIndex: currentIndex,
            onTap: onIndexChanged,
          ),
          _NavItem(
            index: 1,
            label: 'Favourites',
            icon: AppAssets.icFavorites,
            currentIndex: currentIndex,
            onTap: onIndexChanged,
          ),
          _NavItem(
            index: 2,
            label: 'Live Class',
            icon: AppAssets.icLiveClass,
            currentIndex: currentIndex,
            onTap: onIndexChanged,
          ),
          _NavItem(
            index: 3,
            label: 'Leaderboard',
            icon: AppAssets.icLeaderboard,
            currentIndex: currentIndex,
            onTap: onIndexChanged,
          ),
          _NavItem(
            index: 4,
            label: 'More',
            icon: AppAssets.icMore,
            currentIndex: currentIndex,
            onTap: onIndexChanged,
          ),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.index,
    required this.label,
    required this.icon,
    required this.currentIndex,
    required this.onTap,
  });
  final int index;
  final String label;
  final String icon;
  final int currentIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    final isSelected = currentIndex == index;
    final color = isSelected ? AppColors.textBrand : AppColors.textTertiary;

    return GestureDetector(
      onTap: () => onTap(index),
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              icon,
              colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
              width: 24,
              height: 24,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: AppTypography.labelSmall.copyWith(
                color: color,
                fontSize: 10,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                fontFamily: AppTypography.fontFamilyUISecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
