import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../common/extensions/num_extension.dart';
import '../../../../../common/style_guide/colors.dart';
import '../../../../../common/style_guide/style_guide.dart';
import '../../../../_shared/widgets/custom_switch.dart';

enum SettingsSubItemTrailingType { toggle, radio, chevron }

class SettingsSubItem extends StatelessWidget {
  const SettingsSubItem({
    required this.title,
    required this.trailingType,
    required this.iconPath,
    super.key,
    this.iconColor,
    this.onTap,
    this.toggleValue,
    this.onToggleChanged,
    this.isSelected = false,
  });

  final String iconPath;
  final String title;
  final Color? iconColor;
  final SettingsSubItemTrailingType trailingType;
  final VoidCallback? onTap;
  final bool? toggleValue;
  final ValueChanged<bool>? onToggleChanged;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
          trailingType == SettingsSubItemTrailingType.chevron ||
              trailingType == SettingsSubItemTrailingType.radio
          ? onTap
          : null,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
        child: Row(
          children: [
            16.width,
            SvgPicture.asset(iconPath, width: 16.w, height: 16.w),
            8.width,
            Expanded(
              child: Text(
                title,
                style: AppTypography.bodyMedium.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                ),
              ),
            ),
            _buildTrailing(),
          ],
        ),
      ),
    );
  }

  Widget _buildTrailing() {
    switch (trailingType) {
      case SettingsSubItemTrailingType.chevron:
        return Icon(
          Icons.arrow_forward_ios,
          size: 16.w,
          color: AppColors.textSecondary,
        );
      case SettingsSubItemTrailingType.toggle:
        return CustomSwitch(
          value: toggleValue ?? false,
          onChanged: onToggleChanged,
        );
      case SettingsSubItemTrailingType.radio:
        return Container(
          width: 16.w,
          height: 16.w,
          decoration: BoxDecoration(
            color: isSelected ? AppColors.bgBrand : Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(
              color: isSelected ? AppColors.bgBrand : AppColors.dividerColor,
              width: 2.w,
            ),
          ),
          child: isSelected
              ? Icon(Icons.check, size: 14.w, color: Colors.white)
              : null,
        );
    }
  }
}
