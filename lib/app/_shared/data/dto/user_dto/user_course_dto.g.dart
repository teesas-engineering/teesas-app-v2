// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_course_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserCourseDto _$UserCourseDtoFromJson(Map<String, dynamic> json) =>
    _UserCourseDto(
      id: (json['id'] as num).toInt(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      userId: (json['user_id'] as num).toInt(),
      courseId: (json['course_id'] as num).toInt(),
    );

Map<String, dynamic> _$UserCourseDtoToJson(_UserCourseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'user_id': instance.userId,
      'course_id': instance.courseId,
    };
