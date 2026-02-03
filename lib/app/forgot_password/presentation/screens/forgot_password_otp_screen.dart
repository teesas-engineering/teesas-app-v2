import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../router/route_helper.dart';
import '../../../_shared/components/page_padding.dart';
import '../../../_shared/widgets/app_bar.dart';
import '../../../_shared/widgets/app_button.dart';

class ForgotPasswordOtpScreen extends StatelessWidget {
  const ForgotPasswordOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(),
      body: const PagePadding(
        child: Center(
          child: Text('Enter the OTP sent to your phone.'),
        ),
      ),
      bottomNavigationBar: PagePadding(
        child: AppButton(
          text: 'Back to Login',
          onPressed: () async {
            context.read<RouteHelper>().showLoginScreen(replace: true);
          },
        ),
      ),
    );
  }
}
