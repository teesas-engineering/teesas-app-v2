import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/extensions/num_extension.dart';
import '../../../../../common/style_guide/colors.dart';
import '../../../../../common/style_guide/style_guide.dart';
import '../../../../_shared/widgets/app_button.dart';

class EmptySubscriptionState extends StatelessWidget {
  const EmptySubscriptionState({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        24.height,
        Image.asset(
          'assets/images/img_no_sub.png',
          width: 120.w,
          height: 120.h,
        ),
        16.height,
        Text(
          'You have not added any subscription',
          style: AppTypography.bodyMedium.copyWith(
            color: AppColors.textSecondary,
            fontSize: 14.sp,
          ),
          textAlign: TextAlign.center,
        ),
        24.height,
        16.height,
        AppButton(
          text: 'Add Subscription',
          onPressed: () async {
            // TODO: Navigate to add subscription flow
          },
          backgroundColor: AppColors.white,
          borderColor: AppColors.bgBrand,
          textColor: AppColors.textPrimary,
        ),
      ],
    );
  }
}
