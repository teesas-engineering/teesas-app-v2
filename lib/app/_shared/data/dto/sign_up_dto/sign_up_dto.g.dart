// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpDto _$SignUpDtoFromJson(Map<String, dynamic> json) => SignUpDto(
  name: json['name'] as String,
  userType: json['user_type'] as String? ?? 'USER',
  phone: json['phone'] as String,
  countryId: (json['country_id'] as num).toInt(),
  dateOfBirth: json['date_of_birth'] as String,
  gender: genderFromJson(json['gender']),
  email: json['email'] as String,
  password: json['password'] as String,
  deviceId: json['deviceId'] as String?,
  parentName: json['parentName'] as String?,
  parentPhoneNumber: json['parentPhoneNumber'] as String?,
);

Map<String, dynamic> _$SignUpDtoToJson(SignUpDto instance) => <String, dynamic>{
  'name': instance.name,
  'user_type': instance.userType,
  'phone': instance.phone,
  'country_id': instance.countryId,
  'date_of_birth': instance.dateOfBirth,
  'gender': genderToJson(instance.gender),
  'email': instance.email,
  'password': instance.password,
  'deviceId': instance.deviceId,
  'parentName': instance.parentName,
  'parentPhoneNumber': instance.parentPhoneNumber,
};
