import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';

class FilterCheckboxItem extends StatelessWidget {
  const FilterCheckboxItem({
    required this.text,
    required this.isSelected,
    super.key,
  });

  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: AppTypography.titleMedium.copyWith(
            color: AppColors.textPrimary,
          ),
        ),
        const Spacer(),
        SvgPicture.asset(
          isSelected ? AppAssets.radioChecked : AppAssets.radioUnChecked,
          width: 20,
          height: 20,
        ),
      ],
    );
  }
}
