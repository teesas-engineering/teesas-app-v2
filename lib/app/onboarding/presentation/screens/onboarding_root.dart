import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../../../common/style_guide/colors.dart';
import '../../../../dependency_manager/injectable.dart';
import '../../../../router/route_helper.dart';
import '../../../_shared/widgets/app_progress_bar.dart';
import '../_pages/account_verification_page.dart';
import '../_pages/add_account_page.dart';
import '../_pages/choose_category_page.dart';
import '../_pages/signup_page.dart';
import '../_pages/welcome_page.dart';
import '../stores/onboarding_store.dart';

class OnboardingRoot extends StatelessWidget {
  const OnboardingRoot({super.key});

  static final List<Widget> _pages = [
    const SignupPage(),
    AccountVerificationPage(),
    const WelcomePage(),
    const AddAccountPage(),
    const ChooseCategoryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<OnboardingStore>(context);

    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: AppColors.bgPrimary,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: AppColors.iconsPrimary),
            onPressed: () async {
              final shouldPop = await store.handleBackPress();
              if (shouldPop) {
                getIt<RouteHelper>().pop();
              }
            },
          ),
          title: Observer(
            builder: (_) => AppProgressBar(
              value: store.progress,
              height: 6,
              backgroundColor: AppColors.borderPrimary,
              progressColor: AppColors.bgAccent,
            ),
          ),
          actions: const [SizedBox(width: 8)],
        ),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Expanded(
                child: Observer(
                  builder: (_) => PageView(
                    controller: store.pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    onPageChanged: (index) {
                      store.currentPage = index;
                    },
                    children: _pages,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
