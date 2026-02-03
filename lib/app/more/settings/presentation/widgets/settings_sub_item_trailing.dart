import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/style_guide/colors.dart';
import '../../../../_shared/widgets/custom_switch.dart';

enum SettingsSubItemTrailingType { toggle, radio, chevron }

class SettingsSubItemTrailing extends StatelessWidget {
  const SettingsSubItemTrailing({
    required this.trailingType,
    super.key,
    this.toggleValue,
    this.onToggleChanged,
    this.isSelected = false,
  });

  final SettingsSubItemTrailingType trailingType;
  final bool? toggleValue;
  final ValueChanged<bool>? onToggleChanged;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
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
              color: isSelected ? AppColors.bgBrand : AppColors.colorC7C7C7,
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
