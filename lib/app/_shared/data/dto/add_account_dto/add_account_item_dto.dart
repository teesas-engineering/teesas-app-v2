import 'package:json_annotation/json_annotation.dart';

import 'add_account_course_dto.dart';

part 'add_account_item_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class AddAccountItemDto {
  final int id;
  final String name;

  @JsonKey(name: 'country_id')
  final int countryId;

  @JsonKey(name: 'date_of_birth')
  final String dateOfBirth;

  final String gender;
  final List<AddAccountCourseDto> courses;

  const AddAccountItemDto({
    required this.id,
    required this.name,
    required this.countryId,
    required this.dateOfBirth,
    required this.gender,
    required this.courses,
  });

  factory AddAccountItemDto.fromJson(Map<String, dynamic> json) =>
      _$AddAccountItemDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AddAccountItemDtoToJson(this);
}
