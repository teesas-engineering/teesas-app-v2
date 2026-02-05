import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/components/page_padding.dart';
import '../../../_shared/widgets/app_button.dart';
import '../../../_shared/widgets/app_card.dart';
import '../stores/onboarding_store.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgPrimary,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: PagePadding(
                  child: Column(
                    children: [
                      40.height,
                      // Central white card with welcome image
                      AppCard.secondary(
                        backgroundColor: AppColors.white,
                        child: Column(
                          children: [
                            Image.asset(
                              AppAssets.welcomeImage,
                              fit: BoxFit.contain,
                              width: double.infinity,
                            ),
                          ],
                        ),
                      ),
                      32.height,
                      // Welcome title
                      Text(
                        'Welcome',
                        style: AppTypography.headlineMedium.copyWith(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      16.height,
                      // Description text
                      Text(
                        'You now have access to 100k+ lessons. Kindly go through the onboarding process',
                        style: AppTypography.bodyLarge.copyWith(
                          color: AppColors.textSecondary,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Proceed button at the bottom
            PagePadding(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: AppButton.secondary(
                  text: 'Proceed',
                  onPressed: () async {
                    unawaited(
                        context.read<OnboardingStore>().onNext());
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
