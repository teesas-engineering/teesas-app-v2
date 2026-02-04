import 'package:json_annotation/json_annotation.dart';

part 'switch_profile_user_dto.g.dart';

@JsonSerializable()
class SwitchProfileUserDto {
  final int id;
  final String? name;
  final String? email;
  final String? phone;

  const SwitchProfileUserDto({
    required this.id,
    this.name,
    this.email,
    this.phone,
  });

  factory SwitchProfileUserDto.fromJson(Map<String, dynamic> json) =>
      _$SwitchProfileUserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SwitchProfileUserDtoToJson(this);
}
