import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../../common/utils/reaction_listener.dart';
import '../../../../dependency_manager/injectable.dart';
import '../../../../router/route_helper.dart';
import '../../../_shared/components/page_padding.dart';
import '../../../_shared/enum/input_type.dart';
import '../../../_shared/widgets/app_bar.dart';
import '../../../_shared/widgets/app_button.dart';
import '../../../_shared/widgets/phone_email_input_field.dart';
import '../../store/forgot_password_store.dart';

class ForgotPasswordEmailScreen extends StatelessWidget {
  const ForgotPasswordEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<ForgotPasswordStore>(
      create: (_) => ForgotPasswordStore(),
      dispose: (_, store) => store.dispose(),
      child: const _ForgotPasswordEmailContent(),
    );
  }
}

class _ForgotPasswordEmailContent extends StatelessWidget {
  const _ForgotPasswordEmailContent();

  @override
  Widget build(BuildContext context) {
    final store = context.read<ForgotPasswordStore>();

    return Scaffold(
      appBar: const AppAppBar(),
      body: PagePadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Retrieve Password',
              style: AppTypography.titleLarge.copyWith(
                color: AppColors.textSecondary,
                height: 40,
              ),
            ),
            Text(
              'Enter your phone number below to retrieve your password. An OTP will be sent to you.',
              style: AppTypography.bodyMedium.copyWith(
                color: AppColors.textPrimary,
              ),
            ),
            40.height,
            PhoneEmailInputField(
              controller: store.phoneController,
              inputType: InputType.phone,
              onChange: (value, type) {},
            ),
            Observer(
              builder: (_) {
                final error = store.errorMessage;
                if (error == null || error.isEmpty) {
                  return 24.height;
                }
                return Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    error,
                    style: AppTypography.bodySmall.copyWith(
                      color: AppColors.textNegative,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PagePadding(
            child: ReactionListener<ForgotPasswordStatus>(
              observe: () => store.status,
              listenWhen: (previous, next) =>
                  next == ForgotPasswordStatus.success,
              listener: (context, _) {
                getIt<RouteHelper>().showForgotPasswordOtpScreen();
              },
              child: Observer(
                builder: (_) => AppButton(
                  text: 'Retrieve Password',
                  onPressed: store.submitForgotPassword,
                  isLoading: store.isLoading,
                ),
              ),
            ),
          ),
          24.height,
          Center(
            child: Text.rich(
              TextSpan(
                text: 'Remember Password?\t',
                style: AppTypography.bodyLarge.copyWith(
                  color: AppColors.textButtonSecondary,
                ),
                children: [
                  TextSpan(
                    text: 'Sign In',
                    style: AppTypography.titleMedium.copyWith(
                      color: AppColors.textBrand,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        context
                            .read<RouteHelper>()
                            .showLoginScreen(replace: true);
                      },
                ),
              ],
            ),
          ),),
          24.height,
        ],
      ),
    );
  }
}
