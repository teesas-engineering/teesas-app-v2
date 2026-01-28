import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/dimens/app_dimens.dart';
import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../../router/main_router.dart';
import '../../../_shared/widgets/app_button.dart';

class WithdrawSuccessScreen extends StatelessWidget {
  const WithdrawSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgPrimary,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.pagePadding),
          child: Column(
            children: [
              16.height,
              Image.asset(AppAssets.successImage, height: 180.h, width: 180.h),
              32.height,
              Text(
                'Request Successful',
                textAlign: TextAlign.center,
                style: AppTypography.displaySmall.copyWith(
                  fontSize: 24.sp,
                  color: AppColors.textInfoDark,
                  fontWeight: FontWeight.w700,
                ),
              ),
              16.height,
              Text(
                'Processing Request! You should receive your earnings in the next 24 hours.',
                textAlign: TextAlign.center,
                style: AppTypography.bodyLarge.copyWith(
                  color: AppColors.textPrimaryDark,
                  height: 1.5,
                ),
              ),
              const Spacer(),
              AppButton(
                text: 'Back To Home',
                textColor: AppColors.textPrimaryDark,
                onPressed: () async {
                  context.go(
                    MainRouter.homeShell,
                  ); // Reset stack or navigate home
                },
              ),
              32.height,
            ],
          ),
        ),
      ),
    );
  }
}
