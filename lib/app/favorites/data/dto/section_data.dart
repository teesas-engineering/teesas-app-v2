import 'question_data.dart';
import 'video_data.dart';

class SectionData {
  const SectionData({
    required this.category,
    required this.title,
    this.items,
    this.questionItems,
  });

  final String category;
  final String title;
  final List<VideoData>? items;
  final List<QuestionData>? questionItems;
}
