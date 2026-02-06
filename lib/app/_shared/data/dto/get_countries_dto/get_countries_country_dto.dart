import 'package:json_annotation/json_annotation.dart';

part 'get_countries_country_dto.g.dart';

@JsonSerializable()
class CountryDto {
  final int? id;
  final String? name;
  final String? region;
  final String? code;

  @JsonKey(name: 'dial_code')
  final String? dialCode;

  final String? emoji;
  final String? image;
  final String? symbol;

  @JsonKey(name: 'price_rate')
  final String? priceRate;

  const CountryDto({
    this.id,
    this.name,
    this.region,
    this.code,
    this.dialCode,
    this.emoji,
    this.image,
    this.symbol,
    this.priceRate,
  });

  factory CountryDto.fromJson(Map<String, dynamic> json) =>
      _$CountryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CountryDtoToJson(this);
}
