import 'package:flutter/material.dart';

import '../../../common/extensions/num_extension.dart';
class BaseModalParent extends StatelessWidget {
  const BaseModalParent({super.key,required this.child,this.title,this.showBack=true});
  final String? title;

  final bool showBack;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          10.height,
          child
        ],
      ),
    );
  }
}
