import 'package:flutter/material.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/components/page_padding.dart';
import '../../data/dto/video_data.dart';
import 'favorite_video_card.dart';

class VideosTab extends StatelessWidget {
  const VideosTab({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data
    const sections = [
      VideoData(
        title: 'Alphabets',
        subject: 'English',
        thumbnail: AppAssets.thumbnailSample,
        duration: '11:10',
      ),
      VideoData(
        title: 'Organism',
        subject: 'Sciences',
        thumbnail: AppAssets.thumbnailSample,
        duration: '11:10',
      ),
      VideoData(
        title: 'Numbers 21 - 50',
        subject: 'Mathematics',
        thumbnail: AppAssets.thumbnailSample,
        duration: '11:10',
      ),
      VideoData(
        title: 'Video Title 4',
        subject: 'English',
        thumbnail: AppAssets.thumbnailSample,
        duration: '11:10',
      ),
      VideoData(
        title: 'Video Title 5',
        subject: 'Sciences',
        thumbnail: AppAssets.thumbnailSample,
        duration: '11:10',
      ),
    ];

    return SingleChildScrollView(
      child: PagePadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...sections.map(
                  (item) => Padding(
                padding: EdgeInsets.only(
                  bottom: item == sections.last ? 0 : 12,
                ),
                child: FavoriteVideoCard(
                  title: item.title,
                  subject: item.subject,
                  thumbnail: item.thumbnail,
                  duration: item.duration,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
