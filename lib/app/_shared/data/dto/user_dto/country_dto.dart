import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_dto.freezed.dart';
part 'country_dto.g.dart';

@freezed
abstract class CountryDto with _$CountryDto {
  const factory CountryDto({
    required int id,
    required String name,
    required String region,
    required String code,
    @JsonKey(name: 'dial_code') required String dialCode,
    required String symbol,
    @JsonKey(name: 'price_rate') required String priceRate,
    required String emoji,
    required String image,
  }) = _CountryDto;

  factory CountryDto.fromJson(Map<String, dynamic> json) =>
      _$CountryDtoFromJson(json);
}
