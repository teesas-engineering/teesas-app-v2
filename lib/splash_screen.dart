import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'app/_shared/enum/button_type.dart';
import 'app/_shared/widgets/app_button.dart';
import 'app/_shared/widgets/app_card.dart';
import 'app/_shared/widgets/app_chip.dart';
import 'app/_shared/widgets/app_input_field.dart';
import 'app/_shared/widgets/app_progress_bar.dart';
import 'app/_shared/widgets/password_input_field.dart';
import 'app/_shared/widgets/secondary_chip.dart';
import 'common/extensions/num_extension.dart';
import 'common/style_guide/colors.dart';
import 'common/style_guide/style_guide.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColors.bgPrimary,
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
              AppInputField(controller: TextEditingController(),hintText: 'Name',),
              20.height,
              PasswordInputField(controller: TextEditingController()),
              20.height,

              AppInputField(
                controller: TextEditingController(),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    AppAssets.email,
                    width: 16,
                    height: 16,
                  ),
                ),
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
