import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../common/dimens/app_dimens.dart';
import '../../../../../common/extensions/num_extension.dart';
import '../../../../../common/style_guide/colors.dart';
import '../../../../../common/style_guide/style_guide.dart';
import '../../../../_shared/widgets/app_back_header.dart';
import '../../../../_shared/widgets/app_card.dart';
import '../../../../_shared/widgets/app_input_field.dart';
import '../../data/model/referral_invitee.dart';
import '../../store/referral_store.dart';

class InviteListScreen extends StatefulWidget {
  const InviteListScreen({super.key});

  @override
  State<InviteListScreen> createState() => _InviteListScreenState();
}

class _InviteListScreenState extends State<InviteListScreen> {
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
                      'Your Invite List',
                      style: AppTypography.displaySmall.copyWith(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    8.height,
                    Text(
                      'View the following details below.',
                      style: AppTypography.bodyMedium.copyWith(
                        color: AppColors.textModalSecondary,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    24.height,
                    AppInputField(
                      hintText: 'Search',
                      prefixIcon: Icon(
                        Icons.search,
                        color: AppColors.textTertiary,
                        size: 20.w,
                      ),
                      onChanged: _store.setSearchQuery,
                      borderRadius: BorderRadius.circular(8.r),
                      backgroundColor: const Color(0xFFF9FAFB),
                      borderColor: AppColors.borderPrimary,
                    ),
                    24.height,
                    AppCard.secondary(
                      borderRadius: 16.r,
                      padding: EdgeInsets.symmetric(
                        vertical: 4.h,
                        horizontal: 16.w,
                      ),
                      child: Observer(
                        builder: (_) {
                          if (_store.filteredInvitees.isEmpty) {
                            return Padding(
                              padding: EdgeInsets.all(24.w),
                              child: Center(
                                child: Text(
                                  'No invitees found',
                                  style: AppTypography.bodyMedium.copyWith(
                                    color: AppColors.textSecondary,
                                  ),
                                ),
                              ),
                            );
                          }
                          return ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: _store.filteredInvitees.length,
                            separatorBuilder: (_, __) => const Divider(
                              height: 1,
                              color: AppColors.borderPrimary,
                            ),
                            itemBuilder: (context, index) {
                              final invitee = _store.filteredInvitees[index];
                              return _buildInviteeRow(index + 1, invitee);
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInviteeRow(int index, ReferralInvitee invitee) {
    final isRegistered = invitee.status == ReferralStatus.registered;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Text(
                      '$index.',
                      style: AppTypography.bodyMedium.copyWith(
                        color: AppColors.textTertiary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    12.width,
                    Expanded(
                      child: Text(
                        invitee.name,
                        style: AppTypography.bodyMedium.copyWith(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.w700,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: isRegistered
                      ? AppColors.registeredBg
                      : AppColors.subscribedBg,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Text(
                  isRegistered ? 'Registered' : 'Subscribed',
                  style: AppTypography.labelSmall.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          8.height,
          Padding(
            padding: EdgeInsets.only(
              left: 24.w,
            ), // Indent to align with name roughly
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  invitee.date,
                  style: AppTypography.bodyMedium.copyWith(
                    color: AppColors.textTertiary,
                  ),
                ),
                Text(
                  '₦${invitee.amountEarned.toInt()}',
                  style: AppTypography.bodyMedium.copyWith(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
