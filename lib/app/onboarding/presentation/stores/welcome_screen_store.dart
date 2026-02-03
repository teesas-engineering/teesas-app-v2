import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/style_guide/style_guide.dart';
import '../../../../dependency_manager/injectable.dart';
import '../../../../router/route_helper.dart';
import '../../domain/model/onboarding_data.dart';

part 'welcome_screen_store.g.dart';

class WelcomeScreenStore = _WelcomeScreenStoreBase with _$WelcomeScreenStore;

abstract class _WelcomeScreenStoreBase with Store {
  _WelcomeScreenStoreBase() {
    _pageController = PageController();
  }

  late final PageController _pageController;

  PageController get pageController => _pageController;

    List<OnboardingData> onboardingPages = const [
    OnboardingData(
      image: AppAssets.onboardingImage1,
      description: 'Fun-filled learning for curious little minds',
    ),
    OnboardingData(
      image: AppAssets.onboardingImage2,
      description:
          'Master Common Entrance with lessons and practice questions.',
    ),
    OnboardingData(
      image: AppAssets.onboardingImage3,
      description:
          'Comprehensive educational content for JSS and SSS students.',
    ),
    OnboardingData(
      image: AppAssets.onboardingImage4,
      description: 'Unlock UTME & SSCE excellence with ease.',
    ),
    OnboardingData(
      image: AppAssets.onboardingImage5,
      description: 'Tailored lessons to secure your admission.',
    ),
    OnboardingData(
      image: AppAssets.onboardingImage6,
      description: 'Discover the habits that lead to lifelong success',
    ),
  ];

  @observable
  int currentPage = 0;

  @computed
  bool get isLastPage => currentPage == onboardingPages.length - 1;

  OnboardingData get currentData => onboardingPages[currentPage];

  @action
  void setCurrentPage(int index) {
    currentPage = index;
  }

  Future<void> nextPage() async {
    if (currentPage < onboardingPages.length - 1) {
      unawaited(
        _pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        ),
      );
    }
  }

  Future<void> skipOnboarding() async {
    if (currentPage < onboardingPages.length - 1) {
      unawaited(
        _pageController.animateToPage(
          onboardingPages.length - 1,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        ),
      );
    }
  }

  void goToOnboardingRoot() {
    getIt<RouteHelper>().showOnboardingRoot();
  }

  void goToLogin() {
    getIt<RouteHelper>().showLoginScreen();
  }

  void dispose() {
    _pageController.dispose();
  }
}
