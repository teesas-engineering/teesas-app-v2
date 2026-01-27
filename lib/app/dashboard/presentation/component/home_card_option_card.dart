import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../common/dimens/app_dimens.dart';
import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';

class HomeCardOptionCard extends StatelessWidget {
  const HomeCardOptionCard({
    required this.backgroundColor,
    required this.boarderColor,
    required this.asset,
    required this.name,
    this.onclick,
    super.key,
  });

  final Color backgroundColor;
  final Color boarderColor;
  final VoidCallback? onclick;
  final String asset;
  final String name;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onclick,
      radius: Dimens.defaultBorderRadius / 2,
      borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius / 2),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius / 2),
          border: Border.all(width: .5, color: boarderColor),
        ),
        child: Column(
          children: [
            Image.asset(asset, width: 96, height: 100),
            16.height,
            Text(
              name,
              style: AppTypography.titleMedium.copyWith(
                color: AppColors.textPrimary,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
