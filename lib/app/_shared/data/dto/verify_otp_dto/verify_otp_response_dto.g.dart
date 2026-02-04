// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpResponseDto _$VerifyOtpResponseDtoFromJson(
  Map<String, dynamic> json,
) => VerifyOtpResponseDto(
  user: _userFromJson(json['user'] as Map<String, dynamic>),
  token: json['token'] as String,
);

Map<String, dynamic> _$VerifyOtpResponseDtoToJson(
  VerifyOtpResponseDto instance,
) => <String, dynamic>{
  'user': _userToJson(instance.user),
  'token': instance.token,
};
