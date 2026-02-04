// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_account_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddAccountItemDto _$AddAccountItemDtoFromJson(Map<String, dynamic> json) =>
    AddAccountItemDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      countryId: (json['country_id'] as num).toInt(),
      dateOfBirth: json['date_of_birth'] as String,
      gender: json['gender'] as String,
      courses: (json['courses'] as List<dynamic>)
          .map((e) => AddAccountCourseDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AddAccountItemDtoToJson(AddAccountItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country_id': instance.countryId,
      'date_of_birth': instance.dateOfBirth,
      'gender': instance.gender,
      'courses': instance.courses.map((e) => e.toJson()).toList(),
    };
