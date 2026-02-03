import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../common/extensions/num_extension.dart';
import '../../../../../common/style_guide/style_guide.dart';
import 'settings_item_trailing.dart';

class SettingsItem extends StatelessWidget {
  const SettingsItem({
    required this.title,
    required this.trailingType,
    required this.iconPath,
    super.key,
    this.iconColor,
    this.onTap,
    this.toggleValue,
    this.onToggleChanged,
  });

  final String iconPath;
  final String title;
  final Color? iconColor;
  final SettingsItemTrailingType trailingType;
  final VoidCallback? onTap;
  final bool? toggleValue;
  final ValueChanged<bool>? onToggleChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: trailingType != SettingsItemTrailingType.toggle ? onTap : null,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
        child: Row(
          children: [
            SvgPicture.asset(iconPath, height: 16.w, width: 16.w),
            16.width,
            Expanded(
              child: Text(
                title,
                style: AppTypography.bodyMedium.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            SettingsItemTrailing(
              trailingType: trailingType,
              toggleValue: toggleValue,
              onToggleChanged: onToggleChanged,
            ),
          ],
        ),
      ),
    );
  }
}
