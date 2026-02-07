import 'package:flutter/material.dart';

import '../../../common/dimens/app_dimens.dart';
import '../../../common/style_guide/colors.dart';

class AppCard extends StatelessWidget {
  const AppCard._({
    required this.child,
    this.backgroundColor,
    this.borderBottomWidth,
    this.borderColor,
    this.hasBorder,
    this.borderRadius,
    this.padding,
  });

  factory AppCard.primary({
    required Widget child,
    Color? backgroundColor,
    Color? borderColor,
    EdgeInsets? padding,
    double? borderBottomWidth,
    double? borderRadius,
  }) {
    return AppCard._(
      padding: padding,
      backgroundColor: backgroundColor,
      borderBottomWidth: borderBottomWidth ?? 5,
      borderColor: borderColor,
      borderRadius: borderRadius,
      child: child,
    );
  }

  factory AppCard.secondary({
    required Widget child,
    Color? backgroundColor,
    double? borderRadius,
    EdgeInsets? padding,
  }) {
    return AppCard._(
      backgroundColor: backgroundColor,
      borderRadius: borderRadius,
      padding: padding,
      child: child,
    );
  }
  factory AppCard.tertiary({required Widget child, Color? backgroundColor}) {
    return AppCard._(
      backgroundColor: backgroundColor,
      borderBottomWidth: 1,
      borderColor: AppColors.colorD9E8E8,
      hasBorder: false,
      borderRadius: 12,
      child: child,
    );
  }
  final bool? hasBorder;
  final double? borderRadius;
  final Widget child;
  final Color? borderColor;
  final Color? backgroundColor;
  final double? borderBottomWidth;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final allBorder = BorderSide(color: borderColor ?? AppColors.colorD9E8E8);
    return Container(
      padding: padding ?? const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.white,
        borderRadius: BorderRadius.circular(
          borderRadius ?? Dimens.defaultBorderRadius / 2,
        ),
        border: hasBorder == false
            ? null
            : Border(
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
