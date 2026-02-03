// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_class_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourseClassDto _$CourseClassDtoFromJson(Map<String, dynamic> json) =>
    CourseClassDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$CourseClassDtoToJson(CourseClassDto instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
