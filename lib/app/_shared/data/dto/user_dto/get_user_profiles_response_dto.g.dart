// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_profiles_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUserProfilesResponseDto _$GetUserProfilesResponseDtoFromJson(
  Map<String, dynamic> json,
) => GetUserProfilesResponseDto(
  user: (json['user'] as List<dynamic>)
      .map((e) => UserDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetUserProfilesResponseDtoToJson(
  GetUserProfilesResponseDto instance,
) => <String, dynamic>{'user': instance.user.map((e) => e.toJson()).toList()};
