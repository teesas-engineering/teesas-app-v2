import 'package:json_annotation/json_annotation.dart';

part 'login_dto.g.dart';

@JsonSerializable()
class LoginDto {
  final String emailOrPhone;
  final String password;

  @JsonKey(name: 'country_id')
  final int countryId;

  LoginDto({
    required this.emailOrPhone,
    required this.password,
    this.countryId = 1,
  });

  factory LoginDto.fromJson(Map<String, dynamic> json) =>
      _$LoginDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LoginDtoToJson(this);
}

