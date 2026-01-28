import 'dart:async';
import 'package:flutter/material.dart';

import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../../dependency_manager/injectable.dart';
import '../../../_shared/components/page_padding.dart';
import '../../../_shared/widgets/app_button.dart';
import '../../../../router/route_helper.dart';

class _OnboardingData {
  final String image;
  final String description;

  const _OnboardingData({required this.image, required this.description});
}

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  bool isLastPage = false;

  final List<_OnboardingData> _onboardingPages = const [
    _OnboardingData(
      image: AppAssets.onboardingImage1,
      description: 'Fun-filled learning for curious little minds',
    ),
    _OnboardingData(
      image: AppAssets.onboardingImage2,
      description:
          'Master Common Entrance with lessons and practice questions.',
    ),
    _OnboardingData(
      image: AppAssets.onboardingImage3,
      description:
          'Comprehensive educational content for JSS and SSS students.',
    ),
    _OnboardingData(
      image: AppAssets.onboardingImage4,
      description: 'Unlock UTME & SSCE excellence with ease.',
    ),
    _OnboardingData(
      image: AppAssets.onboardingImage5,
      description: 'Tailored lessons to secure your admission.',
    ),
    _OnboardingData(
      image: AppAssets.onboardingImage6,
      description: 'Discover the habits that lead to lifelong success',
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _nextPage() async {
    if (_currentPage < _onboardingPages.length - 1) {
      unawaited(
        _pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        ),
      );
    } else {}
  }

  Future<void> _skipOnboarding() async {
    // Scroll to the end of the welcome pageview
    if (_currentPage < _onboardingPages.length - 1) {
      unawaited(
        _pageController.animateToPage(
          _onboardingPages.length - 1,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentData = _onboardingPages[_currentPage];
    final isLastPage = _currentPage == _onboardingPages.length - 1;

    return Scaffold(
      backgroundColor: AppColors.bgBrandSecondaryLight,
      body: SafeArea(
        child: Column(
          children: [
            28.height,
            PagePadding(
              child: Row(
                children: List.generate(
                  _onboardingPages.length,
                  (index) => Expanded(
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      height: 5,
                      margin: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        color: index == _currentPage
                            ? AppColors.bgAccent
                            : AppColors.onboardingIndicatorInActive,
                        borderRadius: BorderRadius.circular(
                          index == _currentPage ? 8 : 0,
                        ),
                      ),
                    ),
                  ),
                ),
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
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemCount: _onboardingPages.length,
                itemBuilder: (context, index) {
                  final data = _onboardingPages[index];
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
                          currentData.description,
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

            // Navigation buttons
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
              decoration: const BoxDecoration(color: AppColors.bgPrimary),

              child: isLastPage
                  ? Column(
                      children: [
                        AppButton(
                          text: 'Get Started',
                          onPressed: () async {
                            getIt<RouteHelper>().showOnboardingRoot();
                          },
                        ),
                        16.height,
                        AppButton.secondary(
                          text: 'I already have an account',
                          onPressed: () async {
                            getIt<RouteHelper>().showLoginScreen();
                          },
                        ),
                      ],
                    )
                  : Row(
                      children: [
                        Expanded(
                          child: AppButton.secondary(
                            text: 'Skip',
                            isDisabled: _currentPage == 0,
                            onPressed: _skipOnboarding,
                          ),
                        ),
                        const SizedBox(width: 24),
                        Expanded(
                          child: AppButton(text: 'Next', onPressed: _nextPage),
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
