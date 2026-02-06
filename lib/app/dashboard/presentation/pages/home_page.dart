import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../../router/main_router.dart';
import '../../../_shared/components/page_padding.dart';
import '../../../_shared/stores/tab_store/index_store.dart';
import '../component/continue_watching.dart';
import '../component/dashboard_app_bar.dart';
import '../component/home_card_option_card.dart';
import '../component/recommended_videos.dart';
import '../component/small_button.dart';
import '../component/subject_section.dart';
import '../component/subscription_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<IndexStore>(
      create: (_) => IndexStore(),
      child: const _HomePageContent(),
    );
  }
}

class _HomePageContent extends StatelessWidget {
  const _HomePageContent();

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<IndexStore>(context);
    final bannerSlides = [
      AppAssets.banner1,
      AppAssets.banner2,
      AppAssets.banner3,
    ];

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Scaffold(
          appBar: const DashboardAppBar(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                // Continue Lesson Section
                const ContinueWatching(),
                24.height,
                // Feature Cards
                PagePadding(
                  child: Row(
                    children: [
                      Expanded(
                        child: HomeCardOptionCard(
                          onclick: () {},
                          backgroundColor: AppColors.colorF5F9FB,
                          boarderColor: AppColors.color60A9FF,
                          asset: AppAssets.videoImage,
                          name: 'Video Tutorial',
                        ),
                      ),
                      16.width,
                      Expanded(
                        child: HomeCardOptionCard(
                          onclick: () {
                            context.push(MainRouter.assessmentRules);
                          },
                          backgroundColor: AppColors.colorFFF2E2,
                          boarderColor: AppColors.colorF5C78D,
                          asset: AppAssets.testImage,
                          name: 'Mock Practice',
                        ),
                      ),
                    ],
                  ),
                ),
                16.height,
                const SubscriptionComponent(),
                16.height,
                CarouselSlider(
                  options: CarouselOptions(
                    height: 132,
                    autoPlay: true,
                    viewportFraction: 1,
                    autoPlayInterval: const Duration(seconds: 2),
                    onPageChanged: (index, reason) {
                      store.setIndex(index);
                    },
                  ),
                  items: bannerSlides.map((e) {
                    return SizedBox(
                      width: double.infinity,

                      child: Image.asset(
                        e,
                        fit: BoxFit.cover,
                        height: 165,
                        width: double.infinity,
                      ),
                    );
                  }).toList(),
                ),
                8.height,
                Observer(
                  builder: (_) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(bannerSlides.length, (index) {
                        final isActive = index == store.currentIndex;
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.easeInOut,
                          margin: EdgeInsets.only(
                            right: index < bannerSlides.length - 1 ? 8 : 0,
                          ),
                          width: isActive ? 24 : 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: isActive
                                ? AppColors.colorFF9F1C
                                : AppColors.colorE4E4E4,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        );
                      }),
                    );
                  },
                ),
                24.height,
                const SubjectSection(),
                24.height,
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.white,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(AppAssets.shareIcon, width: 36, height: 36),
                      14.width,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Share the learning love! 🎓📚',
                              style: AppTypography.titleMedium.copyWith(
                                color: AppColors.textPrimary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            8.height,
                            Text(
                              'Invite your friends & family to join you on Teesas Education so you can learn, grow, and succeed together. Tap Share App to send it now.❤️',
                              style: AppTypography.bodySmall.copyWith(
                                color: AppColors.textSecondary,
                              ),
                            ),
                            12.height,
                            const SmallButton(
                              text: 'Share App',
                              onPressed: null,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                16.height,
                const RecommendedVideos(),
                48.height,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
