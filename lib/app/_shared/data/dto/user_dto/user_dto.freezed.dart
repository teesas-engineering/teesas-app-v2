// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDto {

// Required fields first
 String get phone;@JsonKey(name: 'is_verified') bool get isVerified;// Nullable fields
 int? get id;@JsonKey(name: 'auth_type') String? get authType;@JsonKey(name: 'auth_provider') String? get authProvider;@JsonKey(name: 'sso_id') String? get ssoId; String? get name;@JsonKey(name: 'user_score') int? get userScore; String? get gender; String? get address; String? get deviceId; String? get relationship;@JsonKey(name: 'date_of_birth') String? get dateOfBirth; String? get email;@JsonKey(name: 'parent_fcm_token') String? get parentFcmToken;@JsonKey(name: 'profile_pic') String? get profilePic;@JsonKey(name: 'user_type') String? get userType; bool? get suspended; bool? get active;@JsonKey(name: 'is_mainProfile') bool? get isMainProfile;@JsonKey(name: 'is_temp_password') bool? get isTempPassword;@JsonKey(name: 'referral_code') String? get referralCode;@JsonKey(name: 'country_id') int? get countryId;@JsonKey(name: 'socket_id') String? get socketId;@JsonKey(name: 'referred_by') String? get referredBy;@JsonKey(name: 'main_userId') int? get mainUserId;@JsonKey(name: 'organization_id') int? get organizationId; CountryDto? get country; dynamic get parent; List<UserProfileDto>? get profiles; dynamic get referrer;@JsonKey(name: 'user_courses') List<UserCourseDto>? get userCourses;
/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDtoCopyWith<UserDto> get copyWith => _$UserDtoCopyWithImpl<UserDto>(this as UserDto, _$identity);

  /// Serializes this UserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDto&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.id, id) || other.id == id)&&(identical(other.authType, authType) || other.authType == authType)&&(identical(other.authProvider, authProvider) || other.authProvider == authProvider)&&(identical(other.ssoId, ssoId) || other.ssoId == ssoId)&&(identical(other.name, name) || other.name == name)&&(identical(other.userScore, userScore) || other.userScore == userScore)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.address, address) || other.address == address)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.relationship, relationship) || other.relationship == relationship)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.email, email) || other.email == email)&&(identical(other.parentFcmToken, parentFcmToken) || other.parentFcmToken == parentFcmToken)&&(identical(other.profilePic, profilePic) || other.profilePic == profilePic)&&(identical(other.userType, userType) || other.userType == userType)&&(identical(other.suspended, suspended) || other.suspended == suspended)&&(identical(other.active, active) || other.active == active)&&(identical(other.isMainProfile, isMainProfile) || other.isMainProfile == isMainProfile)&&(identical(other.isTempPassword, isTempPassword) || other.isTempPassword == isTempPassword)&&(identical(other.referralCode, referralCode) || other.referralCode == referralCode)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.socketId, socketId) || other.socketId == socketId)&&(identical(other.referredBy, referredBy) || other.referredBy == referredBy)&&(identical(other.mainUserId, mainUserId) || other.mainUserId == mainUserId)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.country, country) || other.country == country)&&const DeepCollectionEquality().equals(other.parent, parent)&&const DeepCollectionEquality().equals(other.profiles, profiles)&&const DeepCollectionEquality().equals(other.referrer, referrer)&&const DeepCollectionEquality().equals(other.userCourses, userCourses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,phone,isVerified,id,authType,authProvider,ssoId,name,userScore,gender,address,deviceId,relationship,dateOfBirth,email,parentFcmToken,profilePic,userType,suspended,active,isMainProfile,isTempPassword,referralCode,countryId,socketId,referredBy,mainUserId,organizationId,country,const DeepCollectionEquality().hash(parent),const DeepCollectionEquality().hash(profiles),const DeepCollectionEquality().hash(referrer),const DeepCollectionEquality().hash(userCourses)]);

@override
String toString() {
  return 'UserDto(phone: $phone, isVerified: $isVerified, id: $id, authType: $authType, authProvider: $authProvider, ssoId: $ssoId, name: $name, userScore: $userScore, gender: $gender, address: $address, deviceId: $deviceId, relationship: $relationship, dateOfBirth: $dateOfBirth, email: $email, parentFcmToken: $parentFcmToken, profilePic: $profilePic, userType: $userType, suspended: $suspended, active: $active, isMainProfile: $isMainProfile, isTempPassword: $isTempPassword, referralCode: $referralCode, countryId: $countryId, socketId: $socketId, referredBy: $referredBy, mainUserId: $mainUserId, organizationId: $organizationId, country: $country, parent: $parent, profiles: $profiles, referrer: $referrer, userCourses: $userCourses)';
}


}

/// @nodoc
abstract mixin class $UserDtoCopyWith<$Res>  {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) _then) = _$UserDtoCopyWithImpl;
@useResult
$Res call({
 String phone,@JsonKey(name: 'is_verified') bool isVerified, int? id,@JsonKey(name: 'auth_type') String? authType,@JsonKey(name: 'auth_provider') String? authProvider,@JsonKey(name: 'sso_id') String? ssoId, String? name,@JsonKey(name: 'user_score') int? userScore, String? gender, String? address, String? deviceId, String? relationship,@JsonKey(name: 'date_of_birth') String? dateOfBirth, String? email,@JsonKey(name: 'parent_fcm_token') String? parentFcmToken,@JsonKey(name: 'profile_pic') String? profilePic,@JsonKey(name: 'user_type') String? userType, bool? suspended, bool? active,@JsonKey(name: 'is_mainProfile') bool? isMainProfile,@JsonKey(name: 'is_temp_password') bool? isTempPassword,@JsonKey(name: 'referral_code') String? referralCode,@JsonKey(name: 'country_id') int? countryId,@JsonKey(name: 'socket_id') String? socketId,@JsonKey(name: 'referred_by') String? referredBy,@JsonKey(name: 'main_userId') int? mainUserId,@JsonKey(name: 'organization_id') int? organizationId, CountryDto? country, dynamic parent, List<UserProfileDto>? profiles, dynamic referrer,@JsonKey(name: 'user_courses') List<UserCourseDto>? userCourses
});


$CountryDtoCopyWith<$Res>? get country;

}
/// @nodoc
class _$UserDtoCopyWithImpl<$Res>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._self, this._then);

  final UserDto _self;
  final $Res Function(UserDto) _then;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phone = null,Object? isVerified = null,Object? id = freezed,Object? authType = freezed,Object? authProvider = freezed,Object? ssoId = freezed,Object? name = freezed,Object? userScore = freezed,Object? gender = freezed,Object? address = freezed,Object? deviceId = freezed,Object? relationship = freezed,Object? dateOfBirth = freezed,Object? email = freezed,Object? parentFcmToken = freezed,Object? profilePic = freezed,Object? userType = freezed,Object? suspended = freezed,Object? active = freezed,Object? isMainProfile = freezed,Object? isTempPassword = freezed,Object? referralCode = freezed,Object? countryId = freezed,Object? socketId = freezed,Object? referredBy = freezed,Object? mainUserId = freezed,Object? organizationId = freezed,Object? country = freezed,Object? parent = freezed,Object? profiles = freezed,Object? referrer = freezed,Object? userCourses = freezed,}) {
  return _then(_self.copyWith(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,authType: freezed == authType ? _self.authType : authType // ignore: cast_nullable_to_non_nullable
as String?,authProvider: freezed == authProvider ? _self.authProvider : authProvider // ignore: cast_nullable_to_non_nullable
as String?,ssoId: freezed == ssoId ? _self.ssoId : ssoId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,userScore: freezed == userScore ? _self.userScore : userScore // ignore: cast_nullable_to_non_nullable
as int?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,relationship: freezed == relationship ? _self.relationship : relationship // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,parentFcmToken: freezed == parentFcmToken ? _self.parentFcmToken : parentFcmToken // ignore: cast_nullable_to_non_nullable
as String?,profilePic: freezed == profilePic ? _self.profilePic : profilePic // ignore: cast_nullable_to_non_nullable
as String?,userType: freezed == userType ? _self.userType : userType // ignore: cast_nullable_to_non_nullable
as String?,suspended: freezed == suspended ? _self.suspended : suspended // ignore: cast_nullable_to_non_nullable
as bool?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,isMainProfile: freezed == isMainProfile ? _self.isMainProfile : isMainProfile // ignore: cast_nullable_to_non_nullable
as bool?,isTempPassword: freezed == isTempPassword ? _self.isTempPassword : isTempPassword // ignore: cast_nullable_to_non_nullable
as bool?,referralCode: freezed == referralCode ? _self.referralCode : referralCode // ignore: cast_nullable_to_non_nullable
as String?,countryId: freezed == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as int?,socketId: freezed == socketId ? _self.socketId : socketId // ignore: cast_nullable_to_non_nullable
as String?,referredBy: freezed == referredBy ? _self.referredBy : referredBy // ignore: cast_nullable_to_non_nullable
as String?,mainUserId: freezed == mainUserId ? _self.mainUserId : mainUserId // ignore: cast_nullable_to_non_nullable
as int?,organizationId: freezed == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as int?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as CountryDto?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as dynamic,profiles: freezed == profiles ? _self.profiles : profiles // ignore: cast_nullable_to_non_nullable
as List<UserProfileDto>?,referrer: freezed == referrer ? _self.referrer : referrer // ignore: cast_nullable_to_non_nullable
as dynamic,userCourses: freezed == userCourses ? _self.userCourses : userCourses // ignore: cast_nullable_to_non_nullable
as List<UserCourseDto>?,
  ));
}
/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CountryDtoCopyWith<$Res>? get country {
    if (_self.country == null) {
    return null;
  }

  return $CountryDtoCopyWith<$Res>(_self.country!, (value) {
    return _then(_self.copyWith(country: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserDto].
extension UserDtoPatterns on UserDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDto value)  $default,){
final _that = this;
switch (_that) {
case _UserDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phone, @JsonKey(name: 'is_verified')  bool isVerified,  int? id, @JsonKey(name: 'auth_type')  String? authType, @JsonKey(name: 'auth_provider')  String? authProvider, @JsonKey(name: 'sso_id')  String? ssoId,  String? name, @JsonKey(name: 'user_score')  int? userScore,  String? gender,  String? address,  String? deviceId,  String? relationship, @JsonKey(name: 'date_of_birth')  String? dateOfBirth,  String? email, @JsonKey(name: 'parent_fcm_token')  String? parentFcmToken, @JsonKey(name: 'profile_pic')  String? profilePic, @JsonKey(name: 'user_type')  String? userType,  bool? suspended,  bool? active, @JsonKey(name: 'is_mainProfile')  bool? isMainProfile, @JsonKey(name: 'is_temp_password')  bool? isTempPassword, @JsonKey(name: 'referral_code')  String? referralCode, @JsonKey(name: 'country_id')  int? countryId, @JsonKey(name: 'socket_id')  String? socketId, @JsonKey(name: 'referred_by')  String? referredBy, @JsonKey(name: 'main_userId')  int? mainUserId, @JsonKey(name: 'organization_id')  int? organizationId,  CountryDto? country,  dynamic parent,  List<UserProfileDto>? profiles,  dynamic referrer, @JsonKey(name: 'user_courses')  List<UserCourseDto>? userCourses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDto() when $default != null:
return $default(_that.phone,_that.isVerified,_that.id,_that.authType,_that.authProvider,_that.ssoId,_that.name,_that.userScore,_that.gender,_that.address,_that.deviceId,_that.relationship,_that.dateOfBirth,_that.email,_that.parentFcmToken,_that.profilePic,_that.userType,_that.suspended,_that.active,_that.isMainProfile,_that.isTempPassword,_that.referralCode,_that.countryId,_that.socketId,_that.referredBy,_that.mainUserId,_that.organizationId,_that.country,_that.parent,_that.profiles,_that.referrer,_that.userCourses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phone, @JsonKey(name: 'is_verified')  bool isVerified,  int? id, @JsonKey(name: 'auth_type')  String? authType, @JsonKey(name: 'auth_provider')  String? authProvider, @JsonKey(name: 'sso_id')  String? ssoId,  String? name, @JsonKey(name: 'user_score')  int? userScore,  String? gender,  String? address,  String? deviceId,  String? relationship, @JsonKey(name: 'date_of_birth')  String? dateOfBirth,  String? email, @JsonKey(name: 'parent_fcm_token')  String? parentFcmToken, @JsonKey(name: 'profile_pic')  String? profilePic, @JsonKey(name: 'user_type')  String? userType,  bool? suspended,  bool? active, @JsonKey(name: 'is_mainProfile')  bool? isMainProfile, @JsonKey(name: 'is_temp_password')  bool? isTempPassword, @JsonKey(name: 'referral_code')  String? referralCode, @JsonKey(name: 'country_id')  int? countryId, @JsonKey(name: 'socket_id')  String? socketId, @JsonKey(name: 'referred_by')  String? referredBy, @JsonKey(name: 'main_userId')  int? mainUserId, @JsonKey(name: 'organization_id')  int? organizationId,  CountryDto? country,  dynamic parent,  List<UserProfileDto>? profiles,  dynamic referrer, @JsonKey(name: 'user_courses')  List<UserCourseDto>? userCourses)  $default,) {final _that = this;
switch (_that) {
case _UserDto():
return $default(_that.phone,_that.isVerified,_that.id,_that.authType,_that.authProvider,_that.ssoId,_that.name,_that.userScore,_that.gender,_that.address,_that.deviceId,_that.relationship,_that.dateOfBirth,_that.email,_that.parentFcmToken,_that.profilePic,_that.userType,_that.suspended,_that.active,_that.isMainProfile,_that.isTempPassword,_that.referralCode,_that.countryId,_that.socketId,_that.referredBy,_that.mainUserId,_that.organizationId,_that.country,_that.parent,_that.profiles,_that.referrer,_that.userCourses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phone, @JsonKey(name: 'is_verified')  bool isVerified,  int? id, @JsonKey(name: 'auth_type')  String? authType, @JsonKey(name: 'auth_provider')  String? authProvider, @JsonKey(name: 'sso_id')  String? ssoId,  String? name, @JsonKey(name: 'user_score')  int? userScore,  String? gender,  String? address,  String? deviceId,  String? relationship, @JsonKey(name: 'date_of_birth')  String? dateOfBirth,  String? email, @JsonKey(name: 'parent_fcm_token')  String? parentFcmToken, @JsonKey(name: 'profile_pic')  String? profilePic, @JsonKey(name: 'user_type')  String? userType,  bool? suspended,  bool? active, @JsonKey(name: 'is_mainProfile')  bool? isMainProfile, @JsonKey(name: 'is_temp_password')  bool? isTempPassword, @JsonKey(name: 'referral_code')  String? referralCode, @JsonKey(name: 'country_id')  int? countryId, @JsonKey(name: 'socket_id')  String? socketId, @JsonKey(name: 'referred_by')  String? referredBy, @JsonKey(name: 'main_userId')  int? mainUserId, @JsonKey(name: 'organization_id')  int? organizationId,  CountryDto? country,  dynamic parent,  List<UserProfileDto>? profiles,  dynamic referrer, @JsonKey(name: 'user_courses')  List<UserCourseDto>? userCourses)?  $default,) {final _that = this;
switch (_that) {
case _UserDto() when $default != null:
return $default(_that.phone,_that.isVerified,_that.id,_that.authType,_that.authProvider,_that.ssoId,_that.name,_that.userScore,_that.gender,_that.address,_that.deviceId,_that.relationship,_that.dateOfBirth,_that.email,_that.parentFcmToken,_that.profilePic,_that.userType,_that.suspended,_that.active,_that.isMainProfile,_that.isTempPassword,_that.referralCode,_that.countryId,_that.socketId,_that.referredBy,_that.mainUserId,_that.organizationId,_that.country,_that.parent,_that.profiles,_that.referrer,_that.userCourses);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserDto implements UserDto {
  const _UserDto({required this.phone, @JsonKey(name: 'is_verified') this.isVerified = false, this.id, @JsonKey(name: 'auth_type') this.authType, @JsonKey(name: 'auth_provider') this.authProvider, @JsonKey(name: 'sso_id') this.ssoId, this.name, @JsonKey(name: 'user_score') this.userScore, this.gender, this.address, this.deviceId, this.relationship, @JsonKey(name: 'date_of_birth') this.dateOfBirth, this.email, @JsonKey(name: 'parent_fcm_token') this.parentFcmToken, @JsonKey(name: 'profile_pic') this.profilePic, @JsonKey(name: 'user_type') this.userType, this.suspended, this.active, @JsonKey(name: 'is_mainProfile') this.isMainProfile, @JsonKey(name: 'is_temp_password') this.isTempPassword, @JsonKey(name: 'referral_code') this.referralCode, @JsonKey(name: 'country_id') this.countryId, @JsonKey(name: 'socket_id') this.socketId, @JsonKey(name: 'referred_by') this.referredBy, @JsonKey(name: 'main_userId') this.mainUserId, @JsonKey(name: 'organization_id') this.organizationId, this.country, this.parent, final  List<UserProfileDto>? profiles, this.referrer, @JsonKey(name: 'user_courses') final  List<UserCourseDto>? userCourses}): _profiles = profiles,_userCourses = userCourses;
  factory _UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);

// Required fields first
@override final  String phone;
@override@JsonKey(name: 'is_verified') final  bool isVerified;
// Nullable fields
@override final  int? id;
@override@JsonKey(name: 'auth_type') final  String? authType;
@override@JsonKey(name: 'auth_provider') final  String? authProvider;
@override@JsonKey(name: 'sso_id') final  String? ssoId;
@override final  String? name;
@override@JsonKey(name: 'user_score') final  int? userScore;
@override final  String? gender;
@override final  String? address;
@override final  String? deviceId;
@override final  String? relationship;
@override@JsonKey(name: 'date_of_birth') final  String? dateOfBirth;
@override final  String? email;
@override@JsonKey(name: 'parent_fcm_token') final  String? parentFcmToken;
@override@JsonKey(name: 'profile_pic') final  String? profilePic;
@override@JsonKey(name: 'user_type') final  String? userType;
@override final  bool? suspended;
@override final  bool? active;
@override@JsonKey(name: 'is_mainProfile') final  bool? isMainProfile;
@override@JsonKey(name: 'is_temp_password') final  bool? isTempPassword;
@override@JsonKey(name: 'referral_code') final  String? referralCode;
@override@JsonKey(name: 'country_id') final  int? countryId;
@override@JsonKey(name: 'socket_id') final  String? socketId;
@override@JsonKey(name: 'referred_by') final  String? referredBy;
@override@JsonKey(name: 'main_userId') final  int? mainUserId;
@override@JsonKey(name: 'organization_id') final  int? organizationId;
@override final  CountryDto? country;
@override final  dynamic parent;
 final  List<UserProfileDto>? _profiles;
@override List<UserProfileDto>? get profiles {
  final value = _profiles;
  if (value == null) return null;
  if (_profiles is EqualUnmodifiableListView) return _profiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  dynamic referrer;
 final  List<UserCourseDto>? _userCourses;
@override@JsonKey(name: 'user_courses') List<UserCourseDto>? get userCourses {
  final value = _userCourses;
  if (value == null) return null;
  if (_userCourses is EqualUnmodifiableListView) return _userCourses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDtoCopyWith<_UserDto> get copyWith => __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDto&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.id, id) || other.id == id)&&(identical(other.authType, authType) || other.authType == authType)&&(identical(other.authProvider, authProvider) || other.authProvider == authProvider)&&(identical(other.ssoId, ssoId) || other.ssoId == ssoId)&&(identical(other.name, name) || other.name == name)&&(identical(other.userScore, userScore) || other.userScore == userScore)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.address, address) || other.address == address)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.relationship, relationship) || other.relationship == relationship)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.email, email) || other.email == email)&&(identical(other.parentFcmToken, parentFcmToken) || other.parentFcmToken == parentFcmToken)&&(identical(other.profilePic, profilePic) || other.profilePic == profilePic)&&(identical(other.userType, userType) || other.userType == userType)&&(identical(other.suspended, suspended) || other.suspended == suspended)&&(identical(other.active, active) || other.active == active)&&(identical(other.isMainProfile, isMainProfile) || other.isMainProfile == isMainProfile)&&(identical(other.isTempPassword, isTempPassword) || other.isTempPassword == isTempPassword)&&(identical(other.referralCode, referralCode) || other.referralCode == referralCode)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.socketId, socketId) || other.socketId == socketId)&&(identical(other.referredBy, referredBy) || other.referredBy == referredBy)&&(identical(other.mainUserId, mainUserId) || other.mainUserId == mainUserId)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.country, country) || other.country == country)&&const DeepCollectionEquality().equals(other.parent, parent)&&const DeepCollectionEquality().equals(other._profiles, _profiles)&&const DeepCollectionEquality().equals(other.referrer, referrer)&&const DeepCollectionEquality().equals(other._userCourses, _userCourses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,phone,isVerified,id,authType,authProvider,ssoId,name,userScore,gender,address,deviceId,relationship,dateOfBirth,email,parentFcmToken,profilePic,userType,suspended,active,isMainProfile,isTempPassword,referralCode,countryId,socketId,referredBy,mainUserId,organizationId,country,const DeepCollectionEquality().hash(parent),const DeepCollectionEquality().hash(_profiles),const DeepCollectionEquality().hash(referrer),const DeepCollectionEquality().hash(_userCourses)]);

@override
String toString() {
  return 'UserDto(phone: $phone, isVerified: $isVerified, id: $id, authType: $authType, authProvider: $authProvider, ssoId: $ssoId, name: $name, userScore: $userScore, gender: $gender, address: $address, deviceId: $deviceId, relationship: $relationship, dateOfBirth: $dateOfBirth, email: $email, parentFcmToken: $parentFcmToken, profilePic: $profilePic, userType: $userType, suspended: $suspended, active: $active, isMainProfile: $isMainProfile, isTempPassword: $isTempPassword, referralCode: $referralCode, countryId: $countryId, socketId: $socketId, referredBy: $referredBy, mainUserId: $mainUserId, organizationId: $organizationId, country: $country, parent: $parent, profiles: $profiles, referrer: $referrer, userCourses: $userCourses)';
}


}

/// @nodoc
abstract mixin class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) _then) = __$UserDtoCopyWithImpl;
@override @useResult
$Res call({
 String phone,@JsonKey(name: 'is_verified') bool isVerified, int? id,@JsonKey(name: 'auth_type') String? authType,@JsonKey(name: 'auth_provider') String? authProvider,@JsonKey(name: 'sso_id') String? ssoId, String? name,@JsonKey(name: 'user_score') int? userScore, String? gender, String? address, String? deviceId, String? relationship,@JsonKey(name: 'date_of_birth') String? dateOfBirth, String? email,@JsonKey(name: 'parent_fcm_token') String? parentFcmToken,@JsonKey(name: 'profile_pic') String? profilePic,@JsonKey(name: 'user_type') String? userType, bool? suspended, bool? active,@JsonKey(name: 'is_mainProfile') bool? isMainProfile,@JsonKey(name: 'is_temp_password') bool? isTempPassword,@JsonKey(name: 'referral_code') String? referralCode,@JsonKey(name: 'country_id') int? countryId,@JsonKey(name: 'socket_id') String? socketId,@JsonKey(name: 'referred_by') String? referredBy,@JsonKey(name: 'main_userId') int? mainUserId,@JsonKey(name: 'organization_id') int? organizationId, CountryDto? country, dynamic parent, List<UserProfileDto>? profiles, dynamic referrer,@JsonKey(name: 'user_courses') List<UserCourseDto>? userCourses
});


@override $CountryDtoCopyWith<$Res>? get country;

}
/// @nodoc
class __$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(this._self, this._then);

  final _UserDto _self;
  final $Res Function(_UserDto) _then;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phone = null,Object? isVerified = null,Object? id = freezed,Object? authType = freezed,Object? authProvider = freezed,Object? ssoId = freezed,Object? name = freezed,Object? userScore = freezed,Object? gender = freezed,Object? address = freezed,Object? deviceId = freezed,Object? relationship = freezed,Object? dateOfBirth = freezed,Object? email = freezed,Object? parentFcmToken = freezed,Object? profilePic = freezed,Object? userType = freezed,Object? suspended = freezed,Object? active = freezed,Object? isMainProfile = freezed,Object? isTempPassword = freezed,Object? referralCode = freezed,Object? countryId = freezed,Object? socketId = freezed,Object? referredBy = freezed,Object? mainUserId = freezed,Object? organizationId = freezed,Object? country = freezed,Object? parent = freezed,Object? profiles = freezed,Object? referrer = freezed,Object? userCourses = freezed,}) {
  return _then(_UserDto(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,authType: freezed == authType ? _self.authType : authType // ignore: cast_nullable_to_non_nullable
as String?,authProvider: freezed == authProvider ? _self.authProvider : authProvider // ignore: cast_nullable_to_non_nullable
as String?,ssoId: freezed == ssoId ? _self.ssoId : ssoId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,userScore: freezed == userScore ? _self.userScore : userScore // ignore: cast_nullable_to_non_nullable
as int?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,relationship: freezed == relationship ? _self.relationship : relationship // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,parentFcmToken: freezed == parentFcmToken ? _self.parentFcmToken : parentFcmToken // ignore: cast_nullable_to_non_nullable
as String?,profilePic: freezed == profilePic ? _self.profilePic : profilePic // ignore: cast_nullable_to_non_nullable
as String?,userType: freezed == userType ? _self.userType : userType // ignore: cast_nullable_to_non_nullable
as String?,suspended: freezed == suspended ? _self.suspended : suspended // ignore: cast_nullable_to_non_nullable
as bool?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,isMainProfile: freezed == isMainProfile ? _self.isMainProfile : isMainProfile // ignore: cast_nullable_to_non_nullable
as bool?,isTempPassword: freezed == isTempPassword ? _self.isTempPassword : isTempPassword // ignore: cast_nullable_to_non_nullable
as bool?,referralCode: freezed == referralCode ? _self.referralCode : referralCode // ignore: cast_nullable_to_non_nullable
as String?,countryId: freezed == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as int?,socketId: freezed == socketId ? _self.socketId : socketId // ignore: cast_nullable_to_non_nullable
as String?,referredBy: freezed == referredBy ? _self.referredBy : referredBy // ignore: cast_nullable_to_non_nullable
as String?,mainUserId: freezed == mainUserId ? _self.mainUserId : mainUserId // ignore: cast_nullable_to_non_nullable
as int?,organizationId: freezed == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as int?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as CountryDto?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as dynamic,profiles: freezed == profiles ? _self._profiles : profiles // ignore: cast_nullable_to_non_nullable
as List<UserProfileDto>?,referrer: freezed == referrer ? _self.referrer : referrer // ignore: cast_nullable_to_non_nullable
as dynamic,userCourses: freezed == userCourses ? _self._userCourses : userCourses // ignore: cast_nullable_to_non_nullable
as List<UserCourseDto>?,
  ));
}

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CountryDtoCopyWith<$Res>? get country {
    if (_self.country == null) {
    return null;
  }

  return $CountryDtoCopyWith<$Res>(_self.country!, (value) {
    return _then(_self.copyWith(country: value));
  });
}
}

// dart format on
