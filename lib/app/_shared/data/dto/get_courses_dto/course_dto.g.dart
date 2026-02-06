// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassCategoryDto _$ClassCategoryDtoFromJson(Map<String, dynamic> json) =>
    ClassCategoryDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      categorizeByTerm: json['categorize_by_term'] as bool,
      classes: (json['classes'] as List<dynamic>)
          .map((e) => CourseClassDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ClassCategoryDtoToJson(ClassCategoryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'categorize_by_term': instance.categorizeByTerm,
      'classes': instance.classes.map((e) => e.toJson()).toList(),
    };
