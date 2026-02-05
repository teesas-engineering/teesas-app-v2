import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/components/page_padding.dart';
import '../../../_shared/enum/input_type.dart';
import '../../../_shared/widgets/app_bar.dart';
import '../../../_shared/widgets/app_button.dart';
import '../../../_shared/widgets/phone_email_input_field.dart';

class ForgotPasswordEmailScreen extends StatelessWidget {
  const ForgotPasswordEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(),
      body: PagePadding(
        child: Column(
          children: [
            Text(
              'Retrieve Password',
              style: AppTypography.titleLarge.copyWith(
                color: AppColors.textSecondary,
                height: 40,
              ),
            ),
            Text(
              'Enter your email address below to retrieve your password. And OTP will be sent to you.',
              style: AppTypography.bodyMedium.copyWith(
                color: AppColors.textPrimary,
              ),
            ),
            40.height,
            PhoneEmailInputField(
              onChange: (type, value) {},
              inputType: InputType.email,
            ),
          ],
        ),
      ),

      bottomNavigationBar: Column(
        children: [
          PagePadding(
            child: AppButton(text: 'Retrieve Password', onPressed: () async {}),
          ),
          24.height,
          Center(
            child: Text.rich(
              TextSpan(
                text: 'Remember Password?\t',
                style: AppTypography.bodyLarge.copyWith(
                  color: AppColors.color171818,
                ),
                children: [
                  TextSpan(
                    text: 'Sign In',
                    style: AppTypography.titleMedium.copyWith(
                      color: AppColors.textBrand,
                    ),
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
