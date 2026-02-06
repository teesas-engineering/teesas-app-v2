import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/style_guide/colors.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({
    super.key,
    this.height,
    this.width,
    this.color,
    this.direction = Axis.horizontal,
  });

  final double? height;
  final double? width;
  final Color? color;
  final Axis direction;

  @override
  Widget build(BuildContext context) {
    if (direction == Axis.vertical) {
      return Container(
        height: height ?? 36.h,
        width: width ?? 1,
        color: color ?? AppColors.colorC7C7C7,
      );
    }
    return Divider(color: AppColors.colorC7C7C7, height: height ?? 36.h);
  }
}
