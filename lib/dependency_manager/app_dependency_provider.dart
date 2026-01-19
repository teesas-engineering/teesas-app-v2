import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class AppDependencyProvider extends StatelessWidget {
  const AppDependencyProvider({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return child;
    return MultiProvider(
      providers: [
      ],
      child: child,
    );
  }
}
