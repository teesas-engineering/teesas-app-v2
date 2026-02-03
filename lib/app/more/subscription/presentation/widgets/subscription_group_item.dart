import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/extensions/num_extension.dart';
import '../../../../../common/style_guide/colors.dart';
import '../../../../../common/style_guide/style_guide.dart';
import '../../../../_shared/widgets/app_card.dart';
import '../../store/add_subscription_store.dart';
import 'subscription_category_tag.dart';
import 'subscription_plan_card.dart';

class SubscriptionGroupItem extends StatelessWidget {
  const SubscriptionGroupItem({
    required this.group,
    required this.store,
    super.key,
  });

  final SubscriptionGroup group;
  final AddSubscriptionStore store;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SubscriptionCategoryTag(group.categoryTag),
        4.height,
        Text(
          group.title,
          style: AppTypography.bodyLarge.copyWith(
            fontWeight: FontWeight.w500,
            color: AppColors.textTertiary,
            fontSize: 20.sp,
          ),
        ),
        8.height,
        AppCard.tertiary(
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: group.options.length,
            separatorBuilder: (_, _) => 16.height,
            itemBuilder: (context, index) {
              final option = group.options[index];
              return SubscriptionPlanCard(
                group: group,
                option: option,
                store: store,
              );
            },
          ),
        ),
      ],
    );
  }
}
