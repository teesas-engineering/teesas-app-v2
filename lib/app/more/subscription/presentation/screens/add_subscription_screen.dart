import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/dimens/app_dimens.dart';
import '../../../../../common/extensions/num_extension.dart';
import '../../../../../common/style_guide/colors.dart';
import '../../../../../common/style_guide/style_guide.dart';
import '../../../../_shared/widgets/app_button.dart';
import '../../../../_shared/widgets/app_progress_header.dart';
import '../../store/add_subscription_store.dart';
import '../widgets/subscription_group_item.dart';

class AddSubscriptionScreen extends StatefulWidget {
  const AddSubscriptionScreen({super.key});

  static const String route = '/add-subscription';

  @override
  State<AddSubscriptionScreen> createState() => _AddSubscriptionScreenState();
}

class _AddSubscriptionScreenState extends State<AddSubscriptionScreen> {
  final AddSubscriptionStore _store = AddSubscriptionStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgPrimary,
      appBar: AppProgressHeader(
        progress: 0.5,
        onBackPressed: () => Navigator.of(context).pop(),
      ),
      body: Column(
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
                    'Add Subscription',
                    style: AppTypography.displaySmall.copyWith(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  8.height,
                  Text(
                    'Select an options from your chosen category.',
                    style: AppTypography.bodyMedium.copyWith(
                      color: AppColors.textModalSecondary,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  32.height,
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: _store.groups.length,
                    separatorBuilder: (_, _) => 32.height,
                    itemBuilder: (context, index) {
                      final group = _store.groups[index];
                      return SubscriptionGroupItem(group: group, store: _store);
                    },
                  ),
                  32.height,
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(Dimens.pagePadding),
            decoration: BoxDecoration(
              color: AppColors.white,
              border: const Border(
                top: BorderSide(color: AppColors.borderPrimary),
              ),
            ),
            child: AppButton(text: 'Make Payment', onPressed: () async {}),
          ),
        ],
      ),
    );
  }
}
