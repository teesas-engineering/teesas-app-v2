// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'switch_profile_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SwitchProfileUserDto _$SwitchProfileUserDtoFromJson(
  Map<String, dynamic> json,
) => SwitchProfileUserDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String?,
  email: json['email'] as String?,
  phone: json['phone'] as String?,
);

Map<String, dynamic> _$SwitchProfileUserDtoToJson(
  SwitchProfileUserDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
};
