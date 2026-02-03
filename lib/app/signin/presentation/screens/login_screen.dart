import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../../../common/enum/state_type.dart';
import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../../common/utils/reaction_listener.dart';
import '../../../../dependency_manager/injectable.dart';
import '../../../../router/route_helper.dart';
import '../../../_shared/components/page_padding.dart';
import '../../../_shared/widgets/app_bar.dart';
import '../../../_shared/widgets/app_button.dart';
import '../../../_shared/widgets/password_input_field.dart';
import '../../../_shared/widgets/phone_email_input_field.dart';
import '../../store/login_store.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<LoginStore>(
      create: (_) => LoginStore(),
      dispose: (_, store) => store.dispose(),
      child: const _LoginContent(),
    );
  }
}

class _LoginContent extends StatelessWidget {
  const _LoginContent();

  @override
  Widget build(BuildContext context) {
    final store = context.read<LoginStore>();

    return Scaffold(
      appBar: const AppAppBar(),
      body: Column(
        children: [
          Expanded(
            child: PagePadding(
              child: SingleChildScrollView(
                child: Form(
                  key: store.key,
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
                      PhoneEmailInputField(
                        controller: store.emailOrPhoneController,
                        onChange: (value, type) {},
                      ),
                      24.height,
                      PasswordInputField(
                        controller: store.passwordController,
                        onChanged: (value) {},
                      ),
                      4.height,
                      Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          splashColor: AppColors.borderBrandLargeLight
                              .withValues(alpha: .5),
                          onTap: () {
                            context
                                .read<RouteHelper>()
                                .showForgotPasswordEmailScreen();
                          },
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
                      48.height,
                      ReactionListener<Status>(
                        observe: () => store.loginStatus,
                        listenWhen: (previous, next) => next == Status.success,
                        listener: (context, state) {
                          if (state.isSuccess) {
                            getIt<RouteHelper>().showHomeShell(replace: true);
                          }
                        },
                        child: Observer(
                          builder: (_) => AppButton(
                            text: 'Login',
                            onPressed: store.login,
                            isLoading: store.isLoading,
                          ),
                        ),
                      ),
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
          ),
        ],
      ),
    );
  }
}
