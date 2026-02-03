import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../../dependency_manager/injectable.dart';
import '../../../../router/main_router.dart';
import '../../../_shared/components/page_padding.dart';
import '../../../_shared/widgets/app_bar.dart';
import '../../store/login_store.dart';
import '../components/select_account_list_item.dart';

class SelectAccountScreen extends StatelessWidget {
  const SelectAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final store = getIt<LoginStore>();

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const AppAppBar(),
      body: SafeArea(
        child: PagePadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              24.height,
              Text(
                'Select Account to Continue',
                style: AppTypography.titleLarge.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              16.height,
              Text(
                'Your Accounts',
                style: AppTypography.bodyMedium.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              16.height,
              Expanded(
                child: Observer(
                  builder: (_) {
                    final profiles = store.profiles;
                    if (profiles.isEmpty) {
                      return Center(
                        child: Text(
                          'No accounts available',
                          style: AppTypography.bodyMedium.copyWith(
                            color: AppColors.textSecondary,
                          ),
                        ),
                      );
                    }
                    return ListView.separated(
                      padding: EdgeInsets.zero,
                      itemCount: profiles.length,
                      separatorBuilder: (_, __) => 12.height,
                      itemBuilder: (context, index) {
                        final profile = profiles[index];
                        return SelectAccountListItem(
                          profile: profile,
                          onTap: () => context.go(MainRouter.homeShell),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
