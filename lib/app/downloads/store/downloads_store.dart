import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../data/model/downloaded_video.dart';

part 'downloads_store.g.dart';

@injectable
class DownloadsStore = _DownloadsStore with _$DownloadsStore;

abstract class _DownloadsStore with Store {
  @observable
  String searchQuery = '';

  @observable
  ObservableList<DownloadedVideo> allVideos = ObservableList.of([
    // Mock Data based on screenshot
    const DownloadedVideo(
      id: '1',
      title: 'Alphabets',
      subject: 'English',
      duration: '11:10',
      progress: 0.75,
      isCompleted: false,
      thumbnail: AppAssets.videoImage, // Using generic placeholder
      category: 'Primary',
      subCategory: 'Grade 1',
    ),
    const DownloadedVideo(
      id: '2',
      title: 'Organism',
      subject: 'Sciences',
      duration: '11:10',
      progress: 1.0,
      isCompleted: true,
      thumbnail: AppAssets.videoImage,
      category: 'Primary',
      subCategory: 'Grade 1',
    ),
    const DownloadedVideo(
      id: '3',
      title: 'Numbers 21 - 50',
      subject: 'Mathematics',
      duration: '11:10',
      progress: 0.75,
      isCompleted: false,
      thumbnail: AppAssets.videoImage, // Need real looking photo if possible
      category: 'Primary',
      subCategory: 'Grade 1',
    ),
    const DownloadedVideo(
      id: '4',
      title: 'Numbers 21 - 50',
      subject: 'Mathematics',
      duration: '11:10',
      progress: 0.75,
      isCompleted: false,
      thumbnail: AppAssets.videoImage,
      category: 'Primary',
      subCategory: 'Grade 1',
    ),
     const DownloadedVideo(
      id: '5',
      title: 'Alphabets',
      subject: 'English',
      duration: '11:10',
      progress: 0.75,
      isCompleted: false,
      thumbnail: AppAssets.videoImage,
      category: 'Leader In Me',
      subCategory: '7 Habits of a Parent',
    ),
     const DownloadedVideo(
      id: '6',
      title: 'Numbers 21 - 50',
      subject: 'Mathematics',
      duration: '11:10',
      progress: 0.75,
      isCompleted: false,
      thumbnail: AppAssets.videoImage,
      category: 'Leader In Me',
      subCategory: '7 Habits of a Parent',
    ),
  ]);

  @action
  void setSearchQuery(String query) {
    searchQuery = query;
  }

  @computed
  List<DownloadedVideo> get filteredVideos {
    if (searchQuery.isEmpty) return allVideos;
    return allVideos
        .where((video) =>
            video.title.toLowerCase().contains(searchQuery.toLowerCase()) ||
            video.subject.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();
  }

  @computed
  Map<String, Map<String, List<DownloadedVideo>>> get groupedVideos {
    final Map<String, Map<String, List<DownloadedVideo>>> grouped = {};

    for (var video in filteredVideos) {
      if (!grouped.containsKey(video.category)) {
        grouped[video.category] = {};
      }
      if (!grouped[video.category]!.containsKey(video.subCategory)) {
        grouped[video.category]![video.subCategory] = [];
      }
      grouped[video.category]![video.subCategory]!.add(video);
    }
    return grouped;
  }
}
