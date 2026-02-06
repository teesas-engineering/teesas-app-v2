import 'package:json_annotation/json_annotation.dart';
import 'user_class_dto.dart';

part 'user_course_dto.g.dart';

@JsonSerializable()
class UserCourseDto {
  const UserCourseDto({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.userId,
    this.courseId,
    this.userClasses,
  });

  factory UserCourseDto.fromJson(Map<String, dynamic> json) =>
      _$UserCourseDtoFromJson(json);

  final int? id;

  @JsonKey(name: 'created_at')
  final String? createdAt;

  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @JsonKey(name: 'user_id')
  final int? userId;

  @JsonKey(name: 'course_id')
  final int? courseId;

  @JsonKey(name: 'user_classes')
  final List<UserClassDto>? userClasses;

  Map<String, dynamic> toJson() => _$UserCourseDtoToJson(this);
}
