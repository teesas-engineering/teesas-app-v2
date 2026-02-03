import 'package:flutter/material.dart';

import '../../../_shared/components/manage_account_card.dart';
import '../../../_shared/data/dto/user_dto/user_profile_dto.dart';

class SelectAccountListItem extends StatelessWidget {
  const SelectAccountListItem({
    required this.profile,
    required this.onTap,
    super.key,
  });

  final UserProfileDto profile;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: ManageAccountCard(
        name: profile.name,
        role: AccountRole.student,
        avatarUrl: 'https://i.pravatar.cc/150?u=${profile.id}',
      ),
    );
  }
}
