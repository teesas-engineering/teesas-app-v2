// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_user_course_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddUserCourseRequestDto _$AddUserCourseRequestDtoFromJson(
  Map<String, dynamic> json,
) => AddUserCourseRequestDto(
  courses: (json['courses'] as List<dynamic>)
      .map((e) => AddUserCourseItemDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AddUserCourseRequestDtoToJson(
  AddUserCourseRequestDto instance,
) => <String, dynamic>{
  'courses': instance.courses.map((e) => e.toJson()).toList(),
};
