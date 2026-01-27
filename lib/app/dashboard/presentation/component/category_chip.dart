import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../common/dimens/app_dimens.dart';
import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';

class CategoryChip extends StatelessWidget {
  const CategoryChip({
    required this.text,
    required this.isSelected,
    required this.onTap,
    this.hasSubscription = false,
    super.key,
  });

  final String text;
  final bool isSelected;
  final VoidCallback? onTap;
  final bool hasSubscription;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius),
      radius: Dimens.defaultBorderRadius,
      child: Container(
        width: 152,
        height: 52,
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.white : AppColors.borderPrimaryChip,
          borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius),
          border: isSelected
              ? const Border(
                  bottom: BorderSide(color: AppColors.borderBrandLargeLight),
                )
              : Border.all(color: AppColors.borderChip, width: 2),
          boxShadow: const [
            BoxShadow(
              color: AppColors.borderBrandLargeLight,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            if (hasSubscription) ...[
              Image.asset(
                AppAssets.subscriptionBadge,
                width: 16,
                height: 16,
              ),
              4.width,
            ],
            Expanded(
              child: Text(
                text,
                style: AppTypography.titleSmall.copyWith(
                  color: isSelected
                      ? AppColors.textButtonPrimary
                      : AppColors.textTertiary,
                  fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400,
                ),
              ),
            ),
            SvgPicture.asset(
              isSelected ? AppAssets.radioChecked : AppAssets.radioUnChecked,
              width: 16,
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
