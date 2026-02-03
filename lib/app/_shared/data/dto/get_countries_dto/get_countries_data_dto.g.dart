// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_countries_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCountriesDto _$GetCountriesDtoFromJson(Map<String, dynamic> json) =>
    GetCountriesDto(
      countries: (json['countries'] as List<dynamic>)
          .map((e) => CountriesDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetCountriesDtoToJson(GetCountriesDto instance) =>
    <String, dynamic>{
      'countries': instance.countries.map((e) => e.toJson()).toList(),
    };
