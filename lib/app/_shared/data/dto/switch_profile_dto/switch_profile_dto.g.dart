// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'switch_profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SwitchProfileDto _$SwitchProfileDtoFromJson(Map<String, dynamic> json) =>
    SwitchProfileDto(
      profileId: (json['profile_id'] as num).toInt(),
      deviceId: json['device_id'] as String,
    );

Map<String, dynamic> _$SwitchProfileDtoToJson(SwitchProfileDto instance) =>
    <String, dynamic>{
      'profile_id': instance.profileId,
      'device_id': instance.deviceId,
    };
