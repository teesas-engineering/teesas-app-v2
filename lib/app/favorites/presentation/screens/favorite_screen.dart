import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/components/page_padding.dart';
import '../../../_shared/stores/tab_store/index_store.dart';
import '../../../_shared/widgets/app_bar.dart';
import '../../../_shared/widgets/app_tab_bar.dart';
import '../components/favorite_search_box.dart';
import '../components/favorite_section.dart';
import '../components/favorite_video_card.dart';
import '../components/favorite_question_card.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<IndexStore>(
      create: (_) => IndexStore(),
      child: const _FavoriteScreenContent(),
    );
  }
}

class _FavoriteScreenContent extends StatelessWidget {
  const _FavoriteScreenContent();

  @override
  Widget build(BuildContext context) {
    final tabStore = Provider.of<IndexStore>(context);
    return Scaffold(
      backgroundColor: AppColors.bgPrimary,
      appBar: AppAppBar(
        title: 'Favourites',
        centerTitle: true,
        bottom: AppTabBar(
          onTap: tabStore.setIndex,
          tabs: const ['Videos', 'Questions'],
        ),
      ),
      body: Column(
        children: [
          // Title
          PagePadding(
            child: Column(
              children: [16.height, const FavoriteSearchBox(), 16.height],
            ),
          ),
          // Content
          Expanded(
            child: Observer(
              builder: (_) {
                if (tabStore.currentIndex == 0) {
                  return const _VideosTab();
                } else {
                  return const _QuestionsTab();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _VideosTab extends StatelessWidget {
  const _VideosTab();

  @override
  Widget build(BuildContext context) {
    // Dummy data
    final sections = [
      _SectionData(
        category: 'Primary',
        title: 'Grade 1',
        items: [
          _VideoData(
            title: 'Alphabets',
            subject: 'English',
            thumbnail: AppAssets.thumbnailSample,
            duration: '11:10',
          ),
          _VideoData(
            title: 'Organism',
            subject: 'Sciences',
            thumbnail: AppAssets.thumbnailSample,
            duration: '11:10',
          ),
          _VideoData(
            title: 'Numbers 21 - 50',
            subject: 'Mathematics',
            thumbnail: AppAssets.thumbnailSample,
            duration: '11:10',
          ),
          _VideoData(
            title: 'Video Title 4',
            subject: 'English',
            thumbnail: AppAssets.thumbnailSample,
            duration: '11:10',
          ),
          _VideoData(
            title: 'Video Title 5',
            subject: 'Sciences',
            thumbnail: AppAssets.thumbnailSample,
            duration: '11:10',
          ),
        ],
      ),
      _SectionData(
        category: 'Leader In Me',
        title: '7 Habits of a Parent',
        items: [
          _VideoData(
            title: 'Video Title 6',
            subject: 'Mathematics',
            thumbnail: AppAssets.thumbnailSample,
            duration: '11:10',
          ),
          _VideoData(
            title: 'Video Title 7',
            subject: 'English',
            thumbnail: AppAssets.thumbnailSample,
            duration: '11:10',
          ),
          _VideoData(
            title: 'Video Title 8',
            subject: 'Sciences',
            thumbnail: AppAssets.thumbnailSample,
            duration: '11:10',
          ),
        ],
      ),
    ];

    return SingleChildScrollView(
      child: PagePadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...sections.map(
              (section) => Padding(
                padding: EdgeInsets.only(
                  bottom: section == sections.last ? 24 : 24,
                ),
                child: FavoriteSection(
                  category: section.category,
                  title: section.title,
                  child: Column(
                    children: [
                      ...section.items?.map(
                            (item) => Padding(
                              padding: EdgeInsets.only(
                                bottom: item == section.items?.last ? 0 : 12,
                              ),
                              child: FavoriteVideoCard(
                                title: item.title,
                                subject: item.subject,
                                thumbnail: item.thumbnail,
                                duration: item.duration,
                              ),
                            ),
                          ) ??
                          [],
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _QuestionsTab extends StatelessWidget {
  const _QuestionsTab();

  @override
  Widget build(BuildContext context) {
    // Dummy data
    final sections = [
      _SectionData(
        category: 'Primary',
        title: 'Grade 1',
        questionItems: [
          _QuestionData(
            title: 'English Assessment Question 2',
            subject: 'English',
          ),
          _QuestionData(
            title: 'English Assessment Question 3',
            subject: 'English',
          ),
          _QuestionData(
            title: 'English Assessment Question 4',
            subject: 'English',
          ),
          _QuestionData(
            title: 'English Assessment Question 5',
            subject: 'English',
          ),
          _QuestionData(
            title: 'English Assessment Question 6',
            subject: 'English',
          ),
        ],
      ),
      _SectionData(
        category: 'Leader In Me',
        title: '7 Habits of a Parent',
        questionItems: [
          _QuestionData(
            title: 'Mathematics Assessment Question 1',
            subject: 'Mathematics',
          ),
          _QuestionData(
            title: 'Mathematics Assessment Question 2',
            subject: 'Mathematics',
          ),
          _QuestionData(
            title: 'Mathematics Assessment Question 3',
            subject: 'Mathematics',
          ),
        ],
      ),
    ];

    return SingleChildScrollView(
      child: PagePadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...sections.map(
              (section) => Padding(
                padding: EdgeInsets.only(
                  bottom: section == sections.last ? 24 : 24,
                ),
                child: FavoriteSection(
                  category: section.category,
                  title: section.title,
                  child: Column(
                    children: [
                      ...section.questionItems!.map(
                        (item) => Padding(
                          padding: EdgeInsets.only(
                            bottom: item == section.questionItems!.last
                                ? 0
                                : 12,
                          ),
                          child: FavoriteQuestionCard(
                            title: item.title,
                            subject: item.subject,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionData {
  const _SectionData({
    required this.category,
    required this.title,
    this.items,
    this.questionItems,
  });

  final String category;
  final String title;
  final List<_VideoData>? items;
  final List<_QuestionData>? questionItems;
}

class _VideoData {
  const _VideoData({
    required this.title,
    required this.subject,
    required this.thumbnail,
    required this.duration,
  });

  final String title;
  final String subject;
  final String thumbnail;
  final String duration;
}

class _QuestionData {
  const _QuestionData({required this.title, required this.subject});

  final String title;
  final String subject;
}
