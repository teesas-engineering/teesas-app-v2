import 'package:flutter/material.dart';

import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/enum/gender.dart';
import '../../../_shared/widgets/app_card.dart';

class UserAccountCard extends StatelessWidget {
  const UserAccountCard({
    required this.name,
    required this.gender,
    required this.onEdit,
    required this.onDelete,
    super.key,
  });

  final String name;
  final Gender gender;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppCard.primary(
          child: Column(
            children: [
              Row(
                children: [
                  // Avatar
                  Image.asset(
                    gender.getAvatar(),
                    width: 48,
                    height: 48,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: AppTypography.titleMedium.copyWith(
                            color: AppColors.textPrimary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        4.height,
                        Text(
                          'Student',
                          style: AppTypography.bodySmall.copyWith(
                            color: AppColors.bgBrand,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              12.height,
              Center(
                child: TextButton(
                  onPressed: onEdit,
                  child: Text(
                    'Edit Account',
                    style: AppTypography.bodyMedium.copyWith(
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Delete button in top right
        Positioned(
          top: 8,
          right: 8,
          child: GestureDetector(
            onTap: onDelete,
            child: Container(
              width: 24,
              height: 24,
              decoration: const BoxDecoration(
                color: AppColors.colorE12F4F,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.close, color: AppColors.white, size: 16),
            ),
          ),
        ),
      ],
    );
  }
}
