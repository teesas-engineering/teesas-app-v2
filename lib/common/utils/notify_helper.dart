import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../style_guide/colors.dart';

class NotifyHelper {
  NotifyHelper._();

  static void showErrorSnackBar(BuildContext context, {String? message}) =>
      _showSuccessSnackBar(context, true, message: message);

  static void showSuccessSnackBar(BuildContext context, {String? message}) =>
      _showSuccessSnackBar(context, false, message: message);

  static void showCopiedSnackBar({String? message}) =>
      showToast('Text copied', color: Colors.black.withValues(alpha: .4));

  static void showErrorToast(String message) => showToast(message);

  static void showSuccessToast(String message, {ToastGravity? gravity}) =>
      showToast(message, gravity: gravity, color: AppColors.bgBrand);

  static void showToast(
    String message, {
    Color? color,
    ToastGravity? gravity,
  }) => Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: gravity ?? ToastGravity.TOP,
    backgroundColor: color ?? Colors.black54,
    textColor: Colors.white,
    fontSize: 16,
  );

  static void showSnackBar(BuildContext context, {required Widget child}) =>
      _showSuccessSnackBar(context, false, child: child);

  static Future<void> _showSuccessSnackBar(
    BuildContext context,
    bool error, {
    String? message,
    Widget? child,
  }) async {
    final overlay = Overlay.of(context);
    final overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: MediaQuery.of(context).padding.top + 5, // Adjust as needed
        left: 0,
        right: 0,
        child: Material(color: Colors.transparent, child: child),
      ),
    );

    overlay.insert(overlayEntry);
    await Future.delayed(const Duration(seconds: 5)).then((value) {
      overlayEntry.remove();
    });
  }
}
