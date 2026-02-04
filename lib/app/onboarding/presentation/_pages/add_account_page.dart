import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../common/style_guide/colors.dart';
import '../components/accounts_list.dart';
import '../components/add_user_form.dart';
import '../stores/add_account_store.dart';

class AddAccountPage extends StatelessWidget {
  const AddAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<AddAccountStore>(
      create: (_) => AddAccountStore(),
      dispose: (_, store) => store.dispose(),
      child: Scaffold(
        backgroundColor: AppColors.bgPrimary,
        appBar: AppBar(
          backgroundColor: AppColors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: AppColors.iconsPrimary),
            onPressed: () => context.pop(),
          ),
        ),
        body: Observer(
          builder: (_) {
            final store = Provider.of<AddAccountStore>(context);
            if (store.userAccounts.isEmpty) {
              return AddUserForm(store: store);
            } else {
              return AccountsList(store: store);
            }
          },
        ),
      ),
    );
  }
}
