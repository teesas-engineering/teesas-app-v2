import 'package:flutter/material.dart';

import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../../common/utils/modal_helper.dart';
import '../../../_shared/enum/gender.dart';
import '../../../_shared/widgets/app_card.dart';
import '../../../_shared/widgets/base_modal_parent.dart';
import '../../../_shared/widgets/user_avatar.dart';

class AccountModal extends StatelessWidget {
  const AccountModal({super.key});

  static Future<void> show(BuildContext context) async {
    await ModalHelper.show(
      context,
      child: const AccountModal(),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Dummy data for accounts
    final accounts = [
      const _AccountData(
        name: 'Jane Omokewe',
        role: 'Student',
        gender: Gender.female,
        isSelected: false,
      ),
      const _AccountData(
        name: 'James Omokewe',
        role: 'Student',
        gender: Gender.male,
        isSelected: true,
      ),
      const _AccountData(
        name: 'John Omokewe',
        role: 'Parent',
        gender: Gender.male,
        isSelected: false,
      ),
    ];

    return BaseModalParent(
      title: 'Change Account',
      description: 'Select account you want to continue with',
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Accounts',
            style: AppTypography.bodyMedium.copyWith(
              color: AppColors.textTertiary,
            ),
          ),
          16.height,
          ...accounts.map((account) => Padding(
                padding: EdgeInsets.only(
                  bottom: account == accounts.last ? 0 : 12,
                ),
                child: _AccountCard(
                  account: account,
                  onTap: () {
                    // Handle account selection
                    Navigator.pop(context);
                  },
                ),
              )),
          24.height,
        ],
      ),
    );
  }
}

class _AccountCard extends StatelessWidget {
  const _AccountCard({
    required this.account,
    required this.onTap,
  });

  final _AccountData account;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final isSelected = account.isSelected;
    final roleColor = account.role == 'Student'
        ? AppColors.bgAccentOrchid
        : AppColors.bgAccentRosewood;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: AppCard.primary(
        borderColor: isSelected
            ? AppColors.bgBrandSecondary
            : AppColors.cardBorder,
        borderBottomWidth: isSelected ? 2 : 5,
        child: Stack(
          children: [
            Row(
              children: [
                // Avatar
                UserAvatar(
                  gender: account.gender,
                  url: account.profileImageUrl,
                ),
                16.width,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        account.name,
                        style: AppTypography.titleMedium.copyWith(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      4.height,
                      Text(
                        account.role,
                        style: AppTypography.bodySmall.copyWith(
                          color: roleColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Selection indicator (checkmark)
            if (isSelected)
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.bgBrandSecondary,
                  ),
                  child: Icon(
                    Icons.check,
                    size: 16,
                    color: AppColors.white,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _AccountData {
  const _AccountData({
    required this.name,
    required this.role,
    required this.gender,
    required this.isSelected,
    this.profileImageUrl,
  });

  final String name;
  final String role;
  final Gender gender;
  final bool isSelected;
  final String? profileImageUrl;
}
