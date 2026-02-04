// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_user_course_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddUserCourseItemDto _$AddUserCourseItemDtoFromJson(
  Map<String, dynamic> json,
) => AddUserCourseItemDto(
  id: (json['id'] as num).toInt(),
  classes: (json['classes'] as List<dynamic>)
      .map((e) => AddUserCourseClassDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AddUserCourseItemDtoToJson(
  AddUserCourseItemDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'classes': instance.classes.map((e) => e.toJson()).toList(),
};
