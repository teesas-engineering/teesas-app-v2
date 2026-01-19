import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../common/services/secured_storage_service.dart';
import '../dependency_manager/injectable.dart';
import '../splash_screen.dart';

class AppRouterWrapper extends StatelessWidget {
  const AppRouterWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final preference = getIt<SecureStorageService>();
    return Observer(
      builder: (ctx) {
        return FutureBuilder(
          future: preference.isLoggedIn(),
          builder: (_, state) {
            return const SplashScreen();
          },
        );
      },
    );
  }
}
