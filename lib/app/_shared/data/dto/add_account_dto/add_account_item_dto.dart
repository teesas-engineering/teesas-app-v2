import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../enum/gender.dart';
import 'add_account_course_dto.dart';
part 'add_account_item_dto.freezed.dart';
part 'add_account_item_dto.g.dart';

@freezed
abstract class AddAccountItemDto with _$AddAccountItemDto {
  const factory AddAccountItemDto({
    required String name,

    @JsonKey(name: 'country_id')
    required int countryId,

    @JsonKey(name: 'date_of_birth')
    required String dateOfBirth,

    required List<AddAccountCourseDto> courses, @JsonKey(fromJson: genderFromJson, toJson: genderToJson)
    Gender? gender,
  }) = _AddAccountItemDto;

  factory AddAccountItemDto.fromJson(Map<String, dynamic> json) =>
      _$AddAccountItemDtoFromJson(json);
}
