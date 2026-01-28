import 'package:flutter/material.dart';
import 'app/dashboard/presentation/screens/dashboard_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DashboardScreen();
  }
}
