import 'package:flutter/material.dart';

import '../../../common/dimens/app_dimens.dart';
import '../../../common/style_guide/colors.dart';

class AppCard extends StatelessWidget {
  const AppCard._({
    required this.child,
    this.backgroundColor,
    this.borderBottomWidth,
    this.borderColor,
  });

  factory AppCard.primary({
    required Widget child,
    Color? backgroundColor,
    Color? borderColor,
    double? borderBottomWidth,
  }) {
    return AppCard._(
      backgroundColor: backgroundColor,
      borderBottomWidth: borderBottomWidth??5,
      borderColor: borderColor,
      child: child,
    );
  }

  factory AppCard.secondary({required Widget child, Color? backgroundColor}) {
    return AppCard._(backgroundColor: backgroundColor, child: child);
  }

  final Widget child;
  final Color? borderColor;
  final Color? backgroundColor;
  final double? borderBottomWidth;

  @override
  Widget build(BuildContext context) {
    final allBorder = BorderSide(
      color: borderColor ?? AppColors.cardBorder,
    );
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.white,
        borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius / 2),
        border: Border(
          top: allBorder,
          left: allBorder,
          right: allBorder,
          bottom: allBorder.copyWith(width: borderBottomWidth),
        ),
      ),
      child: child,
    );
  }
}
