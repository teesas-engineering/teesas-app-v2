import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/style_guide/colors.dart';

class AppVerticalDivider extends StatelessWidget {
  const AppVerticalDivider({super.key, this.height, this.color});

  final double? height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 36.h,
      width: 1,
      color: color ?? AppColors.colorC7C7C7,
    );
  }
}
