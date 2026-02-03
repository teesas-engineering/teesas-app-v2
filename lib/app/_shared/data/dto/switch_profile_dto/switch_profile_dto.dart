import 'package:freezed_annotation/freezed_annotation.dart';

part 'switch_profile_dto.freezed.dart';
part 'switch_profile_dto.g.dart';

@freezed
abstract class SwitchProfileDto with _$SwitchProfileDto {
  const factory SwitchProfileDto({
    @JsonKey(name: 'profile_id') required String profileId,
  }) = _SwitchProfileDto;

  factory SwitchProfileDto.fromJson(Map<String, dynamic> json) =>
      _$SwitchProfileDtoFromJson(json);
}
