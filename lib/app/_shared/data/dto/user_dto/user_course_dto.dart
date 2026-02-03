import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_course_dto.freezed.dart';
part 'user_course_dto.g.dart';

@freezed
abstract class UserCourseDto with _$UserCourseDto {
  const factory UserCourseDto({
    required int id,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'course_id') required int courseId,
  }) = _UserCourseDto;

  factory UserCourseDto.fromJson(Map<String, dynamic> json) =>
      _$UserCourseDtoFromJson(json);
}
