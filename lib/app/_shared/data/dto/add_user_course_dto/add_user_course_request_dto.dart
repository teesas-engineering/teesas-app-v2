import 'package:json_annotation/json_annotation.dart';

import 'add_user_course_item_dto.dart';

part 'add_user_course_request_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class AddUserCourseRequestDto {
  final List<AddUserCourseItemDto> courses;

  const AddUserCourseRequestDto({required this.courses});

  factory AddUserCourseRequestDto.fromJson(Map<String, dynamic> json) =>
      _$AddUserCourseRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AddUserCourseRequestDtoToJson(this);
}
