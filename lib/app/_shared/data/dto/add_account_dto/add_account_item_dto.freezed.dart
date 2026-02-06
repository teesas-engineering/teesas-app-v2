// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_account_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddAccountItemDto {

 String get name;@JsonKey(name: 'country_id') int get countryId;@JsonKey(name: 'date_of_birth') String get dateOfBirth; List<AddAccountCourseDto> get courses;@JsonKey(fromJson: genderFromJson, toJson: genderToJson) Gender? get gender;
/// Create a copy of AddAccountItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddAccountItemDtoCopyWith<AddAccountItemDto> get copyWith => _$AddAccountItemDtoCopyWithImpl<AddAccountItemDto>(this as AddAccountItemDto, _$identity);

  /// Serializes this AddAccountItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddAccountItemDto&&(identical(other.name, name) || other.name == name)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&const DeepCollectionEquality().equals(other.courses, courses)&&(identical(other.gender, gender) || other.gender == gender));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,countryId,dateOfBirth,const DeepCollectionEquality().hash(courses),gender);

@override
String toString() {
  return 'AddAccountItemDto(name: $name, countryId: $countryId, dateOfBirth: $dateOfBirth, courses: $courses, gender: $gender)';
}


}

/// @nodoc
abstract mixin class $AddAccountItemDtoCopyWith<$Res>  {
  factory $AddAccountItemDtoCopyWith(AddAccountItemDto value, $Res Function(AddAccountItemDto) _then) = _$AddAccountItemDtoCopyWithImpl;
@useResult
$Res call({
 String name,@JsonKey(name: 'country_id') int countryId,@JsonKey(name: 'date_of_birth') String dateOfBirth, List<AddAccountCourseDto> courses,@JsonKey(fromJson: genderFromJson, toJson: genderToJson) Gender? gender
});




}
/// @nodoc
class _$AddAccountItemDtoCopyWithImpl<$Res>
    implements $AddAccountItemDtoCopyWith<$Res> {
  _$AddAccountItemDtoCopyWithImpl(this._self, this._then);

  final AddAccountItemDto _self;
  final $Res Function(AddAccountItemDto) _then;

/// Create a copy of AddAccountItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? countryId = null,Object? dateOfBirth = null,Object? courses = null,Object? gender = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,countryId: null == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as int,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String,courses: null == courses ? _self.courses : courses // ignore: cast_nullable_to_non_nullable
as List<AddAccountCourseDto>,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender?,
  ));
}

}


/// Adds pattern-matching-related methods to [AddAccountItemDto].
extension AddAccountItemDtoPatterns on AddAccountItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddAccountItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddAccountItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddAccountItemDto value)  $default,){
final _that = this;
switch (_that) {
case _AddAccountItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddAccountItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _AddAccountItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'country_id')  int countryId, @JsonKey(name: 'date_of_birth')  String dateOfBirth,  List<AddAccountCourseDto> courses, @JsonKey(fromJson: genderFromJson, toJson: genderToJson)  Gender? gender)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddAccountItemDto() when $default != null:
return $default(_that.name,_that.countryId,_that.dateOfBirth,_that.courses,_that.gender);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'country_id')  int countryId, @JsonKey(name: 'date_of_birth')  String dateOfBirth,  List<AddAccountCourseDto> courses, @JsonKey(fromJson: genderFromJson, toJson: genderToJson)  Gender? gender)  $default,) {final _that = this;
switch (_that) {
case _AddAccountItemDto():
return $default(_that.name,_that.countryId,_that.dateOfBirth,_that.courses,_that.gender);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name, @JsonKey(name: 'country_id')  int countryId, @JsonKey(name: 'date_of_birth')  String dateOfBirth,  List<AddAccountCourseDto> courses, @JsonKey(fromJson: genderFromJson, toJson: genderToJson)  Gender? gender)?  $default,) {final _that = this;
switch (_that) {
case _AddAccountItemDto() when $default != null:
return $default(_that.name,_that.countryId,_that.dateOfBirth,_that.courses,_that.gender);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddAccountItemDto implements AddAccountItemDto {
  const _AddAccountItemDto({required this.name, @JsonKey(name: 'country_id') required this.countryId, @JsonKey(name: 'date_of_birth') required this.dateOfBirth, required final  List<AddAccountCourseDto> courses, @JsonKey(fromJson: genderFromJson, toJson: genderToJson) this.gender}): _courses = courses;
  factory _AddAccountItemDto.fromJson(Map<String, dynamic> json) => _$AddAccountItemDtoFromJson(json);

@override final  String name;
@override@JsonKey(name: 'country_id') final  int countryId;
@override@JsonKey(name: 'date_of_birth') final  String dateOfBirth;
 final  List<AddAccountCourseDto> _courses;
@override List<AddAccountCourseDto> get courses {
  if (_courses is EqualUnmodifiableListView) return _courses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_courses);
}

@override@JsonKey(fromJson: genderFromJson, toJson: genderToJson) final  Gender? gender;

/// Create a copy of AddAccountItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddAccountItemDtoCopyWith<_AddAccountItemDto> get copyWith => __$AddAccountItemDtoCopyWithImpl<_AddAccountItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddAccountItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddAccountItemDto&&(identical(other.name, name) || other.name == name)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&const DeepCollectionEquality().equals(other._courses, _courses)&&(identical(other.gender, gender) || other.gender == gender));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,countryId,dateOfBirth,const DeepCollectionEquality().hash(_courses),gender);

@override
String toString() {
  return 'AddAccountItemDto(name: $name, countryId: $countryId, dateOfBirth: $dateOfBirth, courses: $courses, gender: $gender)';
}


}

/// @nodoc
abstract mixin class _$AddAccountItemDtoCopyWith<$Res> implements $AddAccountItemDtoCopyWith<$Res> {
  factory _$AddAccountItemDtoCopyWith(_AddAccountItemDto value, $Res Function(_AddAccountItemDto) _then) = __$AddAccountItemDtoCopyWithImpl;
@override @useResult
$Res call({
 String name,@JsonKey(name: 'country_id') int countryId,@JsonKey(name: 'date_of_birth') String dateOfBirth, List<AddAccountCourseDto> courses,@JsonKey(fromJson: genderFromJson, toJson: genderToJson) Gender? gender
});




}
/// @nodoc
class __$AddAccountItemDtoCopyWithImpl<$Res>
    implements _$AddAccountItemDtoCopyWith<$Res> {
  __$AddAccountItemDtoCopyWithImpl(this._self, this._then);

  final _AddAccountItemDto _self;
  final $Res Function(_AddAccountItemDto) _then;

/// Create a copy of AddAccountItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? countryId = null,Object? dateOfBirth = null,Object? courses = null,Object? gender = freezed,}) {
  return _then(_AddAccountItemDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,countryId: null == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as int,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String,courses: null == courses ? _self._courses : courses // ignore: cast_nullable_to_non_nullable
as List<AddAccountCourseDto>,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender?,
  ));
}


}

// dart format on
