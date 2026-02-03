import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

extension DoubleExtension on double {
  SizedBox get height => SizedBox(height: this);

  SizedBox get width => SizedBox(width: this);

  String money({bool showSymbol = true}) {
    return '${showSymbol ? '\u{20A6} ' : ''}${NumberFormat().format(this)}';
  }

  String formatCurrency() {
    return toStringAsFixed(0).replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (m) => '${m[1]},',
    );
  }
}

extension IntExtension on int {
  SizedBox get height => SizedBox(height: toDouble());

  SizedBox get width => SizedBox(width: toDouble());

  String money({bool showSymbol = true}) {
    return '${showSymbol ? '\u{20A6} ' : ''}${NumberFormat().format(this)}';
  }
}
