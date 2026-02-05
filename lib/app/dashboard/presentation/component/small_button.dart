import 'package:flutter/material.dart';

import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';

class SmallButton extends StatelessWidget {
  const SmallButton({
    required this.text,
    required this.onPressed,
    super.key,
  });

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    const commonBorder = BorderSide(color: AppColors.bgBrandSecondary);
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(10),
      radius: 10,
      child: Container(
        height: 20,
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
        decoration: BoxDecoration(
          color: AppColors.bgButtonSecondary,
          borderRadius: BorderRadius.circular(10),
          border: const Border(
            top: commonBorder,
            bottom:  BorderSide(
              color: AppColors.bgBrandSecondary,
              width: 2,
            ),
            right: commonBorder,
            left: commonBorder,
          ),
          boxShadow: const [
            BoxShadow(color: AppColors.bgBrand, offset: Offset(0, 2)),
          ],
        ),
        child: Text(
          text,
          style: AppTypography.titleSmall.copyWith(
            color: AppColors.color1E1C1C,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}
