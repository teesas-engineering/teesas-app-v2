import 'package:json_annotation/json_annotation.dart';

import 'course_class_dto.dart';

part 'course_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class ClassCategoryDto {

  const ClassCategoryDto({
    required this.id,
    required this.name,
    required this.categorizeByTerm,
    required this.classes,
  });

  factory ClassCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$ClassCategoryDtoFromJson(json);
  final int id;
  final String name;

  @JsonKey(name: 'categorize_by_term')
  final bool categorizeByTerm;

  final List<CourseClassDto> classes;

  Map<String, dynamic> toJson() => _$ClassCategoryDtoToJson(this);
}
