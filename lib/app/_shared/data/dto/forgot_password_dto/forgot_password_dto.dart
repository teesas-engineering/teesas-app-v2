import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_dto.freezed.dart';
part 'forgot_password_dto.g.dart';

@freezed
abstract class ForgotPasswordDto with _$ForgotPasswordDto {
  const factory ForgotPasswordDto({
    required String phone,
  }) = _ForgotPasswordDto;

  factory ForgotPasswordDto.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordDtoFromJson(json);
}
