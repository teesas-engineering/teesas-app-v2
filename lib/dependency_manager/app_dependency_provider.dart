import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app/_shared/stores/dashboard_store/dashboard_store.dart';
import '../app/onboarding/presentation/stores/onboarding_store.dart';
import '../dependency_manager/injectable.dart';
import '../router/route_helper.dart';

class AppDependencyProvider extends StatelessWidget {
  const AppDependencyProvider({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<OnboardingStore>(
          create: (_) => OnboardingStore(),
          dispose: (_, store) => store.dispose(),
        ),
        Provider<RouteHelper>(create: (_) => getIt<RouteHelper>()),
        Provider<DashboardStore>(create: (_) => getIt<DashboardStore>()),
      ],
      child: child,
    );
  }
}
