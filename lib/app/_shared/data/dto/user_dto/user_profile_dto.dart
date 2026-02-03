import 'package:json_annotation/json_annotation.dart';

import '../../../enum/gender.dart';


part 'user_profile_dto.g.dart';


@JsonSerializable()
class UserProfileDto {

  const UserProfileDto({
    required this.id,
    required this.name,
    required this.email,
    this.gender,
  });

  factory UserProfileDto.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDtoFromJson(json);
  final int id;
  final String name;
  final String email;

  @JsonKey(fromJson: genderFromJson, toJson: genderToJson)
  final Gender? gender;

  Map<String, dynamic> toJson() => _$UserProfileDtoToJson(this);
}
