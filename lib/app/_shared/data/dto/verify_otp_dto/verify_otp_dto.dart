import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_dto.g.dart';

@JsonSerializable()
class VerifyOtpDto {
  final int OTP;
  final String? email;
  final String? phone;

  const VerifyOtpDto({required this.OTP, this.email, this.phone});

  factory VerifyOtpDto.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpDtoFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyOtpDtoToJson(this);
}
