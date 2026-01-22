import 'package:flutter/material.dart';

class BaseDialogParent extends StatelessWidget {

  const BaseDialogParent(
      {required this.child, super.key, this.height, this.verticalMargin,this.canPop=true});
  final double? height;
  final double? verticalMargin;
  final Widget child;
  final bool canPop;

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
