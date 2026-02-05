import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../common/dimens/app_dimens.dart';
import '../../../../../common/extensions/num_extension.dart';
import '../../../../../common/style_guide/colors.dart';
import '../../../../../common/style_guide/style_guide.dart';
import '../../../../_shared/widgets/app_back_header.dart';
import '../../../../_shared/widgets/app_card.dart';
import '../../../../_shared/widgets/app_input_field.dart';

import '../../store/downloads_store.dart';
import '../widgets/downloaded_video_card.dart';

class DownloadedVideosScreen extends StatefulWidget {
  const DownloadedVideosScreen({super.key});

  @override
  State<DownloadedVideosScreen> createState() => _DownloadedVideosScreenState();
}

class _DownloadedVideosScreenState extends State<DownloadedVideosScreen> {
  final DownloadsStore _store = DownloadsStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgPrimary,
      appBar: const AppBackHeader(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: Dimens.pagePadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    24.height,
                    Center(
                      child: Text(
                        'Downloaded Video',
                        style: AppTypography.displaySmall.copyWith(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ),
                    24.height,
                    Row(
                      children: [
                        Expanded(
                          child: AppInputField(
                            hintText: 'Search',
                            prefixIcon: Icon(
                              Icons.search,
                              color: AppColors.textTertiary,
                              size: 20.w,
                            ),
                            onChanged: _store.setSearchQuery,
                            borderRadius: BorderRadius.circular(8.r),
                            backgroundColor: const Color(0xFFF9FAFB),
                            borderColor: AppColors.colorE2E8F0,
                            padding: EdgeInsets.symmetric(
                              horizontal: 12.w,
                              vertical: 12.h,
                            ),
                          ),
                        ),
                        12.width,
                        Container(
                          padding: EdgeInsets.all(12.w),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(color: AppColors.colorE2E8F0),
                          ),
                          child: SvgPicture.asset(
                            AppAssets.icFilter,
                            width: 16.w,
                            height: 16.w,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: AppColors.colorC7C7C7,
                      thickness: 1.h,
                      height: 32.h,
                    ),
                    Observer(
                      builder: (_) {
                        if (_store.groupedVideos.isEmpty) {
                          return Center(
                            child: Padding(
                              padding: EdgeInsets.only(top: 40.h),
                              child: const Text(
                                'No videos found',
                                style: AppTypography.bodyMedium,
                              ),
                            ),
                          );
                        }
                        return Column(
                          children: _store.groupedVideos.entries.map((
                            categoryEntry,
                          ) {
                            final category = categoryEntry.key;
                            final subCategories = categoryEntry.value;

                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppCard.secondary(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8.w,
                                    vertical: 4.h,
                                  ),
                                  child: Text(
                                    category,
                                    style: AppTypography.labelSmall.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10.sp,
                                      color: AppColors.color51666F,
                                    ),
                                  ),
                                ),
                                8.height,
                                ...subCategories.entries.map((subEntry) {
                                  final subCategory =
                                      subEntry.key; // e.g., Grade 1
                                  final videos = subEntry.value;

                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        subCategory,
                                        style: AppTypography.titleLarge
                                            .copyWith(
                                              fontSize: 20.sp,
                                              color: AppColors.textTertiary,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      12.height,
                                      ListView.separated(
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: videos.length,
                                        separatorBuilder: (_, _) => 16.height,
                                        itemBuilder: (context, index) {
                                          return DownloadedVideoCard(
                                            video: videos[index],
                                          );
                                        },
                                      ),
                                      40.height,
                                    ],
                                  );
                                }),
                              ],
                            );
                          }).toList(),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
