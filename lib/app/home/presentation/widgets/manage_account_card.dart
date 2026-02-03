import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/widgets/app_card.dart';

enum AccountRole { student, parent }

class ManageAccountCard extends StatelessWidget {
  const ManageAccountCard({
    required this.name,
    required this.role,
    required this.avatarUrl,
    required this.onEdit,
    required this.onDelete,
    super.key,
  });

  final String name;
  final AccountRole role;
  final String avatarUrl;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return AppCard.primary(
      padding: EdgeInsets.zero,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(avatarUrl),
                      backgroundColor: AppColors.bgPrimary,
                    ),
                    16.width,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          4.height,
                          Text(
                            name,
                            style: AppTypography.titleMedium.copyWith(
                              color: AppColors.textPrimary,
                            ),
                          ),
                          4.height,
                          Text(
                            role == AccountRole.student ? 'Student' : 'Parent',
                            style: AppTypography.bodyMedium.copyWith(
                              color: role == AccountRole.student
                                  ? AppColors.color9333EA
                                  : AppColors.colorFF9F1C,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                32.height,
                GestureDetector(
                  onTap: onEdit,
                  child: Text(
                    'Edit Account',
                    style: AppTypography.bodyMedium.copyWith(
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                8.height,
              ],
            ),
          ),
          Positioned(
            top: 8.w,
            right: 8.w,
            child: GestureDetector(
              onTap: onDelete,
              child: Container(
                padding: EdgeInsets.all(4.w),
                decoration: const BoxDecoration(
                  color: AppColors.colorE12F4F,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.close_rounded,
                  size: 12.w,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
