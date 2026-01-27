import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../common/dimens/app_dimens.dart';
import '../../../common/style_guide/colors.dart';
import '../../../common/style_guide/style_guide.dart';

class AppChip extends StatelessWidget {
  const AppChip({
    required this.text,
    required this.isActive,
    required this.onTap,
    super.key,
  });

  final String text;
  final bool isActive;
  final VoidCallback? onTap;

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
          color: isActive ? AppColors.white : AppColors.borderPrimaryChip,
          borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius),
          border: isActive
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
            Expanded(
              child: Text(
                text,
                style: AppTypography.titleSmall.copyWith(
                  color: isActive
                      ? AppColors.textButtonPrimary
                      : AppColors.textTertiary,
                  fontWeight: isActive ? FontWeight.w700 : FontWeight.w400,
                ),
              ),
            ),
            SvgPicture.asset(
              isActive ? AppAssets.radioChecked : AppAssets.radioUnChecked,
              width: 16,
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
