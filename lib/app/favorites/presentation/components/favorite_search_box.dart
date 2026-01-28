import 'package:flutter/material.dart';

import '../../../../common/dimens/app_dimens.dart';
import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../dashboard/presentation/modal/filter_modal.dart';

class FavoriteSearchBox extends StatelessWidget {
  const FavoriteSearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 48,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: AppColors.borderPrimary,
              borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: AppColors.iconsSecondary,
                  size: 20,
                ),
                12.width,
                Expanded(
                  child: Text(
                    'Search',
                    style: AppTypography.bodyMedium.copyWith(
                      color: AppColors.textTertiary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        12.width,
        InkWell(
          onTap: () => FilterModal.show(context),
          borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius),
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.borderPrimary,
              borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius),
            ),
            child: Center(
              child: Icon(
                Icons.tune,
                color: AppColors.textBrand,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
