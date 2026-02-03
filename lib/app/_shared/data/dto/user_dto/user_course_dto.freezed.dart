// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_course_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserCourseDto {

 int get id;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'updated_at') String get updatedAt;@JsonKey(name: 'user_id') int get userId;@JsonKey(name: 'course_id') int get courseId;
/// Create a copy of UserCourseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCourseDtoCopyWith<UserCourseDto> get copyWith => _$UserCourseDtoCopyWithImpl<UserCourseDto>(this as UserCourseDto, _$identity);

  /// Serializes this UserCourseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserCourseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.courseId, courseId) || other.courseId == courseId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,userId,courseId);

@override
String toString() {
  return 'UserCourseDto(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, userId: $userId, courseId: $courseId)';
}


}

/// @nodoc
abstract mixin class $UserCourseDtoCopyWith<$Res>  {
  factory $UserCourseDtoCopyWith(UserCourseDto value, $Res Function(UserCourseDto) _then) = _$UserCourseDtoCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt,@JsonKey(name: 'user_id') int userId,@JsonKey(name: 'course_id') int courseId
});




}
/// @nodoc
class _$UserCourseDtoCopyWithImpl<$Res>
    implements $UserCourseDtoCopyWith<$Res> {
  _$UserCourseDtoCopyWithImpl(this._self, this._then);

  final UserCourseDto _self;
  final $Res Function(UserCourseDto) _then;

/// Create a copy of UserCourseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? userId = null,Object? courseId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UserCourseDto].
extension UserCourseDtoPatterns on UserCourseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserCourseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserCourseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserCourseDto value)  $default,){
final _that = this;
switch (_that) {
case _UserCourseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserCourseDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserCourseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt, @JsonKey(name: 'user_id')  int userId, @JsonKey(name: 'course_id')  int courseId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserCourseDto() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.userId,_that.courseId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt, @JsonKey(name: 'user_id')  int userId, @JsonKey(name: 'course_id')  int courseId)  $default,) {final _that = this;
switch (_that) {
case _UserCourseDto():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.userId,_that.courseId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt, @JsonKey(name: 'user_id')  int userId, @JsonKey(name: 'course_id')  int courseId)?  $default,) {final _that = this;
switch (_that) {
case _UserCourseDto() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.userId,_that.courseId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserCourseDto implements UserCourseDto {
  const _UserCourseDto({required this.id, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'course_id') required this.courseId});
  factory _UserCourseDto.fromJson(Map<String, dynamic> json) => _$UserCourseDtoFromJson(json);

@override final  int id;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String updatedAt;
@override@JsonKey(name: 'user_id') final  int userId;
@override@JsonKey(name: 'course_id') final  int courseId;

/// Create a copy of UserCourseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCourseDtoCopyWith<_UserCourseDto> get copyWith => __$UserCourseDtoCopyWithImpl<_UserCourseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserCourseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserCourseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.courseId, courseId) || other.courseId == courseId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,userId,courseId);

@override
String toString() {
  return 'UserCourseDto(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, userId: $userId, courseId: $courseId)';
}


}

/// @nodoc
abstract mixin class _$UserCourseDtoCopyWith<$Res> implements $UserCourseDtoCopyWith<$Res> {
  factory _$UserCourseDtoCopyWith(_UserCourseDto value, $Res Function(_UserCourseDto) _then) = __$UserCourseDtoCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt,@JsonKey(name: 'user_id') int userId,@JsonKey(name: 'course_id') int courseId
});




}
/// @nodoc
class __$UserCourseDtoCopyWithImpl<$Res>
    implements _$UserCourseDtoCopyWith<$Res> {
  __$UserCourseDtoCopyWithImpl(this._self, this._then);

  final _UserCourseDto _self;
  final $Res Function(_UserCourseDto) _then;

/// Create a copy of UserCourseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? userId = null,Object? courseId = null,}) {
  return _then(_UserCourseDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
