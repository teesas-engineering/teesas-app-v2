import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/style_guide/colors.dart';
import '../../../../_shared/widgets/custom_switch.dart';

enum SettingsItemTrailingType { chevron, dropdown, toggle }

class SettingsItemTrailing extends StatelessWidget {
  const SettingsItemTrailing({
    required this.trailingType,
    super.key,
    this.toggleValue,
    this.onToggleChanged,
  });

  final SettingsItemTrailingType trailingType;
  final bool? toggleValue;
  final ValueChanged<bool>? onToggleChanged;

  @override
  Widget build(BuildContext context) {
    switch (trailingType) {
      case SettingsItemTrailingType.chevron:
        return Icon(
          Icons.arrow_forward_ios,
          size: 18.w,
          color: AppColors.textSecondary,
        );
      case SettingsItemTrailingType.dropdown:
        return Icon(
          Icons.arrow_forward_ios,
          size: 16.w,
          color: AppColors.textSecondary,
        );
      case SettingsItemTrailingType.toggle:
        return CustomSwitch(
          value: toggleValue ?? false,
          onChanged: onToggleChanged,
        );
    }
  }
}
