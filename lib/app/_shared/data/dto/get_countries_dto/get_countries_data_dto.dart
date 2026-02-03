import 'package:json_annotation/json_annotation.dart';

import 'get_countries_country_dto.dart';

part 'get_countries_data_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class GetCountriesDto {
  final List<CountriesDto> countries;

  const GetCountriesDto({required this.countries});

  factory GetCountriesDto.fromJson(Map<String, dynamic> json) =>
      _$GetCountriesDtoFromJson(json);

  Map<String, dynamic> toJson() => _$GetCountriesDtoToJson(this);
}
