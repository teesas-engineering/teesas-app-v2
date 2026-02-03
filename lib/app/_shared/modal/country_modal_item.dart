import 'package:flutter/material.dart';

import '../../../common/dimens/app_dimens.dart';
import '../../../common/style_guide/colors.dart';
import '../../../common/style_guide/style_guide.dart';
import '../data/dto/get_countries_dto/get_countries_country_dto.dart';

class CountryModalItem extends StatelessWidget {
  const CountryModalItem({
    required this.country,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  final CountriesDto country;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Material(
        color: AppColors.bgSecondary,
        borderRadius: BorderRadius.circular(Dimens.borderRadiusMin),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(Dimens.borderRadiusMin),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimens.borderRadiusMin),
              border: Border.all(
                color: isSelected
                    ? AppColors.iconsPositive
                    : AppColors.c7Grey,
                width: isSelected ? 2 : 1,
              ),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 24,
                  height: 24,
                  child: isSelected
                      ? Container(
                    decoration: const BoxDecoration(
                      color: AppColors.iconsPositive,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.check,
                      size: 16,
                      color: AppColors.textInvert,
                    ),
                  )
                      : Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.bgAccentRosewood,
                        width: 1.5,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    '${country.emoji} ${country.name}',
                    style: (isSelected
                            ? AppTypography.titleMedium
                            : AppTypography.bodyMedium)
                        .copyWith(
                      color: isSelected
                          ? AppColors.textPrimary
                          : AppColors.textSecondary,
                      fontWeight:
                          isSelected ? FontWeight.w600 : FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
