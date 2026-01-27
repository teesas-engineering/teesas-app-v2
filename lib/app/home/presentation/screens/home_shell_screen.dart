import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../../../../common/style_guide/colors.dart';
import '../stores/home_store.dart';
import '../widgets/home_navigation_bar.dart';

import 'more_tab.dart';

class HomeShellScreen extends StatelessWidget {
  const HomeShellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<HomeStore>(
      create: (_) => HomeStore(),
      dispose: (_, store) => store.dispose(),
      child: const _HomeContent(),
    );
  }
}

class _HomeContent extends StatelessWidget {
  const _HomeContent();

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<HomeStore>(context);

    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.bgPrimary,
      body: Observer(
        builder: (_) {
          return IndexedStack(
            index: store.currentIndex,
            children: const [
              // Placeholder contents for now
              Center(child: Text('Home Tab')),
              Center(child: Text('Favourites Tab')),
              Center(child: Text('Live Class Tab')),
              Center(child: Text('Leaderboard Tab')),
              MoreTab(),
            ],
          );
        },
      ),
      bottomNavigationBar: Observer(
        builder: (_) {
          return HomeNavigationBar(
            currentIndex: store.currentIndex,
            onIndexChanged: store.setIndex,
          );
        },
      ),
    );
  }
}
