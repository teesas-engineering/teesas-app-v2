import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';

class AssessmentActionButton extends StatelessWidget {
  const AssessmentActionButton({
    required this.icon,
    required this.label,
    required this.onTap,
    this.isTrailing = false,
    super.key,
  });

  final String icon;
  final String label;
  final VoidCallback onTap;
  final bool isTrailing;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (!isTrailing) ...[
            SvgPicture.asset(icon, width: 16.w, height: 16.w),
            8.horizontalSpace,
          ],
          Text(
            label,
            style: AppTypography.labelSmall.copyWith(
              color: AppColors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
          if (isTrailing) ...[
            8.horizontalSpace,
            SvgPicture.asset(icon, width: 16.w, height: 16.w),
          ],
        ],
      ),
    );
  }
}
