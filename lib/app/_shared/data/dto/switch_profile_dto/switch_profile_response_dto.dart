import 'package:json_annotation/json_annotation.dart';

import 'switch_profile_user_dto.dart';

part 'switch_profile_response_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class SwitchProfileResponseDto {
  final SwitchProfileUserDto user;
  final String token;

  const SwitchProfileResponseDto({
    required this.user,
    required this.token,
  });

  factory SwitchProfileResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SwitchProfileResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SwitchProfileResponseDtoToJson(this);
}
