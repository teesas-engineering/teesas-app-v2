import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/extensions/num_extension.dart';
import '../../../../../common/style_guide/colors.dart';
import '../../../../_shared/widgets/app_button.dart';
import '../../../../_shared/widgets/app_card.dart';
import '../../../../_shared/widgets/app_divider.dart';
import 'referral_stat_item.dart';

class ReferralStatsCard extends StatelessWidget {
  const ReferralStatsCard({
    required this.totalEarnings,
    required this.currentEarnings,
    required this.totalWithdrawal,
    required this.onWithdraw,
    super.key,
  });

  final double totalEarnings;
  final double currentEarnings;
  final double totalWithdrawal;
  final VoidCallback onWithdraw;

  @override
  Widget build(BuildContext context) {
    return AppCard.secondary(
      borderRadius: 16.r,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReferralStatItem(label: 'Total\nEarnings', value: totalEarnings),
              const AppDivider(direction: Axis.vertical),
              ReferralStatItem(
                label: 'Current\nEarnings',
                value: currentEarnings,
              ),
              const AppDivider(direction: Axis.vertical),
              ReferralStatItem(
                label: 'Total\nWithdrawal',
                value: totalWithdrawal,
              ),
            ],
          ),
          24.height,
          AppButton(
            text: 'Withdraw Earnings',
            onPressed: () async => onWithdraw(),
            backgroundColor: AppColors.white,
            borderColor: AppColors.bgBrand,
            textColor: AppColors.color0A0A0A,
            isFullWidth: false,
          ),
        ],
      ),
    );
  }
}
