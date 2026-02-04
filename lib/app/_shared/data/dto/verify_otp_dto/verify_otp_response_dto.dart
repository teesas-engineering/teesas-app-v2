import 'package:json_annotation/json_annotation.dart';
import '../user_dto/user_dto.dart';

part 'verify_otp_response_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class VerifyOtpResponseDto {
  const VerifyOtpResponseDto({required this.user, required this.token});

  factory VerifyOtpResponseDto.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpResponseDtoFromJson(json);
  @JsonKey(fromJson: _userFromJson, toJson: _userToJson)
  final UserDto user;
  final String token;

  Map<String, dynamic> toJson() => _$VerifyOtpResponseDtoToJson(this);
}

UserDto _userFromJson(Map<String, dynamic> json) => UserDto.fromJson(json);

Map<String, dynamic> _userToJson(UserDto user) => user.toJson();
