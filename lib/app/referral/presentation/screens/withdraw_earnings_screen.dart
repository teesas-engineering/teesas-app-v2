import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../common/dimens/app_dimens.dart';
import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../../router/main_router.dart';
import '../../../_shared/widgets/app_back_header.dart';
import '../../../_shared/widgets/app_button.dart';
import '../../../_shared/widgets/app_input_field.dart';
import '../../store/referral_store.dart';

class WithdrawEarningsScreen extends StatefulWidget {
  const WithdrawEarningsScreen({super.key});

  @override
  State<WithdrawEarningsScreen> createState() => _WithdrawEarningsScreenState();
}

class _WithdrawEarningsScreenState extends State<WithdrawEarningsScreen> {
  final ReferralStore _store = ReferralStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgPrimary,
      appBar: const AppBackHeader(),
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
                      'Withdraw Earnings',
                      style: AppTypography.displaySmall.copyWith(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    8.height,
                    Text(
                      'Enter the appropriate details below.',
                      style: AppTypography.bodyMedium.copyWith(
                        color: AppColors.textPrimaryDark,
                      ),
                    ),
                    24.height,
                    AppInputField(
                      labelText: 'Account Number',
                      hintText: 'Input',
                      onChanged: _store.setWithdrawAccountNumber,
                      keyboardType: TextInputType.number,
                    ),
                    16.height,
                    _buildBankDropdown(context),
                    16.height,
                    Observer(
                      builder: (_) => AppInputField(
                        labelText: 'Account Name',
                        controller:
                            TextEditingController(
                                text: _store.withdrawAccountName,
                              )
                              ..selection = TextSelection.fromPosition(
                                TextPosition(
                                  offset: _store.withdrawAccountName.length,
                                ),
                              ),
                        readOnly: true,
                        backgroundColor: AppColors.bgSecondary,
                      ),
                    ),
                    40.height,
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                Dimens.pagePadding,
                16.h,
                Dimens.pagePadding,
                MediaQuery.viewPaddingOf(context).bottom + 16.h,
              ),
              child: Observer(
                builder: (_) => AppButton(
                  text: 'Withdraw',
                  onPressed: () async {
                    await _store.withdrawEarnings();
                    if (context.mounted) {
                      unawaited(context.push(MainRouter.withdrawSuccess));
                    }
                  },
                  isDisabled: !_store.canWithdraw,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBankDropdown(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Observer(
          builder: (_) => Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            decoration: BoxDecoration(
              color: AppColors.bgSecondary,
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: AppColors.borderPrimary),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _store.withdrawBankName.isEmpty
                    ? null
                    : _store.withdrawBankName,
                isExpanded: true,
                hint: Text(
                  'Bank Name',
                  style: AppTypography.bodySmall.copyWith(
                    color: AppColors.textTertiary,
                    fontSize: 14.sp,
                  ),
                ),
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.textSecondary,
                ),
                items: ['GTBank', 'Zenith Bank', 'Access Bank', 'First Bank']
                    .map((value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: AppTypography.bodyMedium.copyWith(
                            color: AppColors.textSecondary,
                          ),
                        ),
                      );
                    })
                    .toList(),
                onChanged: _store.setWithdrawBankName,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
