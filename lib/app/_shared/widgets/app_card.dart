import 'package:flutter/material.dart';

import '../../../common/dimens/app_dimens.dart';
import '../../../common/theme/app_theme.dart';

enum _AppCardVariant { primary, secondary }

class AppCard extends StatelessWidget {
  const AppCard._({
    required this.child,
    required this.variant,
    super.key,
    this.backgroundColor,
    this.borderBottomWidth,
    this.borderBottomColor,
    this.borderRadius,
    this.padding,
    this.margin,
  });

  final Widget child;
  final _AppCardVariant variant;
  final Color? backgroundColor;
  final double? borderBottomWidth;
  final Color? borderBottomColor;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  /// Primary card variant with bottom border
  factory AppCard.primary({
    required Widget child,
    Key? key,
    Color? backgroundColor,
    double? borderBottomWidth,
    Color? borderBottomColor,
    BorderRadius? borderRadius,
    EdgeInsets? padding,
    EdgeInsets? margin,
  }) {
    return AppCard._(
      child: child,
      variant: _AppCardVariant.primary,
      key: key,
      backgroundColor: backgroundColor,
      borderBottomWidth: borderBottomWidth,
      borderBottomColor: borderBottomColor,
      borderRadius: borderRadius,
      padding: padding,
      margin: margin,
    );
  }

  /// Secondary card variant with simple borders all around
  factory AppCard.secondary({
    required Widget child,
    Key? key,
    Color? backgroundColor,
    BorderRadius? borderRadius,
    EdgeInsets? padding,
    EdgeInsets? margin,
  }) {
    return AppCard._(
      child: child,
      variant: _AppCardVariant.secondary,
      key: key,
      backgroundColor: backgroundColor,
      borderRadius: borderRadius,
      padding: padding,
      margin: margin,
    );
  }

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;

    final cardBackgroundColor = backgroundColor ?? appColors.bgSecondary;
    final cardBorderRadius =
        borderRadius ?? BorderRadius.circular(Dimens.borderRadiusMin);
    final cardPadding = padding ?? const EdgeInsets.all(Dimens.pagePadding);
    final cardMargin = margin ?? EdgeInsets.zero;

    // Determine border based on variant
    Border? cardBorder;
    if (variant == _AppCardVariant.primary) {
      // Primary: bottom border only
      final defaultBorderBottomWidth = borderBottomWidth ?? 1.0;
      final cardBorderBottomColor =
          borderBottomColor ?? appColors.borderPrimary;
      cardBorder = Border(
        bottom: BorderSide(
          color: cardBorderBottomColor,
          width: defaultBorderBottomWidth,
        ),
      );
    } else {
      // Secondary: simple borders all around
      cardBorder = Border.all(
        color: appColors.borderPrimary,
        width: 1,
      );
    }

    return Container(
      decoration: BoxDecoration(
        color: cardBackgroundColor,
        borderRadius: cardBorderRadius,
        border: cardBorder,
      ),
      padding: cardPadding,
      margin: cardMargin,
      child: child,
    );
  }
}
