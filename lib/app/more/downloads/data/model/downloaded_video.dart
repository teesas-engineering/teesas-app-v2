class DownloadedVideo {
  const DownloadedVideo({
    required this.id,
    required this.title,
    required this.subject,
    required this.duration,
    required this.progress,
    required this.isCompleted,
    required this.thumbnail,
    required this.category,
    required this.subCategory,
  });

  final String id;
  final String title;
  final String subject;
  final String duration;
  final double progress;
  final bool isCompleted;
  final String thumbnail;
  final String category;
  final String subCategory;
}
