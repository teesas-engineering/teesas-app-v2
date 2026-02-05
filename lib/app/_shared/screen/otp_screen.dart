import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../../../common/enum/state_type.dart';
import '../../../common/extensions/num_extension.dart';
import '../../../common/style_guide/colors.dart';
import '../../../common/style_guide/style_guide.dart';
import '../../../common/utils/app_config.dart';
import '../components/page_padding.dart';
import '../stores/otp_store/otp_store.dart';
import '../widgets/app_button.dart';
import '../widgets/otp_field.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key,  this.onResend, this.onComplete});

  final VoidCallback? onResend;
  final void Function(String)? onComplete;

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  Timer? _timer;
  int _currentCountdown = AppConfig.otpCountDownLimitInSeconds;

  TextEditingController controller = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
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

  String pin = '';
  @override
  Widget build(BuildContext context) {
    final store = context.read<OtpStore>();
    return Form(
      key:formKey,
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
              controller: controller,
              onCompleted: (value) => widget.onComplete?.call(value),
              onChanged: (value) {},
            ),
            20.height,

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
                        recognizer: TapGestureRecognizer()
                          ..onTap = _restartTimer,
                      ),
                    ],
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            24.height,
            Observer(
              builder: (_) {
                return AppButton(
                  text: 'Verify',
                  isLoading: store.verifyOtpStatus.isLoading,
                  isDisabled: pin.length!=4,
                  onPressed: () async {
                    if(formKey.currentState!.validate()) {
                      store.submit(controller.text);
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  String _formatCountdown(int seconds) {
    final minutes = seconds ~/ 60;
    final remainingSeconds = seconds % 60;
    return '$minutes:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _restartTimer() {
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
