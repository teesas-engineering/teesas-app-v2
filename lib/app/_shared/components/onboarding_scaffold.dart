import 'package:flutter/material.dart';

class OnboardingScaffold extends StatelessWidget {
  const OnboardingScaffold({required this.title,this.description,super.key});

  final String title;
  final String? description;
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
