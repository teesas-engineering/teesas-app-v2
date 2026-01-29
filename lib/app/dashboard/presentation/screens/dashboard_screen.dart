import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../../../_shared/stores/dashboard_store/dashboard_store.dart';
import '../component/custom_bottom_navigation.dart';
import '../pages/favorites_page.dart';
import '../pages/home_page.dart';
import '../pages/leader_board_page.dart';
import '../pages/live_class_page.dart';
import '../pages/more_page.dart';

class DashboardScreen extends StatelessWidget {
   DashboardScreen({super.key});

  List<Widget> pages =  const [
    HomePage(),
    FavoritePage(),
    LiveClassPage(),
    LeaderBorderPage(),
    MorePage(),
  ];
  @override
  Widget build(BuildContext context) {
    final store = context.read<DashboardStore>();
    return Scaffold(
      bottomNavigationBar: const SafeArea(
        top: false,
        child: CustomBottomNavigation(),
      ),
      body: Observer(
        builder: (_) {
          return IndexedStack(
            index: store.currentIndex,
            children: pages,
          );
        },
      ),
    );
  }
}
