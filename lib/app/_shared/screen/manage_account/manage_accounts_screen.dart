import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../common/dimens/app_dimens.dart';
import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_progress_header.dart';
import '../../stores/manage_account_store/manage_accounts_store.dart';
import '../../components/manage_account_card.dart';

class ManageAccountsScreen extends StatefulWidget {
  const ManageAccountsScreen({super.key});

  @override
  State<ManageAccountsScreen> createState() => _ManageAccountsScreenState();
}

class _ManageAccountsScreenState extends State<ManageAccountsScreen> {
  final ManageAccountsStore _store = ManageAccountsStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppProgressHeader(progress: 0.75),
      backgroundColor: AppColors.bgPrimary,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: Dimens.pagePadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    24.height,
                    Text(
                      'Manage Accounts',
                      style: AppTypography.displaySmall.copyWith(
                        color: AppColors.textSecondary,
                        fontSize: 20.sp,
                      ),
                    ),
                    16.height,
                    Text(
                      "Today is a new day. It's your day. You shape it.\nSign in to start managing your projects.",
                      style: AppTypography.bodyMedium.copyWith(
                        color: AppColors.textPrimary,
                      ),
                    ),
                    24.height,
                    Text(
                      'Your Accounts',
                      style: AppTypography.bodyLarge.copyWith(
                        color: AppColors.textTertiary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    8.height,
                    Observer(
                      builder: (_) {
                        return ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: _store.accounts.length,
                          separatorBuilder: (_, _) => 16.height,
                          itemBuilder: (context, index) {
                            final account = _store.accounts[index];
                            return ManageAccountCard(
                              name: account.name,
                              role: account.role == AccountRoleType.student
                                  ? AccountRole.student
                                  : AccountRole.parent,
                              avatarUrl: account.avatarUrl,
                              onEdit: () {},
                              onDelete: () => _store.removeAccount(account.id),
                            );
                          },
                        );
                      },
                    ),
                    32.height,
                    Center(
                      child: GestureDetector(
                        onTap: _store.addAccount,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: EdgeInsets.all(2.w),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: AppColors.textPrimary,
                                  width: 1.5,
                                ),
                              ),
                              child: Icon(
                                Icons.add_rounded,
                                size: 20.w,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            24.width,
                            Text(
                              'Add Another User',
                              style: AppTypography.bodyMedium.copyWith(
                                color: AppColors.textButtonSecondary,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    40.height,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ColoredBox(
        color: AppColors.white,
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            Dimens.pagePadding,
            16.h,
            Dimens.pagePadding,
            MediaQuery.viewPaddingOf(context).bottom +
                (Platform.isAndroid ? 16.h : 0),
          ),
          child: AppButton(text: 'Continue', onPressed: () async {}),
        ),
      ),
    );
  }
}
