import 'package:flutter/cupertino.dart';

import '../../../_shared/screen/otp_screen.dart';

class AccountVerificationPage extends StatelessWidget {
  AccountVerificationPage({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return OtpScreen(controller: controller);
  }
}
