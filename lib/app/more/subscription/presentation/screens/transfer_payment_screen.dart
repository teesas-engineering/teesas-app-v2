import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/dimens/app_dimens.dart';
import '../../../../../common/extensions/num_extension.dart';
import '../../../../../common/style_guide/colors.dart';
import '../../../../../common/style_guide/style_guide.dart';
import '../../../../_shared/widgets/app_button.dart';
import '../../../../_shared/widgets/app_card.dart';
import '../../../../_shared/widgets/app_divider.dart';
import '../../../../_shared/widgets/app_progress_header.dart';

class TransferPaymentScreen extends StatefulWidget {
  const TransferPaymentScreen({required this.amount, super.key});

  final double amount;

  static const String route = '/transfer-payment';

  @override
  State<TransferPaymentScreen> createState() => _TransferPaymentScreenState();
}

class _TransferPaymentScreenState extends State<TransferPaymentScreen> {
  late Timer _timer;
  int _secondsRemaining = 300; // 5 minutes

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        setState(() {
          _secondsRemaining--;
        });
      } else {
        _timer.cancel();
        // Handle timeout if needed
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  String get _timerText {
    final minutes = (_secondsRemaining / 60).floor();
    final seconds = _secondsRemaining % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  Future<void> _copyToClipboard(String text) async {
    await Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Copied to clipboard')));
  }

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
                children: [
                  32.height,
                  Image.asset(
                    AppAssets.successImage,
                    height: 120.h,
                    width: 120.w,
                  ),
                  32.height,
                  AppCard.primary(
                    backgroundColor: AppColors.white,
                    borderBottomWidth: 0,
                    borderColor: AppColors.transparent,
                    borderRadius: 12.r,
                    padding: EdgeInsets.all(16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Account Bank',
                          style: AppTypography.bodySmall.copyWith(
                            color: AppColors.textTertiary,
                          ),
                        ),
                        8.height,
                        Row(
                          children: [
                            // Placeholder for Bank Logo if available, or just Icon
                            Container(
                              width: 24.w,
                              height: 24.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red, // GT Bank color
                              ),
                              child: Center(
                                child: Text(
                                  'GT',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            8.width,
                            Text(
                              'GT Bank',
                              style: AppTypography.title16.copyWith(
                                fontWeight: FontWeight.w700,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),
                        16.height,
                        Text(
                          'Account Number',
                          style: AppTypography.bodySmall.copyWith(
                            color: AppColors.textTertiary,
                          ),
                        ),
                        8.height,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '212121212',
                              style: AppTypography.title16.copyWith(
                                fontWeight: FontWeight.w700,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            GestureDetector(
                              onTap: () => _copyToClipboard('212121212'),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.copy,
                                    size: 16.w,
                                    color: AppColors.textBrand,
                                  ),
                                  4.width,
                                  Text(
                                    'Copy',
                                    style: AppTypography.bodySmall.copyWith(
                                      color: AppColors.textBrand,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        16.height,
                        Text(
                          'Account Name',
                          style: AppTypography.bodySmall.copyWith(
                            color: AppColors.textTertiary,
                          ),
                        ),
                        8.height,
                        Text(
                          'Teesas Intl',
                          style: AppTypography.title16.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  AppDivider(height: 32.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Amount to send',
                        style: AppTypography.bodyLarge.copyWith(
                          color: AppColors.textTertiary,
                        ),
                      ),
                      Text(
                        '#${widget.amount.formatCurrency()}',
                        style: AppTypography.headlineSmall.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ],
                  ),
                  AppDivider(height: 24.h),
                  RichText(
                    text: TextSpan(
                      text: _timerText,
                      style: AppTypography.bodyLarge.copyWith(
                        color: AppColors.textBrand,
                        fontWeight: FontWeight.w600,
                      ),
                      children: [
                        TextSpan(
                          text: ' left to make payment into this account',
                          style: AppTypography.bodyLarge.copyWith(
                            color: AppColors.textPrimary,
                            fontWeight: FontWeight.w400,
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
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          left: Dimens.pagePadding,
          right: Dimens.pagePadding,
          bottom:
              MediaQuery.viewPaddingOf(context).bottom +
              (Platform.isIOS ? 0 : 16.h),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppButton(
              text: 'I have made payment',
              onPressed: () async {
                // TODO: Navigate to success or trigger check
              },
              backgroundColor: AppColors.white,
              textColor: AppColors.textPrimary,
              borderColor: AppColors.bgBrand,
            ),
          ],
        ),
      ),
    );
  }
}
