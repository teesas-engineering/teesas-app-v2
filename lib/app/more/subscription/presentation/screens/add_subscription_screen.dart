import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../common/dimens/app_dimens.dart';
import '../../../../../common/extensions/num_extension.dart';
import '../../../../../common/style_guide/colors.dart';
import '../../../../../common/style_guide/style_guide.dart';
import '../../../../../dependency_manager/injectable.dart';
import '../../../../../router/main_router.dart';
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
  final AddSubscriptionStore _store = getIt<AddSubscriptionStore>();

  @override
  void initState() {
    super.initState();
    _store.fetchSubscriptions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgPrimary,
      appBar: AppProgressHeader(
        progress: 0.5,
        onBackPressed: () => Navigator.of(context).pop(),
      ),
      body: Observer(
        builder: (context) {
          if (_store.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (_store.groups.isEmpty && _store.errorMessage == null) {
            return Center(
              child: Text(
                'No subscriptions available',
                style: AppTypography.bodyMedium,
              ),
            );
          }

          if (_store.errorMessage != null && _store.groups.isEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(Dimens.pagePadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Failed to load subscriptions',
                      style: AppTypography.bodyMedium,
                    ),
                    8.height,
                    AppButton(
                      text: 'Retry',
                      onPressed: () async => _store.fetchSubscriptions(),
                      isFullWidth: false,
                    ),
                  ],
                ),
              ),
            );
          }

          return Column(
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
                          color: AppColors.color0A0A0A,
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
                          return SubscriptionGroupItem(
                            group: group,
                            store: _store,
                          );
                        },
                      ),
                      32.height,
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: Dimens.pagePadding,
                  right: Dimens.pagePadding,
                  bottom: MediaQuery.of(context).viewPadding.bottom + 16.h,
                ),
                child: AppButton(
                  text: 'Make Payment',
                  onPressed: () async {
                    final selectedItems = _store.getSelectedItems();
                    if (selectedItems.isNotEmpty && context.mounted) {
                      unawaited(
                        context.push(
                          MainRouter.subscriptionSummary,
                          extra: selectedItems,
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
