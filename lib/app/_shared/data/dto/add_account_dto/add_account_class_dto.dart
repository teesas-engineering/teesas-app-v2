import 'package:json_annotation/json_annotation.dart';

part 'add_account_class_dto.g.dart';

@JsonSerializable()
class AddAccountClassDto {

  const AddAccountClassDto({required this.id});

  factory AddAccountClassDto.fromJson(Map<String, dynamic> json) =>
      _$AddAccountClassDtoFromJson(json);
  final int id;

  Map<String, dynamic> toJson() => _$AddAccountClassDtoToJson(this);
}
