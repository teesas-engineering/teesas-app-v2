import 'dart:async';
import 'package:flutter/material.dart';

class ModalHelper {
  ModalHelper._();
  static Future<void> showModalMax(BuildContext context, Widget modal,
      {bool transparent = true, bool dismissible = true,bool useRootNavigator=false,bool avoidKeyboard=true}) async {
    final mediaQueryData = MediaQuery.of(context).size;
    const radius = Radius.circular(20);
    await showModalBottomSheet(
        isDismissible: dismissible,
        useRootNavigator:useRootNavigator ,
        backgroundColor: transparent ? Colors.transparent : Colors.white,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topRight: radius, topLeft: radius)),
        context: context,
        constraints: BoxConstraints(
          minWidth: mediaQueryData.width,
        ),
        builder: (context) => Padding(
          padding: EdgeInsets.only(
              bottom:!avoidKeyboard?0: MediaQuery.of(context).viewInsets.bottom),
          child: modal,
        )
    );
  }

  static Future<void> showReplaceModal(BuildContext context, Widget modal)async{
    Navigator.pop(context);
    ModalHelper.show(context,child:  modal);
  }

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
