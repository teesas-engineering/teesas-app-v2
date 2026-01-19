
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

  OverlayEntry showOverlay(Widget child, BuildContext context) {
    final overlay = OverlayEntry(builder: (context) => child);
    final navigator = Navigator.of(context);
    navigator.overlay?.insert(overlay);
    return overlay;
  }

  void hideOverlay(OverlayEntry overlay) => overlay.remove();
}
