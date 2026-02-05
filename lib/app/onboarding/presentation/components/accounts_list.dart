import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/components/manage_account_card.dart';
import '../../../_shared/components/page_padding.dart';
import '../../../_shared/enum/gender.dart';
import '../../../_shared/stores/account_management_store/account_management_store.dart';
import '../../../_shared/widgets/app_button.dart';

class AccountsList extends StatelessWidget {
  const AccountsList({super.key});

  @override
  Widget build(BuildContext context) {
    final store = context.read<AccountManagementStore>();
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: PagePadding(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  24.height,
                  Text(
                    'Add Account',
                    style: AppTypography.titleLarge.copyWith(
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  24.height,
                  Text(
                    'Your Accounts',
                    style: AppTypography.bodyLarge.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                  16.height,
                  Observer(
                    builder: (_) => Column(
                      children: store.pendingAccounts.asMap().entries.map((
                        entry,
                      ) {
                        final index = entry.key;
                        final user = entry.value;
                        return Padding(
                          padding: EdgeInsets.only(
                            bottom: index < store.pendingAccounts.length - 1
                                ? 16
                                : 0,
                          ),
                          child: ManageAccountCard(
                            name: user.name,
                            onClick: () => store.selectCategoryForUser(user),
                            role: AccountRole.student,
                            avatarUrl:
                                user.gender?.getAvatar() ??
                                Gender.male.getAvatar(),
                            onEdit: () {
                              store.editAccount(user,index);
                            },
                            onDelete: () =>
                                store.removeAccountFromPending(index),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  32.height,
                ],
              ),
            ),
          ),
        ),
        // Continue button at the bottom

        GestureDetector(
          onTap: store.addAnotherUser,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.add_circle_outline,
                size: 24,
                color: AppColors.textPrimary,
              ),
              const SizedBox(width: 16),
              Text(
                'Add Another User',
                style: AppTypography.bodyLarge.copyWith(
                  color: AppColors.textButtonSecondary,
                ),
              ),
            ],
          ),
        ),
        16.verticalSpace,
        Container(
          padding: const EdgeInsets.all(20).copyWith(bottom: 24),
          decoration: BoxDecoration(color: AppColors.white),
          child:Column(
            children: [

              AppButton(text: 'Continue', onPressed: store.saveAndContinue)
            ],
          ),
        ),
      ],
    );
  }
}
