import 'package:json_annotation/json_annotation.dart';

import 'course_class_dto.dart';

part 'course_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class CourseDto {
  final int id;
  final String name;

  @JsonKey(name: 'categorize_by_term')
  final bool categorizeByTerm;

  final List<CourseClassDto> classes;

  const CourseDto({
    required this.id,
    required this.name,
    required this.categorizeByTerm,
    required this.classes,
  });

  factory CourseDto.fromJson(Map<String, dynamic> json) =>
      _$CourseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CourseDtoToJson(this);
}
