import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/components/page_padding.dart';
import '../../../_shared/stores/tab_store/index_store.dart';
import '../../../_shared/widgets/app_tab_bar.dart';
import '../components/favorite_search_box.dart';
import '../components/questions_tab.dart';
import '../components/videos_tab.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tabStore = Provider.of<IndexStore>(context);

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.white,
            centerTitle: true,
            title: Text(
              'Favourites',
              style: AppTypography.titleLarge.copyWith(
                fontSize: 20,
                color: AppColors.textSecondary,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(26),
              child: Observer(
                builder: (_) {
                  return AppTabBar(
                    onTap: tabStore.setIndex,
                    tabs: const ['Videos', 'Questions'],
                  );
                },
              ),
            ),
          ),
          body: Column(
            children: [
              PagePadding(
                child: Column(
                  children: [16.height, const FavoriteSearchBox(), 16.height],
                ),
              ),
              Expanded(
                child: Observer(
                  builder: (_) {
                    if (tabStore.currentIndex == 0) {
                      return const VideosTab();
                    } else {
                      return const QuestionsTab();
                    }
                  },
                ),
              ),
              24.height,
            ],
          ),
        ),
      ),
    );
  }
}
