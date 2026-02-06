import 'package:json_annotation/json_annotation.dart';

import 'add_user_course_class_dto.dart';

part 'add_user_course_item_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class AddUserCourseItemDto {
  final int id;
  final List<AddUserCourseClassDto> classes;

  const AddUserCourseItemDto({required this.id, required this.classes});

  factory AddUserCourseItemDto.fromJson(Map<String, dynamic> json) =>
      _$AddUserCourseItemDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AddUserCourseItemDtoToJson(this);
}
