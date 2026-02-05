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

  final CountryDto country;
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
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: isSelected ? AppColors.white : AppColors.borderPrimaryChip,
              borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius),
              border: isSelected
                  ? const Border(
                bottom: BorderSide(color: AppColors.bgBrand,width: 4,),
                top: BorderSide(color: AppColors.bgBrand),
                left: BorderSide(color: AppColors.bgBrand),
                right: BorderSide(color: AppColors.bgBrand),
              )
                  : Border.all(color: AppColors.borderChip, width: 2),

            ),
            child: Row(
              children: [
                SizedBox(
                  width: 16,
                  height: 16,
                  child: isSelected
                      ? const DecoratedBox(
                    decoration:  BoxDecoration(
                      color: AppColors.bgBrandSecondary,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.check,
                      size: 16,
                      color: AppColors.white,
                    ),
                  )
                      : Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.iconsAccentOrange,
                        width: .5,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    '${country.emoji} ${(country.name ?? '').trim()}',
                    style:
                    (isSelected
                        ? AppTypography.titleMedium
                        : AppTypography.bodyMedium)
                        .copyWith(
                      color: isSelected
                          ? AppColors.textPrimary
                          : AppColors.textSecondary,
                      fontWeight: isSelected
                          ? FontWeight.w600
                          : FontWeight.normal,
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
