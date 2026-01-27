import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../common/dimens/app_dimens.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/enum/term.dart';

class TermChip extends StatelessWidget {
  const TermChip({
    required this.term,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  final Term term;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius),
      radius: Dimens.defaultBorderRadius,
      child: Container(
        width: double.infinity,
        height: 52,
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.white : AppColors.borderPrimaryChip,
          borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius),
          border: isSelected
              ? Border.all(
                  color: AppColors.borderBrandLargeLight,
                  width: 1,
                )
              : Border.all(color: AppColors.borderChip, width: 2),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                term.displayName,
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
