import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../common/extensions/num_extension.dart';
import '../../../common/style_guide/colors.dart';
import '../../../common/style_guide/style_guide.dart';
import '../../../common/utils/app_config.dart';
import '../../../common/utils/notify_helper.dart';
import '../components/page_padding.dart';
import '../widgets/app_bar.dart';
import '../widgets/app_button.dart';
import '../widgets/otp_field.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({
    required this.controller,
    super.key,
    this.formKey,
    this.onResend,
    this.onComplete,
  });

  final TextEditingController controller;
  final VoidCallback? onResend;
  final GlobalKey<FormState>? formKey;
  final void Function(String)? onComplete;

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  Timer? _timer;
  int _currentCountdown = AppConfig.otpCountDownLimitInSeconds;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  bool waiting = true;

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) {
        return;
      }
      setState(() {
        if (_currentCountdown < 1) {
          timer.cancel();
          waiting = false;
        } else {
          _currentCountdown = _currentCountdown - 1;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(),
      body: Form(
        key: widget.formKey,
        child: PagePadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Verify Account',
                style: AppTypography.titleLarge.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              8.height,
              Text(
                'Enter the verification code we just sent on your email address.',
                style: AppTypography.bodyMedium.copyWith(
                  color: AppColors.textPrimary,
                ),
              ),
              40.height,
              OtpField(
                controller: widget.controller,
                onCompleted: (value) => widget.onComplete?.call(value),
                onChanged: (value) {},
              ),
              20.height,
            ],
          ),
        ),
      ),
      bottomNavigationBar: Column(
        children: [
          Center(
            child: Text.rich(
              TextSpan(
                children: [
                  if (waiting) ...[
                    TextSpan(
                      text: '${_formatCountdown(_currentCountdown)} ',
                      style: AppTypography.titleSmall.copyWith(
                        color: AppColors.bgAccent,
                      ),
                    ),
                    TextSpan(
                      text: 'before you can request another OTP',
                      style: AppTypography.titleSmall.copyWith(
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ] else ...[
                    TextSpan(
                      text: 'Resend OTP',
                      style: AppTypography.titleSmall.copyWith(
                        color: AppColors.textPrimary,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = _restartTimer,
                    ),
                  ],
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          24.height,
          PagePadding(
            child: AppButton(text: 'Verify', onPressed: () async {}),
          ),
        ],
      ),
    );
  }

  String _formatCountdown(int seconds) {
    final minutes = seconds ~/ 60;
    final remainingSeconds = seconds % 60;
    return '$minutes:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _restartTimer() {
    NotifyHelper.showToast('Otp sent');
    setState(() {
      waiting = true;
      if (_currentCountdown <= 0) {
        _currentCountdown = AppConfig.otpCountDownLimitInSeconds;
        startTimer();
        widget.onResend?.call();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
