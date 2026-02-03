// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'switch_profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SwitchProfileDto {

@JsonKey(name: 'profile_id') String get profileId;
/// Create a copy of SwitchProfileDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SwitchProfileDtoCopyWith<SwitchProfileDto> get copyWith => _$SwitchProfileDtoCopyWithImpl<SwitchProfileDto>(this as SwitchProfileDto, _$identity);

  /// Serializes this SwitchProfileDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SwitchProfileDto&&(identical(other.profileId, profileId) || other.profileId == profileId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,profileId);

@override
String toString() {
  return 'SwitchProfileDto(profileId: $profileId)';
}


}

/// @nodoc
abstract mixin class $SwitchProfileDtoCopyWith<$Res>  {
  factory $SwitchProfileDtoCopyWith(SwitchProfileDto value, $Res Function(SwitchProfileDto) _then) = _$SwitchProfileDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'profile_id') String profileId
});




}
/// @nodoc
class _$SwitchProfileDtoCopyWithImpl<$Res>
    implements $SwitchProfileDtoCopyWith<$Res> {
  _$SwitchProfileDtoCopyWithImpl(this._self, this._then);

  final SwitchProfileDto _self;
  final $Res Function(SwitchProfileDto) _then;

/// Create a copy of SwitchProfileDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profileId = null,}) {
  return _then(_self.copyWith(
profileId: null == profileId ? _self.profileId : profileId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SwitchProfileDto].
extension SwitchProfileDtoPatterns on SwitchProfileDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SwitchProfileDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SwitchProfileDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SwitchProfileDto value)  $default,){
final _that = this;
switch (_that) {
case _SwitchProfileDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SwitchProfileDto value)?  $default,){
final _that = this;
switch (_that) {
case _SwitchProfileDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'profile_id')  String profileId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SwitchProfileDto() when $default != null:
return $default(_that.profileId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'profile_id')  String profileId)  $default,) {final _that = this;
switch (_that) {
case _SwitchProfileDto():
return $default(_that.profileId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'profile_id')  String profileId)?  $default,) {final _that = this;
switch (_that) {
case _SwitchProfileDto() when $default != null:
return $default(_that.profileId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SwitchProfileDto implements SwitchProfileDto {
  const _SwitchProfileDto({@JsonKey(name: 'profile_id') required this.profileId});
  factory _SwitchProfileDto.fromJson(Map<String, dynamic> json) => _$SwitchProfileDtoFromJson(json);

@override@JsonKey(name: 'profile_id') final  String profileId;

/// Create a copy of SwitchProfileDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SwitchProfileDtoCopyWith<_SwitchProfileDto> get copyWith => __$SwitchProfileDtoCopyWithImpl<_SwitchProfileDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SwitchProfileDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SwitchProfileDto&&(identical(other.profileId, profileId) || other.profileId == profileId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,profileId);

@override
String toString() {
  return 'SwitchProfileDto(profileId: $profileId)';
}


}

/// @nodoc
abstract mixin class _$SwitchProfileDtoCopyWith<$Res> implements $SwitchProfileDtoCopyWith<$Res> {
  factory _$SwitchProfileDtoCopyWith(_SwitchProfileDto value, $Res Function(_SwitchProfileDto) _then) = __$SwitchProfileDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'profile_id') String profileId
});




}
/// @nodoc
class __$SwitchProfileDtoCopyWithImpl<$Res>
    implements _$SwitchProfileDtoCopyWith<$Res> {
  __$SwitchProfileDtoCopyWithImpl(this._self, this._then);

  final _SwitchProfileDto _self;
  final $Res Function(_SwitchProfileDto) _then;

/// Create a copy of SwitchProfileDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profileId = null,}) {
  return _then(_SwitchProfileDto(
profileId: null == profileId ? _self.profileId : profileId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
