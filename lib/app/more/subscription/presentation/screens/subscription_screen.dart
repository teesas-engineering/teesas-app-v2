import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../common/dimens/app_dimens.dart';
import '../../../../../common/extensions/num_extension.dart';
import '../../../../../common/style_guide/colors.dart';
import '../../../../../common/style_guide/style_guide.dart';
import '../../../../../router/main_router.dart';
import '../../../../_shared/widgets/app_back_header.dart';
import '../../../../_shared/widgets/app_button.dart';
import '../../../../_shared/widgets/app_card.dart';
import '../../store/subscription_store.dart';
import '../widgets/active_subscription_card.dart';
import '../widgets/empty_subscription_state.dart';
import '../widgets/history_subscription_card.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  final SubscriptionStore _store = SubscriptionStore();

  @override
  void initState() {
    super.initState();
    unawaited(Future.microtask(_store.loadSubscriptions));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgPrimary,
      appBar: const AppBackHeader(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.pagePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              24.height,
              Text(
                'Subscription',
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
                  color: AppColors.textModalSecondary,
                  fontWeight: FontWeight.w400,
                ),
              ),
              24.height,
              Row(
                children: [
                  Text(
                    'Your Active Subscription',
                    style: AppTypography.bodyMedium.copyWith(
                      color: AppColors.textTertiary,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      // TODO: Navigate to full active subscription list if needed
                    },
                    child: Text(
                      'View All',
                      style: AppTypography.bodyMedium.copyWith(
                        color: AppColors.bgBrand,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              16.height,
              Observer(
                builder: (_) {
                  if (_store.hasActiveSubscription) {
                    return AppCard.secondary(
                      backgroundColor: AppColors.white,
                      borderRadius: 16.r,
                      padding: EdgeInsets.all(20.w),
                      child: Column(
                        children: [
                          ..._store.activeSubscriptions.map(
                            (sub) => ActiveSubscriptionCard(subscription: sub),
                          ),
                          16.height,
                          AppButton(
                            text: 'Add Subscription',
                            onPressed: () async {
                              if (context.mounted) {
                                unawaited(
                                  context.push(MainRouter.addSubscription),
                                );
                              }
                            },
                            backgroundColor: AppColors.white,
                            borderColor: AppColors.bgBrand,
                            textColor: AppColors.textPrimary,
                          ),
                        ],
                      ),
                    );
                  }
                  return AppCard.tertiary(
                    child: const EmptySubscriptionState(),
                  );
                },
              ),
              Divider(color: AppColors.dividerColor, height: 32.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Subscription History',
                    style: AppTypography.bodyMedium.copyWith(
                      color: AppColors.textTertiary,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // TODO: Navigate to full subscription history
                    },
                    child: Text(
                      'View All',
                      style: AppTypography.bodyMedium.copyWith(
                        color: AppColors.bgBrand,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              16.height,
              Observer(
                builder: (_) {
                  if (_store.hasSubscriptionHistory) {
                    return AppCard.secondary(
                      backgroundColor: AppColors.white,
                      borderRadius: 16.r,
                      padding: EdgeInsets.symmetric(
                        vertical: 16.h,
                        horizontal: 16.w,
                      ),
                      child: Column(
                        children: [
                          // Hardcoded date for demo as per design
                          Center(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.w,
                                vertical: 4.h,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF1F5F9), // Slate 100
                                borderRadius: BorderRadius.circular(4.r),
                              ),
                              child: Text(
                                '25th December, 2020',
                                style: AppTypography.bodySmall.copyWith(
                                  color: AppColors.textSecondary,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          12.height,
                          ..._store.subscriptionHistory.map(
                            (sub) => HistorySubscriptionCard(subscription: sub),
                          ),
                        ],
                      ),
                    );
                  }
                  return AppCard.secondary(
                    backgroundColor: AppColors.white,
                    borderRadius: 16.r,
                    padding: EdgeInsets.symmetric(
                      vertical: 16.h,
                      horizontal: 24.w,
                    ),
                    child: const EmptySubscriptionState(),
                  );
                },
              ),
              SizedBox(height: MediaQuery.viewPaddingOf(context).bottom + 16.h),
            ],
          ),
        ),
      ),
    );
  }
}
