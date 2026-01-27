import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/components/page_padding.dart';

class RecommendedVideos extends StatelessWidget {
  const RecommendedVideos({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PagePadding(child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recommended Videos',
              style: AppTypography.titleMedium.copyWith(
                color: AppColors.textTertiary,
              ),
            ),
            InkWell(
              onTap: (){},
              child:  Text(
                'View More',
                style: AppTypography.bodySmall.copyWith(
                  color: AppColors.textBrand,
                ),
              ),
            )
          ],
        )),
        8.height,
        SizedBox(
          height: 180,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            itemCount: 5,
            separatorBuilder: (context, index) => 12.width,
            itemBuilder: (context, index) {
              return SizedBox(
                width: 140,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        AppAssets.thumbnailSample,
                        width: 160,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                    8.height,
                    Text(
                      index == 0
                          ? 'Introduction to Calculus'
                          : index == 1
                          ? 'How to speak good English in Public'
                          : 'Video Title ${index + 1}',
                      style: AppTypography.bodySmall.copyWith(
                        color: AppColors.textSecondary,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
