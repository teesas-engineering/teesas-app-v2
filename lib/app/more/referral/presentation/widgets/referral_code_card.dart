import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../common/extensions/num_extension.dart';
import '../../../../../common/style_guide/colors.dart';
import '../../../../../common/style_guide/style_guide.dart';

class ReferralCodeCard extends StatelessWidget {
  const ReferralCodeCard({required this.referralCode, super.key});

  final String referralCode;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: const Color(0xFF333333),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Referral Code',
                    style: AppTypography.bodyMedium.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  16.height,
                  Text(
                    referralCode,
                    style: AppTypography.displaySmall.copyWith(
                      color: AppColors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () async {
                  await Clipboard.setData(ClipboardData(text: referralCode));
                },
                borderRadius: BorderRadius.circular(20.r),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 8.h,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF4F4F4F),
                    borderRadius: BorderRadius.circular(20.r),
                    border: Border.all(color: AppColors.black),
                  ),
                  child: Text(
                    'Copy',
                    style: AppTypography.bodyMedium.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
          24.height,
          Center(
            child: Text(
              'Terms & Conditions Apply',
              style: AppTypography.labelSmall.copyWith(
                color: AppColors.white,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
