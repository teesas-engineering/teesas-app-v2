import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import '../app/assessment/presentation/screens/assessment_question_screen.dart';
import '../app/assessment/presentation/screens/assessment_rules_screen.dart';
import '../app/home/presentation/screens/home_shell_screen.dart';
import '../app/home/presentation/screens/manage_accounts_screen.dart';
import '../app/more/downloads/presentation/screens/downloaded_videos_screen.dart';
import '../app/more/referral/presentation/screens/invite_list_screen.dart';
import '../app/more/referral/presentation/screens/refer_and_earn_screen.dart';
import '../app/more/referral/presentation/screens/withdraw_earnings_screen.dart';
import '../app/more/referral/presentation/screens/withdraw_success_screen.dart';
import '../app/more/settings/presentation/screens/change_password_screen.dart';
import '../app/more/settings/presentation/screens/settings_screen.dart';
import '../app/more/settings/presentation/screens/terms_and_conditions_screen.dart';
import '../app/more/subscription/data/model/subscription_checkout_item.dart';
import '../app/more/subscription/presentation/screens/add_subscription_screen.dart';
import '../app/more/subscription/presentation/screens/subscription_screen.dart';
import '../app/more/subscription/presentation/screens/subscription_summary_screen.dart';
import '../app/onboarding/presentation/screens/onboarding_root.dart';
import '../app/signin/presentation/screens/login_screen.dart';
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
  static const String onboardingRoot = '/onboarding-root';
  static const String learning = '/learning';
  static const String homeShell = '/home-shell';
  static const String manageAccounts = '/manage-accounts';
  static const String referAndEarn = '/refer-and-earn';
  static const String inviteList = '/refer-and-earn/invite-list';
  static const String withdrawEarnings = '/refer-and-earn/withdraw';
  static const String withdrawSuccess = '/refer-and-earn/withdraw/success';
  static const String downloadedVideos = '/downloaded-videos';
  static const String settings = '/settings';
  static const String changePassword = '/settings/change-password';
  static const String termsAndConditions = '/settings/terms-and-conditions';
  static const String subscription = '/subscription';
  static const String addSubscription = '/subscription/add';
  static const String subscriptionSummary = '/subscription/summary';
  static const String assessmentRules = '/assessment-rules';
  static const String assessmentQuestion = '/assessment-question';

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
      GoRoute(
        path: onboardingRoot,
        name: onboardingRoot,
        builder: (context, state) => const OnboardingRoot(),
      ),
      GoRoute(
        path: loginScreen,
        name: loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: homeShell,
        name: homeShell,
        builder: (context, state) => const HomeShellScreen(),
      ),
      GoRoute(
        path: manageAccounts,
        name: manageAccounts,
        builder: (context, state) => const ManageAccountsScreen(),
      ),
      GoRoute(
        path: referAndEarn,
        name: referAndEarn,
        builder: (context, state) => const ReferAndEarnScreen(),
      ),
      GoRoute(
        path: inviteList,
        name: inviteList,
        builder: (context, state) => const InviteListScreen(),
      ),
      GoRoute(
        path: withdrawEarnings,
        name: withdrawEarnings,
        builder: (context, state) => const WithdrawEarningsScreen(),
      ),
      GoRoute(
        path: withdrawSuccess,
        name: withdrawSuccess,
        builder: (context, state) => const WithdrawSuccessScreen(),
      ),
      GoRoute(
        path: downloadedVideos,
        name: downloadedVideos,
        builder: (context, state) => const DownloadedVideosScreen(),
      ),
      GoRoute(
        path: settings,
        name: settings,
        builder: (context, state) => const SettingsScreen(),
      ),
      GoRoute(
        path: changePassword,
        name: changePassword,
        builder: (context, state) => const ChangePasswordScreen(),
      ),
      GoRoute(
        path: termsAndConditions,
        name: termsAndConditions,
        builder: (context, state) => const TermsAndConditionsScreen(),
      ),
      GoRoute(
        path: subscription,
        name: subscription,
        builder: (context, state) => const SubscriptionScreen(),
      ),
      GoRoute(
        path: addSubscription,
        name: addSubscription,
        builder: (context, state) => const AddSubscriptionScreen(),
      ),
      GoRoute(
        path: subscriptionSummary,
        name: subscriptionSummary,
        builder: (context, state) {
          final items = state.extra as List<SubscriptionCheckoutItem>;
          return SubscriptionSummaryScreen(checkoutItems: items);
        },
      ),
      GoRoute(
        path: assessmentRules,
        name: assessmentRules,
        builder: (context, state) => const AssessmentRulesScreen(),
      ),
      GoRoute(
        path: assessmentQuestion,
        name: assessmentQuestion,
        builder: (context, state) => const AssessmentQuestionScreen(),
import '../app/dashboard/presentation/screens/dashboard_screen.dart';
import '../app/forgot_password/presentation/screens/forgot_password_confirmation_screen.dart';
import '../app/forgot_password/presentation/screens/forgot_password_email_screen.dart';
import '../app/forgot_password/presentation/screens/forgot_password_otp_screen.dart';
import '../app/more/downloads/presentation/screens/downloaded_videos_screen.dart';
import '../app/_shared/screen/manage_account/manage_accounts_screen.dart';
import '../app/onboarding/presentation/screens/onboarding_root.dart';
import '../app/onboarding/presentation/screens/welcome_screen.dart';
import '../app/signin/presentation/screens/select_account_screen.dart';
  static const String forgotPasswordEmail = '/forgot-password-email';
  static const String forgotPasswordOtp = '/forgot-password-otp';
  static const String forgotPasswordConfirmation =
      '/forgot-password-confirmation';
  static const String welcomeScreen = '/welcome-screen';
  static const String selectAccountScreen = '/select-account';
      ),

      GoRoute(
        path: forgotPasswordEmail,
        name: forgotPasswordEmail,
        builder: (context, state) => const ForgotPasswordEmailScreen(),
      ),
      GoRoute(
        path: forgotPasswordOtp,
        name: forgotPasswordOtp,
        builder: (context, state) => const ForgotPasswordOtpScreen(),
      ),
      GoRoute(
        path: forgotPasswordConfirmation,
        name: forgotPasswordConfirmation,
        builder: (context, state) =>
        const ForgotPasswordConfirmationScreen(),
      ),
      GoRoute(
        path: welcomeScreen,
        name: welcomeScreen,
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: selectAccountScreen,
        name: selectAccountScreen,
        builder: (context, state) => const SelectAccountScreen(),
      ),
    ],
  );
}

class RouteException implements Exception {
  const RouteException(this.message);

  final String message;
}
