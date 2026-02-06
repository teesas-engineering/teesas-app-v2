import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app/_shared/stores/account_management_store/account_management_store.dart';
import '../app/_shared/stores/dashboard_store/dashboard_store.dart';
import '../app/_shared/stores/otp_store/otp_store.dart';
import '../app/_shared/stores/util_store/util_store.dart';
import '../app/onboarding/presentation/stores/onboarding_store.dart';
import '../app/onboarding/presentation/stores/signup_store.dart';
import '../app/signin/store/login_store.dart';
import '../dependency_manager/injectable.dart';
import '../router/route_helper.dart';

class AppDependencyProvider extends StatelessWidget {
  const AppDependencyProvider({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<OnboardingStore>(create: (_) => getIt<OnboardingStore>()),
        Provider<SignupStore>(create: (_) => getIt<SignupStore>()),
        Provider<RouteHelper>(create: (_) => getIt<RouteHelper>()),
        Provider<DashboardStore>(create: (_) => getIt<DashboardStore>()),
        Provider<LoginStore>(create: (_) => getIt<LoginStore>()),
        Provider<OtpStore>(create: (_) => getIt<OtpStore>()),
        Provider<AccountManagementStore>(
            create: (_) => getIt<AccountManagementStore>()),
        Provider<UtilStore>(create: (_) => getIt<UtilStore>()),
      ],
      child: child,
    );
  }
}
