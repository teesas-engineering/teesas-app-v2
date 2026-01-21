import 'package:flutter/material.dart';

import '../../../common/dimens/app_dimens.dart';
import '../../../common/theme/app_theme.dart';

enum _AppChipVariant { primary, secondary }

class AppChip extends StatelessWidget {
  const AppChip._({
    required this.text,
    required this.isActive,
    required this.variant,
    required this.onTap,
    super.key,
    this.width,
    this.height,
    this.padding,
  });

  final String text;
  final bool isActive;
  final _AppChipVariant variant;
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final EdgeInsets? padding;

  /// Primary chip variant with bottom border (like primary button)
  factory AppChip.primary({
    required String text,
    required bool isActive,
    required VoidCallback? onTap,
    Key? key,
    double? width,
    double? height,
    EdgeInsets? padding,
  }) {
    return AppChip._(
      text: text,
      isActive: isActive,
      variant: _AppChipVariant.primary,
      onTap: onTap,
      key: key,
      width: width,
      height: height,
      padding: padding,
    );
  }

  /// Secondary chip variant
  factory AppChip.secondary({
    required String text,
    required bool isActive,
    required VoidCallback? onTap,
    Key? key,
    double? width,
    double? height,
    EdgeInsets? padding,
  }) {
    return AppChip._(
      text: text,
      isActive: isActive,
      variant: _AppChipVariant.secondary,
      onTap: onTap,
      key: key,
      width: width,
      height: height,
      padding: padding,
    );
  }

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    final appStyles = context.appStyles;

    final chipBorderRadius =
        BorderRadius.circular(Dimens.borderRadiusMin);
    final chipBackgroundColor = appColors.bgSecondary;
    final chipPadding = padding ??
        const EdgeInsets.symmetric(
          horizontal: Dimens.pagePadding,
          vertical: Dimens.buttonPadding,
        );
    final chipHeight = height ?? Dimens.buttonHeight;

    // Determine border based on variant and active state
    Border? chipBorder;
    if (variant == _AppChipVariant.primary) {
      // Primary has thicker bottom border when active
      chipBorder = Border(
        bottom: BorderSide(
          color: isActive ? appColors.borderBrand : appColors.borderPrimary,
          width: isActive ? 2 : 1,
        ),
        top: BorderSide(
          color: appColors.borderPrimary,
          width: 1,
        ),
        left: BorderSide(
          color: appColors.borderPrimary,
          width: 1,
        ),
        right: BorderSide(
          color: appColors.borderPrimary,
          width: 1,
        ),
      );
    } else {
      // Secondary has uniform border
      chipBorder = Border.all(
        color: appColors.borderPrimary,
        width: 1,
      );
    }

    // Build icon based on variant and active state
    Widget? iconWidget;
    if (isActive) {
      // Active: green filled circle with white checkmark
      iconWidget = Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          color: appColors.borderBrand,
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.check,
          color: Colors.white,
          size: 14,
        ),
      );
    } else {
      // Inactive: empty circle with light green outline
      iconWidget = Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
          border: Border.all(
            color: appColors.borderBrand,
            width: 1,
          ),
        ),
      );
    }

    // Build content based on variant
    Widget chipContent;
    if (variant == _AppChipVariant.primary) {
      // Primary: text on left, icon on right
      chipContent = Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: appStyles.bodyLarge,
          ),
          iconWidget,
        ],
      );
    } else {
      // Secondary: icon on left, text on right
      chipContent = Row(
        children: [
          iconWidget,
          const SizedBox(width: 12),
          Text(
            text,
            style: appStyles.bodyLarge,
          ),
        ],
      );
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: chipHeight,
        decoration: BoxDecoration(
          color: chipBackgroundColor,
          borderRadius: chipBorderRadius,
          border: chipBorder,
        ),
        padding: chipPadding,
        child: chipContent,
      ),
    );
  }
}
