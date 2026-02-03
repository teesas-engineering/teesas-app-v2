import 'package:freezed_annotation/freezed_annotation.dart';

import 'country_dto.dart';
import 'user_course_dto.dart';
import 'user_profile_dto.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
abstract class UserDto with _$UserDto {
  const factory UserDto({
    // Required fields first
    required String phone,
    @Default(false) @JsonKey(name: 'is_verified') bool isVerified,
    // Nullable fields
    int? id,
    @JsonKey(name: 'auth_type') String? authType,
    @JsonKey(name: 'auth_provider') String? authProvider,
    @JsonKey(name: 'sso_id') String? ssoId,
    String? name,
    @JsonKey(name: 'user_score') int? userScore,
    String? gender,
    String? address,
    String? deviceId,
    String? relationship,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    String? email,
    @JsonKey(name: 'parent_fcm_token') String? parentFcmToken,
    @JsonKey(name: 'profile_pic') String? profilePic,
    @JsonKey(name: 'user_type') String? userType,
    bool? suspended,
    bool? active,
    @JsonKey(name: 'is_mainProfile') bool? isMainProfile,
    @JsonKey(name: 'is_temp_password') bool? isTempPassword,
    @JsonKey(name: 'referral_code') String? referralCode,
    @JsonKey(name: 'country_id') int? countryId,
    @JsonKey(name: 'socket_id') String? socketId,
    @JsonKey(name: 'referred_by') String? referredBy,
    @JsonKey(name: 'main_userId') int? mainUserId,
    @JsonKey(name: 'organization_id') int? organizationId,
    CountryDto? country,
    dynamic parent,
    List<UserProfileDto>? profiles,
    dynamic referrer,
    @JsonKey(name: 'user_courses') List<UserCourseDto>? userCourses,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
