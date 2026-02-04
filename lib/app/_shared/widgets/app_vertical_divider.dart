import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/style_guide/colors.dart';

enum DividerOrientation { vertical, horizontal }

class AppVerticalDivider extends StatelessWidget {
  const AppVerticalDivider({
    super.key,
    this.height,
    this.color,
    this.orientation,
  });

  final double? height;
  final Color? color;
  final DividerOrientation? orientation;

  @override
  Widget build(BuildContext context) {
    return orientation == DividerOrientation.vertical
        ? Container(
            height: height ?? 36.h,
            width: 1,
            color: color ?? AppColors.colorC7C7C7,
          )
        : Divider(color: AppColors.colorC7C7C7, height: height ?? 36.h);
  }
}
