import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'app_router_wrapper.dart';

@singleton
class MainRouter {
  String get name => 'main';

  static const String splashScreen = '/';
  static const String homeScreen = '/home';
  static const String dashboardScreen = '/dashboard';
  static const String authScreen = '/auth';
  static const String loginScreen = '/login';
  static const String moduleGenerationScreen = '/module-generation';
  static const String onboardingScreen = '/onboarding';
  static const String learning = '/learning';

  GoRouter get router => _router;

  late final GoRouter _router = GoRouter(
    initialLocation: splashScreen,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: splashScreen,
        name: splashScreen,
        builder: (context, state) => const AppRouterWrapper(),
      ),
    ],
  );
}

class RouteException implements Exception {
  const RouteException(this.message);

  final String message;
}
