import 'package:flutter/material.dart';
import '../app/dashboard/presentation/screens/dashboard_screen.dart';
import '../app/onboarding/presentation/screens/welcome_screen.dart';
import '../common/services/secured_storage_service.dart';
import '../dependency_manager/injectable.dart';
import '../splash_screen.dart';

class AppRouterWrapper extends StatelessWidget {
  const AppRouterWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final preference = getIt<SecureStorageService>();
    return FutureBuilder(
      future: preference.isLoggedIn(),
      builder: (_, state) {
        if(state.hasData) {
          final isLoggedIn= state.data??false;
          if (isLoggedIn) {
            return const DashboardScreen();
          } else {
            return const WelcomeScreen();
          }
        }
        return  SplashScreen(

        );
      },
    );
  }
}
