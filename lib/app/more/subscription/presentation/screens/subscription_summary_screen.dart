import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../common/dimens/app_dimens.dart';
import '../../../../../common/extensions/num_extension.dart';
import '../../../../../common/style_guide/colors.dart';
import '../../../../../common/style_guide/style_guide.dart';
import '../../../../../common/utils/modal_helper.dart';
import '../../../../_shared/widgets/app_button.dart';
import '../../../../_shared/widgets/app_card.dart';
import '../../../../_shared/widgets/app_divider.dart';
import '../../../../_shared/widgets/app_input_field.dart';
import '../../../../_shared/widgets/app_progress_header.dart';
import '../../data/model/subscription_checkout_item.dart';
import '../widgets/history_subscription_card.dart';
import '../widgets/payment_method_sheet.dart';

class SubscriptionSummaryScreen extends StatefulWidget {
  const SubscriptionSummaryScreen({required this.checkoutItems, super.key});

  final List<SubscriptionCheckoutItem> checkoutItems;

  static const String route = '/subscription-summary';

  @override
  State<SubscriptionSummaryScreen> createState() =>
      _SubscriptionSummaryScreenState();
}

class _SubscriptionSummaryScreenState extends State<SubscriptionSummaryScreen> {
  String? _selectedPaymentMethod;

  final List<String> _paymentMethods = ['Transfer', 'Card'];

  @override
  Widget build(BuildContext context) {
    final double totalAmount = widget.checkoutItems.fold(
      0,
      (sum, item) => sum + item.amount,
    );

    return Scaffold(
      backgroundColor: AppColors.bgPrimary,
      appBar: AppProgressHeader(
        progress: 0.75,
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
                    'Summary',
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
                      color: AppColors.color0A0A0A,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  32.height,
                  Text(
                    'Cart',
                    style: AppTypography.bodyLarge.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.textTertiary,
                      fontSize: 16.sp,
                    ),
                  ),
                  16.height,
                  AppCard.tertiary(
                    child: ListView.separated(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: widget.checkoutItems.length,
                      separatorBuilder: (_, _) => 16.height,
                      itemBuilder: (context, index) {
                        final item = widget.checkoutItems[index];

                        return HistorySubscriptionCard(
                          subscription: item.toSubscription(),
                          backgroundColor: AppColors.bgPrimary,
                          hasBorder: false,
                          margin: EdgeInsets.zero,
                        );
                      },
                    ),
                  ),
                  const AppDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: AppTypography.bodyLarge.copyWith(
                          color: AppColors.textTertiary,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),
                      ),
                      Text(
                        '#${totalAmount.formatCurrency()}',
                        style: AppTypography.displaySmall.copyWith(
                          fontSize: 20.sp,
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const AppDivider(),
                  const AppInputField(
                    labelText: "Apply Promocode/Referral/Reseller's Code",
                  ),
                  32.height,
                  GestureDetector(
                    onTap: () => _showPaymentMethodBottomSheet(context),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 14.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(color: AppColors.colorE2E8F0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _selectedPaymentMethod ?? 'Choose Payment Method',
                            style: AppTypography.bodyMedium.copyWith(
                              color: AppColors.textSecondary,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: AppColors.textSecondary,
                            size: 24.sp,
                          ),
                        ],
                      ),
                    ),
                  ),
                  32.height,
                  AppButton(text: 'Next', onPressed: () async {}),
                  SizedBox(
                    height: MediaQuery.viewPaddingOf(context).bottom + 16.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showPaymentMethodBottomSheet(BuildContext context) async {
    await ModalHelper.show(
      context,
      child: PaymentMethodSheet(
        selectedMethod: _selectedPaymentMethod,
        methods: _paymentMethods,
        onSelect: (method) {
          setState(() {
            _selectedPaymentMethod = method;
          });
          Navigator.pop(context);
        },
      ),
    );
  }
}
