import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../common/extensions/num_extension.dart';
import '../../../common/style_guide/colors.dart';
import '../../../common/style_guide/style_guide.dart';

class ClickableDropdownButton extends StatelessWidget {
  const ClickableDropdownButton({
    required this.text,
    required this.onTap,
    this.endIcon,
    this.showEndIcon = true,
    this.height = 32,
    this.textStyle,
    super.key,
  });

  final String text;
  final bool showEndIcon;
  final VoidCallback? onTap;
  final double? height;
  final Widget? endIcon;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(6),
      radius: 6,
      child: Container(
        height: height ?? 32,
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(
          color: AppColors.bgButtonSecondary,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: AppColors.bgBrandSecondary, width: .5),
          boxShadow: const [
            BoxShadow(color: AppColors.bgBrand, offset: Offset(0, 2)),
          ],
        ),
        child: Row(
          children: [
            Text(
              text,
              style:
                  textStyle ??
                  AppTypography.titleSmall.copyWith(
                    color: AppColors.color1E1C1C,
                  ),
            ),
            if (showEndIcon) ...[
              4.width,
              endIcon ??
                  SvgPicture.asset(AppAssets.arrowDown, width: 16, height: 16),
            ],
          ],
        ),
      ),
    );
  }
}
