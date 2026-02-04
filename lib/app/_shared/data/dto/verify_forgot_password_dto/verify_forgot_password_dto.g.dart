// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_forgot_password_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyForgotPasswordDto _$VerifyForgotPasswordDtoFromJson(
  Map<String, dynamic> json,
) => VerifyForgotPasswordDto(
  phone: json['phone'] as String,
  OTP: (json['OTP'] as num).toInt(),
);

Map<String, dynamic> _$VerifyForgotPasswordDtoToJson(
  VerifyForgotPasswordDto instance,
) => <String, dynamic>{'phone': instance.phone, 'OTP': instance.OTP};
