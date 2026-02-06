// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginDto _$LoginDtoFromJson(Map<String, dynamic> json) => LoginDto(
  emailOrPhone: json['emailOrPhone'] as String,
  password: json['password'] as String,
  countryId: (json['country_id'] as num?)?.toInt() ?? 1,
);

Map<String, dynamic> _$LoginDtoToJson(LoginDto instance) => <String, dynamic>{
  'emailOrPhone': instance.emailOrPhone,
  'password': instance.password,
  'country_id': instance.countryId,
};
