import 'package:json_annotation/json_annotation.dart';

part 'forgot_password_dto.g.dart';

@JsonSerializable()
class ForgotPasswordDto {

  const ForgotPasswordDto({required this.phone});

  factory ForgotPasswordDto.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordDtoFromJson(json);
  final String phone;

  Map<String, dynamic> toJson() => _$ForgotPasswordDtoToJson(this);
}
