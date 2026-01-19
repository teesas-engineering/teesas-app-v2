import 'dart:async';

import 'package:flutter/material.dart';

class ModalHelper {
  ModalHelper._();

  static Future<dynamic> show(
    BuildContext context, {
    required Widget child,
    bool avoidKeyboard = false,
        bool isScrolled=true
  }) async {
    final mediaQueryData = MediaQuery.of(context).size;
    final result = await showModalBottomSheet(
      context: context,
      useSafeArea: true,
      isScrollControlled: isScrolled,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.black.withValues(alpha: 0.5),
      constraints: BoxConstraints(minWidth: mediaQueryData.width),
      builder: (context) =>  Padding(
        padding: EdgeInsets.only(
          bottom: !avoidKeyboard
              ? 0
              : MediaQuery.of(context).viewInsets.bottom,
        ),
        child: child,
      ),
    );
    return result;
  }
}
