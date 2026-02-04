// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'switch_profile_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SwitchProfileResponseDto _$SwitchProfileResponseDtoFromJson(
  Map<String, dynamic> json,
) => SwitchProfileResponseDto(
  user: SwitchProfileUserDto.fromJson(json['user'] as Map<String, dynamic>),
  token: json['token'] as String,
);

Map<String, dynamic> _$SwitchProfileResponseDtoToJson(
  SwitchProfileResponseDto instance,
) => <String, dynamic>{'user': instance.user.toJson(), 'token': instance.token};
