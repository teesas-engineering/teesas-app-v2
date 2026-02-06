import 'package:json_annotation/json_annotation.dart';

part 'add_user_course_class_dto.g.dart';

@JsonSerializable()
class AddUserCourseClassDto {
  final int id;

  const AddUserCourseClassDto({required this.id});

  factory AddUserCourseClassDto.fromJson(Map<String, dynamic> json) =>
      _$AddUserCourseClassDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AddUserCourseClassDtoToJson(this);
}
