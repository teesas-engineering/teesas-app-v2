// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_courses_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCoursesDataDto _$GetCoursesDataDtoFromJson(Map<String, dynamic> json) =>
    GetCoursesDataDto(
      courses: (json['courses'] as List<dynamic>)
          .map((e) => ClassCategoryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetCoursesDataDtoToJson(GetCoursesDataDto instance) =>
    <String, dynamic>{
      'courses': instance.courses.map((e) => e.toJson()).toList(),
    };
