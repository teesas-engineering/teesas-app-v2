// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_account_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddAccountRequestDto _$AddAccountRequestDtoFromJson(
  Map<String, dynamic> json,
) => AddAccountRequestDto(
  account: (json['account'] as List<dynamic>)
      .map((e) => AddAccountItemDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AddAccountRequestDtoToJson(
  AddAccountRequestDto instance,
) => <String, dynamic>{
  'account': instance.account.map((e) => e.toJson()).toList(),
};
