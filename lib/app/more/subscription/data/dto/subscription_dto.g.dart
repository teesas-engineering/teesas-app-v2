// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionListResponseDto _$SubscriptionListResponseDtoFromJson(
  Map<String, dynamic> json,
) => SubscriptionListResponseDto(
  subscriptionList:
      (json['subscriptionList'] as List<dynamic>?)
          ?.map((e) => SubscriptionGroupDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

SubscriptionGroupDto _$SubscriptionGroupDtoFromJson(
  Map<String, dynamic> json,
) => SubscriptionGroupDto(
  course: json['course'] as String,
  className: json['class_name'] as String,
  subscription:
      (json['subscription'] as List<dynamic>?)
          ?.map((e) => SubscriptionItemDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

SubscriptionItemDto _$SubscriptionItemDtoFromJson(Map<String, dynamic> json) =>
    SubscriptionItemDto(
      id: (json['id'] as num).toInt(),
      planId: json['plan_id'] as String,
      planIdInapp: json['plan_id_inapp'] as String,
      description: json['description'] as String,
      amount: (json['amount'] as num).toDouble(),
      time: (json['time'] as num).toInt(),
    );
