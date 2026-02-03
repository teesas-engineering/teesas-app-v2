import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/extensions/num_extension.dart';
import '../../../../../common/style_guide/colors.dart';
import '../../../../../common/style_guide/style_guide.dart';
import '../../../../_shared/widgets/app_card.dart';
import '../../store/add_subscription_store.dart';

class SubscriptionPlanCard extends StatelessWidget {
  const SubscriptionPlanCard({
    required this.group,
    required this.option,
    required this.store,
    super.key,
  });

  final SubscriptionGroup group;
  final SubscriptionOption option;
  final AddSubscriptionStore store;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        final isSelected = store.isSelected(group.id, option.id);

        return GestureDetector(
          onTap: () => store.selectPlan(group.id, option.id),
          child: AppCard.primary(
            borderColor: isSelected
                ? AppColors.bgBrandSecondary
                : AppColors.colorEFF1F5,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        option.duration,
                        style: AppTypography.bodyMedium.copyWith(
                          fontWeight: isSelected
                              ? FontWeight.w700
                              : FontWeight.w500,
                          color: AppColors.textPrimary,
                          fontSize: 15.sp,
                        ),
                      ),
                      8.height,
                      Text(
                        option.amount.money(),
                        style: AppTypography.bodyMedium.copyWith(
                          fontWeight: isSelected
                              ? FontWeight.w700
                              : FontWeight.w500,
                          color: isSelected
                              ? AppColors.textBrand
                              : AppColors.textTertiary,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 16.w,
                  height: 16.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isSelected
                        ? AppColors.bgBrandSecondary
                        : Colors.transparent,
                    border: Border.all(color: AppColors.bgBrandSecondary),
                  ),
                  child: isSelected
                      ? Icon(Icons.check, size: 10.sp, color: AppColors.white)
                      : null,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
