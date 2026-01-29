import 'package:flutter/material.dart';

import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/widgets/app_card.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    required this.title,
    required this.child,
    this.subtitle,
    this.subscriptionCount = 0,
    super.key,
  });

  final String title;
  final String? subtitle;
  final int subscriptionCount;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AppCard.primary(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                title,
                style: AppTypography.titleMedium.copyWith(
                  color: AppColors.textTertiary,
                ),
              ),
              if (subtitle != null) ...[
                4.width,
                Text(
                  subtitle!,
                  style: AppTypography.titleMedium.copyWith(
                    color: AppColors.textTertiary,
                  ),
                ),
              ],
              if (subscriptionCount > 0) ...[
                4.width,
                Text(
                  '($subscriptionCount Subscription)',
                  style: AppTypography.titleSmall.copyWith(
                    fontSize: 12,
                    color: AppColors.textWarning,
                  ),
                ),
              ],
            ],
          ),
          12.height,
          child,
        ],
      ),
    );
  }
}
