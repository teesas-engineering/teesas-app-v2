import 'package:json_annotation/json_annotation.dart';

part 'user_class_dto.g.dart';

@JsonSerializable()
class UserClassDto {
  const UserClassDto({required this.classId});

  factory UserClassDto.fromJson(Map<String, dynamic> json) =>
      _$UserClassDtoFromJson(json);

  @JsonKey(name: 'class_id')
  final int classId;

  Map<String, dynamic> toJson() => _$UserClassDtoToJson(this);
}
