import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../../router/route_helper.dart';
import '../../../_shared/components/page_padding.dart';
import '../../../_shared/widgets/app_bar.dart';
import '../../../_shared/widgets/app_button.dart';
import '../../../_shared/widgets/password_input_field.dart';
import '../../../_shared/widgets/phone_email_input_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(),
      body: Column(
        children: [
          Expanded(
            child: PagePadding(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    24.height,
                    Text(
                      'Sign In',
                      style: AppTypography.titleLarge.copyWith(
                        fontSize: 20,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    84.height,
                    PhoneEmailInputField(onChange: (value, type) {}),
                    24.height,
                    PasswordInputField(onChanged: (value) {}),
                    4.height,
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        splashColor: AppColors.borderBrandLargeLight.withValues(
                          alpha: .5,
                        ),
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Forgot Password?',
                            style: AppTypography.bodyMedium.copyWith(
                              color: AppColors.textPrimary,
                            ),
                          ),
                        ),
                      ),
                    ),
                    48.height,
                    AppButton(text: 'Login', onPressed: () async {}),
                    16.height,
                    Center(
                      child: Text.rich(
                        TextSpan(
                          text: "I don't have an account? ",
                          style: AppTypography.bodyLarge.copyWith(
                            color: AppColors.textButtonSecondary,
                          ),
                          children: [
                            TextSpan(
                              text: 'Sign up',
                              style: AppTypography.titleMedium.copyWith(
                                color: AppColors.textBrand,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  context
                                      .read<RouteHelper>()
                                      .showOnboardingRoot(replace: true);
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
