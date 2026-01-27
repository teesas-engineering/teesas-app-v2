import 'package:flutter/material.dart';
import 'app/_shared/screen/otp_screen.dart';
import 'app/_shared/widgets/app_button.dart';
import 'app/_shared/widgets/app_card.dart';
import 'app/_shared/widgets/app_chip.dart';
import 'app/_shared/widgets/app_input_field.dart';
import 'app/_shared/widgets/app_progress_bar.dart';
import 'app/_shared/widgets/password_input_field.dart';
import 'app/_shared/widgets/phone_email_input_field.dart';
import 'app/_shared/widgets/secondary_chip.dart';
import 'app/dashboard/presentation/screens/dashboard_screen.dart';
import 'common/extensions/num_extension.dart';
import 'common/style_guide/colors.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DashboardScreen();
    return OtpScreen(
      controller: controller,
      onResend: () {},
      onComplete: (value) {},
    );
    return Scaffold(
      backgroundColor: AppColors.bgPrimary,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              100.height,
              AppCard.primary(
                backgroundColor: const Color(0xffFFFCF5),
                borderColor: Color(0xffE4DCD2),
                child: Column(
                  children: [Row(), Text("hasdfas"), 20.height, 30.height],
                ),
              ),
              20.height,
              AppButton(text: 'Ready', onPressed: () async {}),
              20.height,
              Row(
                children: [
                  Expanded(
                    child: AppButton.secondary(
                      text: 'Ready',
                      onPressed: () async {},
                      negativeBorder: true,
                    ),
                  ),
                  20.width,
                  Expanded(
                    child: AppButton.secondary(
                      text: 'Ready',
                      onPressed: () async {},
                      negativeBorder: false,
                    ),
                  ),
                ],
              ),
              20.height,
              AppInputField(
                controller: TextEditingController(),
                labelText: 'Name',
              ),
              20.height,
              PasswordInputField(controller: TextEditingController()),

              20.height,
              const AppProgressBar(value: .7, height: 8),
              20.height,
              AppChip(
                text: '7 habits of Parents',
                isActive: true,
                onTap: () {},
              ),
              20.height,
              AppChip(text: 'Ready', isActive: false, onTap: () {}),
              20.height,
              AppSecondaryChip(text: 'Male', isActive: true, onTap: () {}),
              20.height,
              PhoneEmailInputField(onChange: (value, type) {}),
            ],
          ),
        ),
      ),
    );
  }
}
