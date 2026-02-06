import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../../../common/enum/account_management_action.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../dependency_manager/injectable.dart';
import '../../../_shared/stores/account_management_store/account_management_store.dart';
import '../../../_shared/widgets/app_progress_bar.dart';
import '../components/accounts_list.dart';
import '../components/add_user_form.dart';
import '../components/choose_category_page.dart';
import '../stores/onboarding_store.dart';

class AddAccountPage extends StatelessWidget {
  const AddAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<AccountManagementStore>(
      create: (_) => getIt<AccountManagementStore>()..init(),
      child: const _AccountPageImpl(),
    );
  }
}

class _AccountPageImpl extends StatelessWidget {
  const _AccountPageImpl();

  @override
  Widget build(BuildContext context) {
    final onboardingStore = context.read<OnboardingStore>();
    final store = context.read<AccountManagementStore>();
    return Observer(
      builder: (_) {
        return Scaffold(
          backgroundColor: AppColors.bgPrimary,
          appBar: AppBar(
            backgroundColor: AppColors.white,
            automaticallyImplyLeading: false,
            leading:
                store.userAction != AccountManagementAction.initial &&
                    store.userAction != AccountManagementAction.viewList
                ? IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: AppColors.iconsPrimary,
                    ),
                    onPressed: () async {
                      store.userAction = store.pendingAccounts.isEmpty
                          ? AccountManagementAction.add
                          : AccountManagementAction.viewList;
                    },
                  )
                : null,
            title: Observer(
              builder: (_) => AppProgressBar(
                value: onboardingStore.progress,
                height: 6,
                backgroundColor: AppColors.borderPrimary,
                progressColor: AppColors.bgAccent,
              ),
            ),
          ),
          body: Observer(
            builder: (context) {
              if (store.userAction == AccountManagementAction.edit ||
                  store.userAction == AccountManagementAction.add ||
                  store.userAction == AccountManagementAction.initial) {
                ///initial should be the add user form, but without back button
                return const AddUserForm();
              }
              if (store.userAction == AccountManagementAction.selectCategory) {
                return const ChooseCategoryPage();
              }
              return const AccountsList();
            },
          ),
        );
      },
    );
  }
}
