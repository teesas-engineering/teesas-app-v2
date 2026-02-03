// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CountryDto {

 int get id; String get name; String get region; String get code;@JsonKey(name: 'dial_code') String get dialCode; String get symbol;@JsonKey(name: 'price_rate') String get priceRate; String get emoji; String get image;
/// Create a copy of CountryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryDtoCopyWith<CountryDto> get copyWith => _$CountryDtoCopyWithImpl<CountryDto>(this as CountryDto, _$identity);

  /// Serializes this CountryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.region, region) || other.region == region)&&(identical(other.code, code) || other.code == code)&&(identical(other.dialCode, dialCode) || other.dialCode == dialCode)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.priceRate, priceRate) || other.priceRate == priceRate)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,region,code,dialCode,symbol,priceRate,emoji,image);

@override
String toString() {
  return 'CountryDto(id: $id, name: $name, region: $region, code: $code, dialCode: $dialCode, symbol: $symbol, priceRate: $priceRate, emoji: $emoji, image: $image)';
}


}

/// @nodoc
abstract mixin class $CountryDtoCopyWith<$Res>  {
  factory $CountryDtoCopyWith(CountryDto value, $Res Function(CountryDto) _then) = _$CountryDtoCopyWithImpl;
@useResult
$Res call({
 int id, String name, String region, String code,@JsonKey(name: 'dial_code') String dialCode, String symbol,@JsonKey(name: 'price_rate') String priceRate, String emoji, String image
});




}
/// @nodoc
class _$CountryDtoCopyWithImpl<$Res>
    implements $CountryDtoCopyWith<$Res> {
  _$CountryDtoCopyWithImpl(this._self, this._then);

  final CountryDto _self;
  final $Res Function(CountryDto) _then;

/// Create a copy of CountryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? region = null,Object? code = null,Object? dialCode = null,Object? symbol = null,Object? priceRate = null,Object? emoji = null,Object? image = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,dialCode: null == dialCode ? _self.dialCode : dialCode // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,priceRate: null == priceRate ? _self.priceRate : priceRate // ignore: cast_nullable_to_non_nullable
as String,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CountryDto].
extension CountryDtoPatterns on CountryDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountryDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountryDto value)  $default,){
final _that = this;
switch (_that) {
case _CountryDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountryDto value)?  $default,){
final _that = this;
switch (_that) {
case _CountryDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String region,  String code, @JsonKey(name: 'dial_code')  String dialCode,  String symbol, @JsonKey(name: 'price_rate')  String priceRate,  String emoji,  String image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountryDto() when $default != null:
return $default(_that.id,_that.name,_that.region,_that.code,_that.dialCode,_that.symbol,_that.priceRate,_that.emoji,_that.image);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String region,  String code, @JsonKey(name: 'dial_code')  String dialCode,  String symbol, @JsonKey(name: 'price_rate')  String priceRate,  String emoji,  String image)  $default,) {final _that = this;
switch (_that) {
case _CountryDto():
return $default(_that.id,_that.name,_that.region,_that.code,_that.dialCode,_that.symbol,_that.priceRate,_that.emoji,_that.image);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String region,  String code, @JsonKey(name: 'dial_code')  String dialCode,  String symbol, @JsonKey(name: 'price_rate')  String priceRate,  String emoji,  String image)?  $default,) {final _that = this;
switch (_that) {
case _CountryDto() when $default != null:
return $default(_that.id,_that.name,_that.region,_that.code,_that.dialCode,_that.symbol,_that.priceRate,_that.emoji,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CountryDto implements CountryDto {
  const _CountryDto({required this.id, required this.name, required this.region, required this.code, @JsonKey(name: 'dial_code') required this.dialCode, required this.symbol, @JsonKey(name: 'price_rate') required this.priceRate, required this.emoji, required this.image});
  factory _CountryDto.fromJson(Map<String, dynamic> json) => _$CountryDtoFromJson(json);

@override final  int id;
@override final  String name;
@override final  String region;
@override final  String code;
@override@JsonKey(name: 'dial_code') final  String dialCode;
@override final  String symbol;
@override@JsonKey(name: 'price_rate') final  String priceRate;
@override final  String emoji;
@override final  String image;

/// Create a copy of CountryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryDtoCopyWith<_CountryDto> get copyWith => __$CountryDtoCopyWithImpl<_CountryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountryDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.region, region) || other.region == region)&&(identical(other.code, code) || other.code == code)&&(identical(other.dialCode, dialCode) || other.dialCode == dialCode)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.priceRate, priceRate) || other.priceRate == priceRate)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,region,code,dialCode,symbol,priceRate,emoji,image);

@override
String toString() {
  return 'CountryDto(id: $id, name: $name, region: $region, code: $code, dialCode: $dialCode, symbol: $symbol, priceRate: $priceRate, emoji: $emoji, image: $image)';
}


}

/// @nodoc
abstract mixin class _$CountryDtoCopyWith<$Res> implements $CountryDtoCopyWith<$Res> {
  factory _$CountryDtoCopyWith(_CountryDto value, $Res Function(_CountryDto) _then) = __$CountryDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String region, String code,@JsonKey(name: 'dial_code') String dialCode, String symbol,@JsonKey(name: 'price_rate') String priceRate, String emoji, String image
});




}
/// @nodoc
class __$CountryDtoCopyWithImpl<$Res>
    implements _$CountryDtoCopyWith<$Res> {
  __$CountryDtoCopyWithImpl(this._self, this._then);

  final _CountryDto _self;
  final $Res Function(_CountryDto) _then;

/// Create a copy of CountryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? region = null,Object? code = null,Object? dialCode = null,Object? symbol = null,Object? priceRate = null,Object? emoji = null,Object? image = null,}) {
  return _then(_CountryDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,dialCode: null == dialCode ? _self.dialCode : dialCode // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,priceRate: null == priceRate ? _self.priceRate : priceRate // ignore: cast_nullable_to_non_nullable
as String,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
