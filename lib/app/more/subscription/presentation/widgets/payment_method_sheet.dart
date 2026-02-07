import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../common/dimens/app_dimens.dart';
import '../../../../../common/extensions/num_extension.dart';
import '../../../../../common/style_guide/colors.dart';
import '../../../../../common/style_guide/style_guide.dart';
import '../../../../_shared/widgets/app_card.dart';
import '../../../../_shared/widgets/app_divider.dart';

class PaymentMethodSheet extends StatelessWidget {
  const PaymentMethodSheet({
    required this.selectedMethod,
    required this.methods,
    required this.onSelect,
    super.key,
  });

  final String? selectedMethod;
  final List<String> methods;
  final ValueChanged<String> onSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: Dimens.pagePadding,
        right: Dimens.pagePadding,
        top: Dimens.pagePadding,
        bottom: MediaQuery.viewPaddingOf(context).bottom + Dimens.pagePadding,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Choose An Option',
                style: AppTypography.title18.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary,
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: SvgPicture.asset(
                  AppAssets.icCloseBordered,
                  width: 16.w,
                  height: 16.w,
                ),
              ),
            ],
          ),
          8.height,
          Text(
            'Select one of the options below.',
            style: AppTypography.body14.copyWith(color: AppColors.color0A0A0A),
          ),
          const AppDivider(),
          ...methods.map((method) {
            final isSelected = selectedMethod == method;
            return Padding(
              padding: EdgeInsets.only(bottom: 16.w),
              child: GestureDetector(
                onTap: () => onSelect(method),
                child: isSelected
                    ? AppCard.primary(
                        borderColor: AppColors.color93D6AF,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 8.h,
                        ),
                        borderRadius: 12.r,
                        child: _PaymentMethodRow(
                          method: method,
                          isSelected: isSelected,
                        ),
                      )
                    : AppCard.secondary(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 8.h,
                        ),
                        borderRadius: 12.r,
                        child: _PaymentMethodRow(
                          method: method,
                          isSelected: isSelected,
                        ),
                      ),
              ),
            );
          }),
        ],
      ),
    );
  }
}

class _PaymentMethodRow extends StatelessWidget {
  const _PaymentMethodRow({required this.method, required this.isSelected});

  final String method;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          method,
          style: AppTypography.title14.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        if (isSelected)
          Icon(Icons.check_circle, color: AppColors.textBrand, size: 16.w)
        else
          Icon(Icons.circle_outlined, color: AppColors.color94A3B8, size: 16.w),
      ],
    );
  }
}
