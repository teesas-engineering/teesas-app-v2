import 'dart:async';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../dependency_manager/injectable.dart';
import 'main_router.dart';

@lazySingleton
class RouteHelper {
  RouteHelper() : mainRouter = getIt<MainRouter>();

  final MainRouter mainRouter;

  void pop<T>([T? result]) {
    mainRouter.router.pop(result);
  }

  void showSplashScreen() {
    mainRouter.router.go(MainRouter.splashScreen);
  }

  void showOnboardingRoot({bool replace = false}) {
    if (replace) {
      mainRouter.router.replaceNamed(MainRouter.onboardingRoot);
    } else {
      mainRouter.router.pushNamed(MainRouter.onboardingRoot);
    }
  }

  void showWelcomeScreen() {
    mainRouter.router.goNamed(MainRouter.welcomeScreen);
  }

  void showLoginScreen({bool replace = false}) {
    if (replace) {
      mainRouter.router.replaceNamed(MainRouter.loginScreen);
    } else {
      mainRouter.router.pushNamed(MainRouter.loginScreen);
    }
  }

  void showForgotPasswordEmailScreen({bool replace = false}) {
    if (replace) {
      mainRouter.router.replaceNamed(MainRouter.forgotPasswordEmail);
    } else {
      mainRouter.router.pushNamed(MainRouter.forgotPasswordEmail);
    }
  }

  void showForgotPasswordOtpScreen({bool replace = false}) {
    if (replace) {
      mainRouter.router.replaceNamed(MainRouter.forgotPasswordOtp);
    } else {
      mainRouter.router.pushNamed(MainRouter.forgotPasswordOtp);
    }
  }

  void showForgotPasswordConfirmationScreen({bool replace = false}) {
    if (replace) {
      mainRouter.router.replaceNamed(MainRouter.forgotPasswordConfirmation);
    } else {
      mainRouter.router.pushNamed(MainRouter.forgotPasswordConfirmation);
    }
  }

  void showHomeShell({bool replace = false}) {
    if (replace) {
      unawaited(mainRouter.router.replaceNamed(MainRouter.homeShell));
    } else {
      unawaited(mainRouter.router.pushNamed(MainRouter.homeShell));
    }
  }

  void showManageAccounts() {
    unawaited(mainRouter.router.pushNamed(MainRouter.manageAccounts));
  }

  OverlayEntry showOverlay(Widget child, BuildContext context) {
    final overlay = OverlayEntry(builder: (context) => child);
    final navigator = Navigator.of(context);
    navigator.overlay?.insert(overlay);
    return overlay;
  }

  void hideOverlay(OverlayEntry overlay) => overlay.remove();
}
