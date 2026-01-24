import 'package:flutter/material.dart';

import '../../../../common/style_guide/colors.dart';

class FooterParent extends StatelessWidget {
  const FooterParent({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ).copyWith(top: 8, bottom: 24),
      child: child,
    );
  }
}
