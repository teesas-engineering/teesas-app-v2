// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpDto _$VerifyOtpDtoFromJson(Map<String, dynamic> json) => VerifyOtpDto(
  OTP: (json['OTP'] as num).toInt(),
  email: json['email'] as String?,
  phone: json['phone'] as String?,
);

Map<String, dynamic> _$VerifyOtpDtoToJson(VerifyOtpDto instance) =>
    <String, dynamic>{
      'OTP': instance.OTP,
      'email': instance.email,
      'phone': instance.phone,
    };
