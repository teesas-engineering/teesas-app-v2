// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_otp_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendOtpResponseDto _$SendOtpResponseDtoFromJson(Map<String, dynamic> json) =>
    SendOtpResponseDto(
      OTP: (json['OTP'] as num).toInt(),
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$SendOtpResponseDtoToJson(SendOtpResponseDto instance) =>
    <String, dynamic>{'OTP': instance.OTP, 'phone': instance.phone};
