import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../../../../common/extensions/num_extension.dart';
import '../../../_shared/components/page_padding.dart';
import '../../../_shared/stores/tab_store/index_store.dart';
import '../../../_shared/widgets/app_tab_bar.dart';
import 'favorite_search_box.dart';
import 'questions_tab.dart';
import 'videos_tab.dart';

class FavoriteScreenContent extends StatelessWidget {
  const FavoriteScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    final tabStore = Provider.of<IndexStore>(context);

    return Column(
      children: [
        SizedBox(
          height: MediaQuery.paddingOf(context).top + kToolbarHeight,
        ),
        Observer(
          builder: (_) {
            return AppTabBar(
              onTap: tabStore.setIndex,
              tabs: const ['Videos', 'Questions'],
            );
          },
        ),
        PagePadding(
          child: Column(
            children: [
              16.height,
              const FavoriteSearchBox(),
              16.height,
            ],
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
        24.height
      ],
    );
  }
}
