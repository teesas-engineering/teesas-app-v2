import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/widgets/app_card.dart';

class MoreMenuItem extends StatelessWidget {
  const MoreMenuItem({
    required this.icon,
    required this.title,
    required this.onTap,
    this.iconColor,
    super.key,
  });

  final String icon;
  final String title;
  final Color? iconColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: AppCard.tertiary(
          backgroundColor: AppColors.white,
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
                colorFilter: iconColor == null
                    ? null
                    : ColorFilter.mode(iconColor!, BlendMode.srcIn),
                height: 16,
                width: 16,
              ),
              12.width,
              Expanded(child: Text(title, style: AppTypography.bodyMedium)),
              const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: AppColors.textSecondary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
