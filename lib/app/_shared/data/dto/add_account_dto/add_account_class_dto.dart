import 'package:json_annotation/json_annotation.dart';

part 'add_account_class_dto.g.dart';

@JsonSerializable()
class AddAccountClassDto {
  final int id;

  const AddAccountClassDto({required this.id});

  factory AddAccountClassDto.fromJson(Map<String, dynamic> json) =>
      _$AddAccountClassDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AddAccountClassDtoToJson(this);
}
