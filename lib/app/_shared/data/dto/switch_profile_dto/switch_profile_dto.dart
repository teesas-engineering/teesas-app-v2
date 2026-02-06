import 'package:json_annotation/json_annotation.dart';

part 'switch_profile_dto.g.dart';

@JsonSerializable()
class SwitchProfileDto {
  @JsonKey(name: 'profile_id')
  final int profileId;

  @JsonKey(name: 'device_id')
  final String deviceId;

  const SwitchProfileDto({
    required this.profileId,
    required this.deviceId,
  });

  factory SwitchProfileDto.fromJson(Map<String, dynamic> json) =>
      _$SwitchProfileDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SwitchProfileDtoToJson(this);
}
