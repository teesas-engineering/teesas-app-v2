// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_account_course_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddAccountCourseDto _$AddAccountCourseDtoFromJson(Map<String, dynamic> json) =>
    AddAccountCourseDto(
      id: (json['id'] as num).toInt(),
      classes: (json['classes'] as List<dynamic>)
          .map((e) => AddAccountClassDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AddAccountCourseDtoToJson(
  AddAccountCourseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'classes': instance.classes.map((e) => e.toJson()).toList(),
};
