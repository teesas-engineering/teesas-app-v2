// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_account_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddAccountItemDto _$AddAccountItemDtoFromJson(Map<String, dynamic> json) =>
    _AddAccountItemDto(
      name: json['name'] as String,
      countryId: (json['country_id'] as num).toInt(),
      dateOfBirth: json['date_of_birth'] as String,
      courses: (json['courses'] as List<dynamic>)
          .map((e) => AddAccountCourseDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      gender: genderFromJson(json['gender']),
    );

Map<String, dynamic> _$AddAccountItemDtoToJson(_AddAccountItemDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'country_id': instance.countryId,
      'date_of_birth': instance.dateOfBirth,
      'courses': instance.courses,
      'gender': genderToJson(instance.gender),
    };
