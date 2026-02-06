import 'package:json_annotation/json_annotation.dart';

part 'send_otp_dto.g.dart';

@JsonSerializable()
class SendOtpDto {

  const SendOtpDto({this.email, this.phone});

  factory SendOtpDto.fromJson(Map<String, dynamic> json) =>
      _$SendOtpDtoFromJson(json);
  final String? email;
  final String? phone;

  Map<String, dynamic> toJson() => _$SendOtpDtoToJson(this);
}
