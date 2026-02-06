import 'package:json_annotation/json_annotation.dart';

part 'course_class_dto.g.dart';

@JsonSerializable()
class CourseClassDto {
  final int id;
  final String name;

  const CourseClassDto({required this.id, required this.name});

  factory CourseClassDto.fromJson(Map<String, dynamic> json) =>
      _$CourseClassDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CourseClassDtoToJson(this);
}
