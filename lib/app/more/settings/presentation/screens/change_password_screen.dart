import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/dimens/app_dimens.dart';
import '../../../../../common/extensions/num_extension.dart';
import '../../../../../common/style_guide/colors.dart';
import '../../../../../common/style_guide/style_guide.dart';
import '../../../../_shared/widgets/app_back_header.dart';
import '../widgets/change_password_field.dart';
import '../widgets/change_password_proceed_button.dart';
import '../../store/change_password_store.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final ChangePasswordStore _store = ChangePasswordStore();

  @override
  void dispose() {
    _store.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgPrimary,
      appBar: const AppBackHeader(),
      body: SafeArea(
        child: Observer(
          builder: (_) => Column(
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
                        'Password Change',
                        style: AppTypography.headlineSmall.copyWith(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textSecondary,
                        ),
                      ),
                      8.height,
                      Text(
                        'Enter the appropriate details below.',
                        style: AppTypography.bodyMedium.copyWith(
                          color: AppColors.textModalSecondary,
                        ),
                      ),
                      32.height,
                      ChangePasswordField(
                        controller: _store.oldPasswordController,
                        labelText: 'Old Password',
                        hintText: 'Input',
                      ),
                      24.height,
                      ChangePasswordField(
                        controller: _store.newPasswordController,
                        labelText: 'New Password',
                      ),
                      24.height,
                      ChangePasswordField(
                        controller: _store.confirmPasswordController,
                        labelText: 'Confirm New Password',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  Dimens.pagePadding,
                  16.h,
                  Dimens.pagePadding,
                  24.h,
                ),
                child: ChangePasswordProceedButton(
                  isLoading: _store.isLoading,
                  onPressed: _store.changePassword,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
