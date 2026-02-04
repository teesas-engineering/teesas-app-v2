import 'package:json_annotation/json_annotation.dart';

part 'update_password_dto.g.dart';

@JsonSerializable()
class UpdatePasswordDto {
  final String password;

  const UpdatePasswordDto({required this.password});

  factory UpdatePasswordDto.fromJson(Map<String, dynamic> json) =>
      _$UpdatePasswordDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UpdatePasswordDtoToJson(this);
}
