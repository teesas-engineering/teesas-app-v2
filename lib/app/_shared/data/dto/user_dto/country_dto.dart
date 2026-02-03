import 'package:json_annotation/json_annotation.dart';

part 'country_dto.g.dart';

@JsonSerializable()
class CountryDto {
  final int id;
  final String name;
  final String region;
  final String code;

  @JsonKey(name: 'dial_code')
  final String dialCode;

  final String symbol;

  @JsonKey(name: 'price_rate')
  final String priceRate;

  final String emoji;
  final String image;

  const CountryDto({
    required this.id,
    required this.name,
    required this.region,
    required this.code,
    required this.dialCode,
    required this.symbol,
    required this.priceRate,
    required this.emoji,
    required this.image,
  });

  factory CountryDto.fromJson(Map<String, dynamic> json) =>
      _$CountryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CountryDtoToJson(this);
}
