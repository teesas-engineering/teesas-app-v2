import 'package:flutter/material.dart';

import '../../../common/dimens/app_dimens.dart';
import '../../../common/extensions/num_extension.dart';
import '../../../common/style_guide/colors.dart';
import '../../../common/style_guide/style_guide.dart';

class BaseModalParent extends StatelessWidget {
  const BaseModalParent({
    required this.child,
    super.key,
    this.title,
    this.description,
    this.showBack = true,
  });

  final String? title;

  final String? description;
  final bool showBack;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: Dimens.pagePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          10.height,
          if (title != null) ...[
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title!,
                        style: AppTypography.titleLarge.copyWith(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (description != null) ...[
                        8.height,
                        Text(
                          description!,
                          style: AppTypography.bodyMedium.copyWith(
                            color: AppColors.textModalSecondary,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                if (showBack)
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      color: AppColors.iconsPrimary,
                      Icons.cancel_outlined,
                    ),
                  ),
              ],
            ),
            16.height,
            const Divider(thickness: 1, color: AppColors.c7Grey),
            16.height,
          ],
          child
        ],
      ),
    );
  }
}
