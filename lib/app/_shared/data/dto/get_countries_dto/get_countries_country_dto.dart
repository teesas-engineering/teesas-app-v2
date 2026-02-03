import 'package:json_annotation/json_annotation.dart';

part 'get_countries_country_dto.g.dart';

@JsonSerializable()
class CountriesDto {
  final int id;
  final String name;
  final String region;
  final String code;

  @JsonKey(name: 'dial_code')
  final String dialCode;

  final String emoji;
  final String image;
  final String symbol;

  @JsonKey(name: 'price_rate')
  final String priceRate;

  const CountriesDto({
    required this.id,
    required this.name,
    required this.region,
    required this.code,
    required this.dialCode,
    required this.emoji,
    required this.image,
    required this.symbol,
    required this.priceRate,
  });

  factory CountriesDto.fromJson(Map<String, dynamic> json) =>
      _$CountriesDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CountriesDtoToJson(this);
}
