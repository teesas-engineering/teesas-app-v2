import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:go_router/go_router.dart'; // Will use when wiring up

import '../../../../../common/dimens/app_dimens.dart';
import '../../../../../common/extensions/num_extension.dart';
import '../../../../../common/style_guide/colors.dart';
import '../../../../../common/style_guide/style_guide.dart';
import '../../../../_shared/widgets/app_button.dart';
import '../../../../_shared/widgets/app_card.dart';
import '../../../../_shared/widgets/app_input_field.dart';
import '../../../../_shared/widgets/app_progress_header.dart';
import '../../../../_shared/widgets/app_vertical_divider.dart';
import '../../data/model/subscription.dart';
import '../../data/model/subscription_checkout_item.dart';
import '../widgets/history_subscription_card.dart';

class SubscriptionSummaryScreen extends StatelessWidget {
  const SubscriptionSummaryScreen({required this.checkoutItems, super.key});

  final List<SubscriptionCheckoutItem> checkoutItems;

  static const String route = '/subscription-summary';

  @override
  Widget build(BuildContext context) {
    final double totalAmount = checkoutItems.fold(
      0,
      (sum, item) => sum + item.amount,
    );

    return Scaffold(
      backgroundColor: AppColors.bgPrimary,
      appBar: AppProgressHeader(
        progress: 0.75,
        onBackPressed: () => Navigator.of(context).pop(),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimens.pagePadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  24.height,
                  Text(
                    'Summary',
                    style: AppTypography.displaySmall.copyWith(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  8.height,
                  Text(
                    'View the following details below.',
                    style: AppTypography.bodyMedium.copyWith(
                      color: AppColors.color0A0A0A,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  32.height,
                  Text(
                    'Cart',
                    style: AppTypography.bodyLarge.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.textTertiary,
                      fontSize: 16.sp,
                    ),
                  ),
                  16.height,
                  AppCard.tertiary(
                    child: ListView.separated(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: checkoutItems.length,
                      separatorBuilder: (_, _) => 16.height,
                      itemBuilder: (context, index) {
                        final item = checkoutItems[index];
                        final subscription = Subscription(
                          id: item.id,
                          planName: item.planDuration,
                          startDate: '', // Not needed for display
                          endDate: '', // Not needed for display
                          amount: item.amount,
                          status: SubscriptionStatus.active, // Mock
                          category: item.categoryTag,
                          subCategory: item.title,
                        );

                        return HistorySubscriptionCard(
                          subscription: subscription,
                          backgroundColor: AppColors.bgPrimary,
                          hasBorder: false,
                          margin: EdgeInsets.zero,
                        );
                      },
                    ),
                  ),
                  const AppVerticalDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: AppTypography.bodyLarge.copyWith(
                          color: AppColors.textTertiary,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),
                      ),
                      Text(
                        '#${totalAmount.formatCurrency()}',
                        style: AppTypography.displaySmall.copyWith(
                          fontSize: 20.sp,
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const AppVerticalDivider(),
                  const AppInputField(
                    labelText: "Apply Promocode/Referral/Reseller's Code",
                  ),
                  32.height,
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 14.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: AppColors.colorE2E8F0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Choose Payment Method',
                          style: AppTypography.bodyMedium.copyWith(
                            color: AppColors.textSecondary,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: AppColors.textSecondary,
                          size: 24.sp,
                        ),
                      ],
                    ),
                  ),
                  32.height,
                  AppButton(text: 'Finish', onPressed: () async {}),
                  SizedBox(
                    height: MediaQuery.viewPaddingOf(context).bottom + 16.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
