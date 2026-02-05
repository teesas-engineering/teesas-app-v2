import 'package:flutter/material.dart';

import '../../../../../common/extensions/num_extension.dart';
import '../../../../../common/style_guide/colors.dart';
import '../../../../../common/style_guide/style_guide.dart';
import '../../../../../common/utils/number_utils.dart';

class ReferralStatItem extends StatelessWidget {
  const ReferralStatItem({required this.label, required this.value, super.key});

  final String label;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            label,
            textAlign: TextAlign.center,
            style: AppTypography.labelSmall.copyWith(
              color: AppColors.textSecondary,
              height: 1.2,
            ),
          ),
          8.height,
          Text(
            formatNumber(value),
            textAlign: TextAlign.center,
            style: AppTypography.titleSmall.copyWith(
              color: AppColors.color0A0A0A,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
