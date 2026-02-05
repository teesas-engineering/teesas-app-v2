import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../../../common/enum/state_type.dart';
import '../../../../common/utils/reaction_listener.dart';
import '../../../_shared/screen/otp_screen.dart';
import '../../../_shared/stores/otp_store/otp_store.dart';
import '../stores/onboarding_store.dart';

class AccountVerificationPage extends StatelessWidget {
  const AccountVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final store = context.read<OtpStore>();
    return ReactionListener(
      observe: () => store.verifyOtpStatus,
      listener: (_, state) {
        if (state.isSuccess) {
          unawaited(context.read<OnboardingStore>().onNext());
        }
      },
      child: OtpScreen(
        onComplete: store.submit,
        onResend: () {
          unawaited(store.resendOtp());
        },
      ),
    );
  }
}
