import 'package:json_annotation/json_annotation.dart';

import 'course_dto.dart';

part 'get_courses_data_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class GetCoursesDataDto {
  final List<CourseDto> courses;

  const GetCoursesDataDto({required this.courses});

  factory GetCoursesDataDto.fromJson(Map<String, dynamic> json) =>
      _$GetCoursesDataDtoFromJson(json);

  Map<String, dynamic> toJson() => _$GetCoursesDataDtoToJson(this);
}
