// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourseDto _$CourseDtoFromJson(Map<String, dynamic> json) => CourseDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  categorizeByTerm: json['categorize_by_term'] as bool,
  classes: (json['classes'] as List<dynamic>)
      .map((e) => CourseClassDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CourseDtoToJson(CourseDto instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'categorize_by_term': instance.categorizeByTerm,
  'classes': instance.classes.map((e) => e.toJson()).toList(),
};
