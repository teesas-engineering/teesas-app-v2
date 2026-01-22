import 'package:flutter/material.dart';

import '../../../common/theme/app_theme.dart';

class BaseDialogParent extends StatelessWidget {
  final double? height;
  final double? verticalMargin;
  final Widget child;
  final bool canPop;

  const BaseDialogParent(
      {super.key, this.height, this.verticalMargin, required this.child,this.canPop=true});

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: canPop,
        child: Container(
          height: height,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
          ),
          constraints:  BoxConstraints(
            maxHeight: height??600,
          ),
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: child,
        ));
  }
}
