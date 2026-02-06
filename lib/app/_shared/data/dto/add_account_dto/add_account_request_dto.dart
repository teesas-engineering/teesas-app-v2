import 'package:json_annotation/json_annotation.dart';

import 'add_account_item_dto.dart';

part 'add_account_request_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class AddAccountRequestDto {

  const AddAccountRequestDto({required this.account});

  factory AddAccountRequestDto.fromJson(Map<String, dynamic> json) =>
      _$AddAccountRequestDtoFromJson(json);
  final List<AddAccountItemDto> account;

  Map<String, dynamic> toJson() => _$AddAccountRequestDtoToJson(this);
}
