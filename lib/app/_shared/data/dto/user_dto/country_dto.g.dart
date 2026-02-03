// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CountryDto _$CountryDtoFromJson(Map<String, dynamic> json) => _CountryDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  region: json['region'] as String,
  code: json['code'] as String,
  dialCode: json['dial_code'] as String,
  symbol: json['symbol'] as String,
  priceRate: json['price_rate'] as String,
  emoji: json['emoji'] as String,
  image: json['image'] as String,
);

Map<String, dynamic> _$CountryDtoToJson(_CountryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'region': instance.region,
      'code': instance.code,
      'dial_code': instance.dialCode,
      'symbol': instance.symbol,
      'price_rate': instance.priceRate,
      'emoji': instance.emoji,
      'image': instance.image,
    };
