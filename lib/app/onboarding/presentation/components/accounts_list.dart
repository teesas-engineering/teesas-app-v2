import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/components/page_padding.dart';
import '../../../_shared/widgets/app_button.dart';
import '../stores/onboarding_store.dart';
import '../widgets/user_account_card.dart';

class AccountsList extends StatelessWidget {
  const AccountsList({required this.store, super.key});

  final OnboardingStore store;

  @override
  Widget build(BuildContext context) {
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
                    style: AppTypography.headlineMedium.copyWith(
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.bold,
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
                      children: store.userAccounts.asMap().entries.map((entry) {
                        final index = entry.key;
                        final user = entry.value;
                        return Padding(
                          padding: EdgeInsets.only(
                            bottom: index < store.userAccounts.length - 1
                                ? 16
                                : 0,
                          ),
                          child: UserAccountCard(
                            name: user.name,
                            gender: user.gender,
                            onEdit: () {
                              // Handle edit
                            },
                            onDelete: () {
                              store.removeUserAccount(index);
                            },
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  24.height,
                  GestureDetector(
                    onTap: () {
                      // Clear form and show add user form
                      store.clearForm();
                    },
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.borderPrimary,
                              width: 2,
                            ),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          'Add Another User',
                          style: AppTypography.bodyLarge.copyWith(
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  32.height,
                ],
              ),
            ),
          ),
        ),
        // Continue button at the bottom
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(color: AppColors.white),
          child: AppButton.secondary(
            text: 'Continue',
            onPressed: () async {
              // Handle continue logic
            },
          ),
        ),
      ],
    );
  }
}
