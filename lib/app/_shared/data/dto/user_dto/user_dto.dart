import 'package:json_annotation/json_annotation.dart';
import '../../../enum/gender.dart';
import '../get_countries_dto/get_countries_country_dto.dart';
import 'user_course_dto.dart';
import 'user_profile_dto.dart';

part 'user_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class UserDto {

  const UserDto({
    required this.phone,
    this.isVerified = false,
    this.id,
    this.authType,
    this.authProvider,
    this.ssoId,
    this.name,
    this.userScore,
    this.gender,
    this.address,
    this.deviceId,
    this.relationship,
    this.dateOfBirth,
    this.email,
    this.parentFcmToken,
    this.profilePic,
    this.userType,
    this.suspended,
    this.active,
    this.isMainProfile,
    this.isTempPassword,
    this.referralCode,
    this.countryId,
    this.socketId,
    this.referredBy,
    this.mainUserId,
    this.organizationId,
    this.country,
    this.parent,
    this.profiles,
    this.referrer,
    this.userCourses,
  });

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
  final String phone;

  @JsonKey(name: 'is_verified')
  final bool isVerified;

  final int? id;

  @JsonKey(name: 'auth_type')
  final String? authType;

  @JsonKey(name: 'auth_provider')
  final String? authProvider;

  @JsonKey(name: 'sso_id')
  final String? ssoId;

  final String? name;

  @JsonKey(name: 'user_score')
  final int? userScore;

  @JsonKey(fromJson: genderFromJson, toJson: genderToJson)
  final Gender? gender;

  final String? address;
  final String? deviceId;
  final String? relationship;

  @JsonKey(name: 'date_of_birth')
  final String? dateOfBirth;

  final String? email;

  @JsonKey(name: 'parent_fcm_token')
  final String? parentFcmToken;

  @JsonKey(name: 'profile_pic')
  final String? profilePic;

  @JsonKey(name: 'user_type')
  final String? userType;

  final bool? suspended;
  final bool? active;

  @JsonKey(name: 'is_mainProfile')
  final bool? isMainProfile;

  @JsonKey(name: 'is_temp_password')
  final bool? isTempPassword;

  @JsonKey(name: 'referral_code')
  final String? referralCode;

  @JsonKey(name: 'country_id')
  final int? countryId;

  @JsonKey(name: 'socket_id')
  final String? socketId;

  @JsonKey(name: 'referred_by')
  final String? referredBy;

  @JsonKey(name: 'main_userId')
  final int? mainUserId;

  @JsonKey(name: 'organization_id')
  final int? organizationId;

  final CountryDto? country;
  final dynamic parent;
  final List<UserProfileDto>? profiles;
  final dynamic referrer;

  @JsonKey(name: 'user_courses')
  final List<UserCourseDto>? userCourses;

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);
}
