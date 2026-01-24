import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/dimens/app_dimens.dart';
import '../../../common/style_guide/colors.dart';
import '../../../common/style_guide/style_guide.dart';

class AppSecondaryChip extends StatelessWidget {
  const AppSecondaryChip({
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
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        curve: Curves.easeInOut,

        height: 50,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
          color: AppColors.bgSecondary,
          borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius / 2),
          border: Border.all(color: AppColors.borderTertiary, width: .5),
        ),
        duration: const Duration(milliseconds: 800),
        child: Row(
          children: [
            SvgPicture.asset(
              isActive ? AppAssets.radioChecked : AppAssets.radioUnChecked,
              width: 16,
              height: 16,
            ),
            const SizedBox(width: 8),
            Text(
              text,
              style: AppTypography.titleSmall.copyWith(
                color: AppColors.textButtonSecondary,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
