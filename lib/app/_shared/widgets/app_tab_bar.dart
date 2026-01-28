import 'package:flutter/material.dart';

import '../../../common/style_guide/colors.dart';
import '../../../common/style_guide/style_guide.dart';

class AppTabBar extends StatelessWidget implements PreferredSizeWidget  {
  const AppTabBar({required this.onTap, required this.tabs, super.key});

  final ValueChanged<int> onTap;
  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: TabBar(
        labelColor: AppColors.textPrimary,
        unselectedLabelColor: AppColors.textSecondary,
        labelStyle: AppTypography.labelLarge,
        unselectedLabelStyle: AppTypography.bodyMedium,
        indicatorColor: AppColors.borderBrand,
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: tabs.map((e) => Tab(text: e)).toList(),
        onTap: onTap,
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 26);
}
