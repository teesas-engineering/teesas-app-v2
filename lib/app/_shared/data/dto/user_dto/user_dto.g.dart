// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDto _$UserDtoFromJson(Map<String, dynamic> json) => UserDto(
  phone: json['phone'] as String?,
  isVerified: json['is_verified'] as bool? ?? false,
  id: (json['id'] as num?)?.toInt(),
  authType: json['auth_type'] as String?,
  authProvider: json['auth_provider'] as String?,
  ssoId: json['sso_id'] as String?,
  name: json['name'] as String?,
  userScore: (json['user_score'] as num?)?.toInt(),
  gender: genderFromJson(json['gender']),
  address: json['address'] as String?,
  deviceId: json['deviceId'] as String?,
  relationship: json['relationship'] as String?,
  dateOfBirth: json['date_of_birth'] as String?,
  email: json['email'] as String?,
  parentFcmToken: json['parent_fcm_token'] as String?,
  profilePic: json['profile_pic'] as String?,
  userType: json['user_type'] as String?,
  suspended: json['suspended'] as bool?,
  active: json['active'] as bool?,
  isMainProfile: json['is_mainProfile'] as bool?,
  isTempPassword: json['is_temp_password'] as bool?,
  referralCode: json['referral_code'] as String?,
  countryId: (json['country_id'] as num?)?.toInt(),
  socketId: json['socket_id'] as String?,
  referredBy: json['referred_by'] as String?,
  mainUserId: (json['main_userId'] as num?)?.toInt(),
  organizationId: (json['organization_id'] as num?)?.toInt(),
  country: json['country'] == null
      ? null
      : CountryDto.fromJson(json['country'] as Map<String, dynamic>),
  parent: json['parent'],
  profiles: (json['profiles'] as List<dynamic>?)
      ?.map((e) => UserProfileDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  referrer: json['referrer'],
  userCourses: (json['user_courses'] as List<dynamic>?)
      ?.map((e) => UserCourseDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$UserDtoToJson(UserDto instance) => <String, dynamic>{
  'phone': instance.phone,
  'is_verified': instance.isVerified,
  'id': instance.id,
  'auth_type': instance.authType,
  'auth_provider': instance.authProvider,
  'sso_id': instance.ssoId,
  'name': instance.name,
  'user_score': instance.userScore,
  'gender': genderToJson(instance.gender),
  'address': instance.address,
  'deviceId': instance.deviceId,
  'relationship': instance.relationship,
  'date_of_birth': instance.dateOfBirth,
  'email': instance.email,
  'parent_fcm_token': instance.parentFcmToken,
  'profile_pic': instance.profilePic,
  'user_type': instance.userType,
  'suspended': instance.suspended,
  'active': instance.active,
  'is_mainProfile': instance.isMainProfile,
  'is_temp_password': instance.isTempPassword,
  'referral_code': instance.referralCode,
  'country_id': instance.countryId,
  'socket_id': instance.socketId,
  'referred_by': instance.referredBy,
  'main_userId': instance.mainUserId,
  'organization_id': instance.organizationId,
  'country': instance.country?.toJson(),
  'parent': instance.parent,
  'profiles': instance.profiles?.map((e) => e.toJson()).toList(),
  'referrer': instance.referrer,
  'user_courses': instance.userCourses?.map((e) => e.toJson()).toList(),
};
