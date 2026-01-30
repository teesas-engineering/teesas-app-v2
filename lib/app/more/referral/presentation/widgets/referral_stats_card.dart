import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/extensions/num_extension.dart';
import '../../../../../common/style_guide/colors.dart';
import '../../../../../common/style_guide/style_guide.dart';
import '../../../../_shared/widgets/app_button.dart';
import '../../../../_shared/widgets/app_card.dart';

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
              _buildStatItem('Total\nEarnings', totalEarnings),
              _buildDivider(),
              _buildStatItem('Current\nEarnings', currentEarnings),
              _buildDivider(),
              _buildStatItem('Total\nWithdrawal', totalWithdrawal),
            ],
          ),
          24.height,
          AppButton(
            text: 'Withdraw Earnings',
            onPressed: () async => onWithdraw(),
            backgroundColor: AppColors.white,
            borderColor: AppColors.bgBrand,
            textColor: AppColors.textModalSecondary,
            isFullWidth: false,
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(String label, double value) {
    return Expanded(
      child: Column(
        children: [
          Text(
            label,
            textAlign: TextAlign.center,
            style: AppTypography.labelSmall.copyWith(
              color: AppColors.textSecondary,
              height: 1.2,
            ),
          ),
          8.height,
          Text(
            _formatNumber(value),
            textAlign: TextAlign.center,
            style: AppTypography.titleSmall.copyWith(
              color: AppColors.textModalSecondary,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Container(height: 28.h, width: 1, color: AppColors.dividerColor);
  }

  String _formatNumber(double value) {
    return value
        .toStringAsFixed(0)
        .replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (m) => '${m[1]},',
        );
  }
}
