// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_countries_country_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountriesDto _$CountriesDtoFromJson(Map<String, dynamic> json) => CountriesDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  region: json['region'] as String,
  code: json['code'] as String,
  dialCode: json['dial_code'] as String,
  emoji: json['emoji'] as String,
  image: json['image'] as String,
  symbol: json['symbol'] as String,
  priceRate: json['price_rate'] as String,
);

Map<String, dynamic> _$CountriesDtoToJson(CountriesDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'region': instance.region,
      'code': instance.code,
      'dial_code': instance.dialCode,
      'emoji': instance.emoji,
      'image': instance.image,
      'symbol': instance.symbol,
      'price_rate': instance.priceRate,
    };
