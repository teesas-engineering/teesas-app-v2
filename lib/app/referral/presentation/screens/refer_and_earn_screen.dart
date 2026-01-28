import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:go_router/go_router.dart';
import '../../../../common/dimens/app_dimens.dart';
import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../../router/main_router.dart';
import '../../../_shared/enum/button_type.dart';
import '../../../_shared/widgets/app_back_header.dart';
import '../../../_shared/widgets/app_button.dart';
import '../../../_shared/widgets/invite_friends_sheet.dart';
import '../../store/referral_store.dart';
import '../widgets/referral_code_card.dart';
import '../widgets/referral_stats_card.dart';

class ReferAndEarnScreen extends StatefulWidget {
  const ReferAndEarnScreen({super.key});

  @override
  State<ReferAndEarnScreen> createState() => _ReferAndEarnScreenState();
}

class _ReferAndEarnScreenState extends State<ReferAndEarnScreen> {
  final ReferralStore _store = ReferralStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgPrimary,
      appBar: const AppBackHeader(),
      body: SafeArea(
        child: Column(
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
                      'Refer and Earn',
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
                        color: AppColors.textPrimaryDark,
                      ),
                    ),
                    24.height,
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.r),
                      child: Image.asset(
                        AppAssets.imgReferralBanner,
                        height: 152.h,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    16.height,
                    Text(
                      '''Earn ₦50k or more per week, when you refer friends to MATRIC on the Teesas Education App! '''
                      '''Get ₦200 [Basic] - ₦1000 [Premium] - ₦1,800 [Premium +] for each referral who subscribes to any of the MATRIC plans, plus many other incentives and benefits.''',
                      style: AppTypography.bodySmall.copyWith(
                        color: AppColors.textPrimaryDark,
                      ),
                    ),
                    Divider(color: AppColors.dividerColor, height: 32.h),
                    Observer(
                      builder: (_) =>
                          ReferralCodeCard(referralCode: _store.referralCode),
                    ),
                    10.height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppButton(
                          text: 'Invite A Friend',
                          onPressed: () async {
                            await showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              builder: (context) => InviteFriendsSheet(
                                referralCode: _store.referralCode,
                              ),
                            );
                          },
                          isFullWidth: false,
                        ),
                      ],
                    ),
                    8.height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppButton(
                          text: 'View Invite List',
                          onPressed: () async =>
                              context.push(MainRouter.inviteList),
                          buttonType: ButtonType.secondary,
                          backgroundColor: AppColors.white,
                          borderColor: AppColors.bgBrand,
                          textColor: AppColors.textPrimaryDark,
                          isFullWidth: false,
                        ),
                      ],
                    ),
                    Divider(color: AppColors.dividerColor, height: 32.h),
                    32.height,
                    Observer(
                      builder: (_) => ReferralStatsCard(
                        totalEarnings: _store.totalEarnings,
                        currentEarnings: _store.currentEarnings,
                        totalWithdrawal: _store.totalWithdrawal,
                        onWithdraw: () {},
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.viewPaddingOf(context).bottom + 16.h,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
