import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'onboarding_store.g.dart';

@lazySingleton
class OnboardingStore = _OnboardingStore with _$OnboardingStore;

abstract class _OnboardingStore with Store {
  _OnboardingStore() {
    _pageController = PageController();
  }

  late final PageController _pageController;

  PageController get pageController => _pageController;

  static const int totalPages = 5;

  @observable
  int currentPage = 0;

  @computed
  bool get isLastPage => currentPage == totalPages - 1;

  @computed
  double get progress {
    if (totalPages == 0) {
      return 0;
    }
    return (currentPage + 1) / totalPages;
  }

  @action
  void setCurrentPage(int page) {
    currentPage = page;
  }

  Future<void> goToPreviousPage() async {
    if (currentPage > 0) {
      await _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  Future<void> onNext() async {
    await _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  Future<bool> handleBackPress() async {
    if (currentPage == 0) {
      return true; // Allow back navigation on first page
    } else if (isLastPage) {
      return true; // Allow back navigation on last page
    } else {
      await goToPreviousPage();
      return false; // Prevent default back navigation, go to previous page
    }
  }

  void dispose() {
    _pageController.dispose();
  }
}
