import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/components/page_padding.dart';
import '../../../_shared/widgets/app_button.dart';
import '../stores/welcome_screen_store.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<WelcomeScreenStore>(
      create: (_) => WelcomeScreenStore(),
      dispose: (_, store) => store.dispose(),
      child: const _WelcomeScreenContent(),
    );
  }
}

class _WelcomeScreenContent extends StatelessWidget {
  const _WelcomeScreenContent();

  @override
  Widget build(BuildContext context) {
    final store = context.read<WelcomeScreenStore>();

    return Scaffold(
      backgroundColor: AppColors.bgBrandSecondaryLight,
      body: SafeArea(
        child: Column(
          children: [
            28.height,
            PagePadding(
              child: Observer(
                builder: (_) {
                  return Row(
                    children: List.generate(
                      store.onboardingPages.length,
                      (index) => Expanded(
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          height: 5,
                          margin: EdgeInsets.zero,
                          decoration: BoxDecoration(
                            color: index == store.currentPage
                                ? AppColors.bgAccent
                                : AppColors.onboardingIndicatorInActive,
                            borderRadius: BorderRadius.circular(
                              index == store.currentPage ? 8 : 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            16.height,
            PagePadding(
              child: Text(
                'Welcome',
                style: AppTypography.headlineMedium.copyWith(
                  color: AppColors.textBrandDark,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0,
                ),
              ),
            ),
            12.height,
            Expanded(
              child: PageView.builder(
                controller: store.pageController,
                onPageChanged: store.setCurrentPage,
                itemCount: store.onboardingPages.length,
                itemBuilder: (context, index) {
                  final data = store.onboardingPages[index];
                  return PagePadding(
                    child: Column(
                      children: [
                        Image.asset(
                          data.image,
                          height: 357,
                          fit: BoxFit.contain,
                        ),
                        38.height,
                        Text(
                          data.description,
                          style: AppTypography.titleLarge.copyWith(
                            color: AppColors.textBrandDark,
                            fontSize: 28,
                            letterSpacing: 0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Observer(
              builder: (_) {
                final isLastPage = store.isLastPage;
                final currentPage = store.currentPage;

                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  decoration: const BoxDecoration(color: AppColors.bgPrimary),
                  child: isLastPage
                      ? Column(
                          children: [
                            AppButton(
                              text: 'Get Started',
                              onPressed: () async => store.goToOnboardingRoot(),
                            ),
                            16.height,
                            AppButton.secondary(
                              text: 'I already have an account',
                              onPressed: () async => store.goToLogin(),
                            ),
                          ],
                        )
                      : Row(
                          children: [
                            Expanded(
                              child: AppButton.secondary(
                                text: 'Skip',
                                isDisabled: currentPage == 0,
                                onPressed: store.skipOnboarding,
                              ),
                            ),
                            const SizedBox(width: 24),
                            Expanded(
                              child: AppButton(
                                text: 'Next',
                                onPressed: store.nextPage,
                              ),
                            ),
                          ],
                        ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
