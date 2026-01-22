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
    return Container(
      width: 152,
      height: 52,
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      decoration: BoxDecoration(
        color: isActive ? AllColors.white : AllColors.borderPrimaryChip,
        borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius),
        border: isActive
            ? const Border(bottom: BorderSide(color: AllColors.borderBrandLargeLight,width: 5))
            : Border.all(color: AllColors.borderChip, width: 2),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              text,
              style: AllStyles.titleSmall.copyWith(
                color: isActive
                    ? AllColors.textButtonPrimary
                    : AllColors.textTertiary,
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
    );
  }
}
