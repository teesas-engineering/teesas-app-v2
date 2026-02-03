import 'package:json_annotation/json_annotation.dart';

part 'user_course_dto.g.dart';

@JsonSerializable()
class UserCourseDto {
  final int id;

  @JsonKey(name: 'created_at')
  final String createdAt;

  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @JsonKey(name: 'user_id')
  final int userId;

  @JsonKey(name: 'course_id')
  final int courseId;

  const UserCourseDto({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.userId,
    required this.courseId,
  });

  factory UserCourseDto.fromJson(Map<String, dynamic> json) =>
      _$UserCourseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserCourseDtoToJson(this);
}
