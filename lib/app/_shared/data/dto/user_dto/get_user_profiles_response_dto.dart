import 'package:json_annotation/json_annotation.dart';
import 'user_dto.dart';

part 'get_user_profiles_response_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class GetUserProfilesResponseDto {
  const GetUserProfilesResponseDto({required this.user});

  factory GetUserProfilesResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GetUserProfilesResponseDtoFromJson(json);

  final List<UserDto> user;

  Map<String, dynamic> toJson() => _$GetUserProfilesResponseDtoToJson(this);
}
