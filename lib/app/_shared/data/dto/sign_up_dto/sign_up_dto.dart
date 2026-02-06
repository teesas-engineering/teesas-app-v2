import 'package:json_annotation/json_annotation.dart';

import '../../../enum/gender.dart';

part 'sign_up_dto.g.dart';

@JsonSerializable()
class SignUpDto {
  final String name;

  @JsonKey(name: 'user_type')
  final String userType;

  final String phone;

  @JsonKey(name: 'country_id')
  final int countryId;

  @JsonKey(name: 'date_of_birth')
  final String dateOfBirth;

  @JsonKey(fromJson: genderFromJson, toJson: genderToJson)
  final Gender? gender;

  final String email;
  final String password;

  @JsonKey(name: 'deviceId')
  final String? deviceId;

  final String? parentName;

  @JsonKey(name: 'parentPhoneNumber')
  final String? parentPhoneNumber;

  const SignUpDto({
    required this.name,
    this.userType = 'USER',
    required this.phone,
    required this.countryId,
    required this.dateOfBirth,
    this.gender,
    required this.email,
    required this.password,
    this.deviceId,
    this.parentName,
    this.parentPhoneNumber,
  });

  factory SignUpDto.fromJson(Map<String, dynamic> json) =>
      _$SignUpDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpDtoToJson(this);
}

