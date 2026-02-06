import 'package:json_annotation/json_annotation.dart';

part 'verify_forgot_password_dto.g.dart';

@JsonSerializable()
class VerifyForgotPasswordDto {
  final String phone;
  final int OTP;

  const VerifyForgotPasswordDto({required this.phone, required this.OTP});

  factory VerifyForgotPasswordDto.fromJson(Map<String, dynamic> json) =>
      _$VerifyForgotPasswordDtoFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyForgotPasswordDtoToJson(this);
}
