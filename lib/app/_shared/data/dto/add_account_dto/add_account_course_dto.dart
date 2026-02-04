import 'package:json_annotation/json_annotation.dart';

import 'add_account_class_dto.dart';

part 'add_account_course_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class AddAccountCourseDto {
  final int id;
  final List<AddAccountClassDto> classes;

  const AddAccountCourseDto({required this.id, required this.classes});

  factory AddAccountCourseDto.fromJson(Map<String, dynamic> json) =>
      _$AddAccountCourseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AddAccountCourseDtoToJson(this);
}
