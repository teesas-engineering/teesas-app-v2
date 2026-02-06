import 'package:json_annotation/json_annotation.dart';

part 'send_otp_response_dto.g.dart';

@JsonSerializable()
class SendOtpResponseDto {
  final int OTP;
  final String? phone;

  const SendOtpResponseDto({required this.OTP, this.phone});

  factory SendOtpResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SendOtpResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SendOtpResponseDtoToJson(this);
}
