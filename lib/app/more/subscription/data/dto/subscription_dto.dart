import 'package:json_annotation/json_annotation.dart';

part 'subscription_dto.g.dart';

@JsonSerializable(createToJson: false)
class SubscriptionListResponseDto {
  const SubscriptionListResponseDto({this.subscriptionList = const []});

  factory SubscriptionListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionListResponseDtoFromJson(json);

  final List<SubscriptionGroupDto> subscriptionList;
}

@JsonSerializable(createToJson: false)
class SubscriptionGroupDto {
  const SubscriptionGroupDto({
    required this.course,
    required this.className,
    this.subscription = const [],
  });

  factory SubscriptionGroupDto.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionGroupDtoFromJson(json);

  final String course;
  @JsonKey(name: 'class_name')
  final String className;
  final List<SubscriptionItemDto> subscription;
}

@JsonSerializable(createToJson: false)
class SubscriptionItemDto {
  const SubscriptionItemDto({
    required this.id,
    required this.planId,
    required this.planIdInapp,
    required this.description,
    required this.amount,
  });

  factory SubscriptionItemDto.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionItemDtoFromJson(json);

  final int id;
  @JsonKey(name: 'plan_id')
  final String planId;
  @JsonKey(name: 'plan_id_inapp')
  final String planIdInapp;
  final String description;
  final double amount;
}
