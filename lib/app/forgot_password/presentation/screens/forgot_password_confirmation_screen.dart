import 'package:flutter/material.dart';
import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/components/page_padding.dart';
import '../../../_shared/widgets/app_bar.dart';
import '../../../_shared/widgets/app_button.dart';

class ForgotPasswordConfirmationScreen extends StatelessWidget {
  const ForgotPasswordConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(showLeadingIcon: false),
      body: Column(
        children: [
          16.height,
          Center(
            child: Image.asset(
              AppAssets.emailImage,
              width: 152,
              height: 152,
              fit: BoxFit.contain,
            ),
          ),
          24.height,
          Text(
            'You Got Mail!!!',
            style: AppTypography.titleLarge.copyWith(
              color: AppColors.textPrimary,
            ),
          ),
          16.height,
          Text(
            'Enter the verification code we just sent on your email address.',
            style: AppTypography.bodyMedium.copyWith(
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
      bottomNavigationBar: PagePadding(
        child: AppButton(text: 'Go Back', onPressed: () async {}),
      ),
    );
  }
}
