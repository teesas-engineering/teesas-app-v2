import 'package:injectable/injectable.dart';

import '../../../../common/utils/api_result.dart';
import '../../../../common/utils/api_result_wrapper.dart';
import '../../data/dto/forgot_password_dto/forgot_password_dto.dart';
import '../../data/dto/login_dto/login_dto.dart';
import '../../data/dto/send_otp_dto/send_otp_dto.dart';
import '../../data/dto/send_otp_dto/send_otp_response_dto.dart';
import '../../data/dto/sign_up_dto/sign_up_dto.dart';
import '../../data/dto/update_password_dto/update_password_dto.dart';
import '../../data/dto/user_dto/user_dto.dart';
import '../../data/dto/verify_forgot_password_dto/verify_forgot_password_dto.dart';
import '../../data/dto/verify_otp_dto/verify_otp_dto.dart';
import '../../data/source/auth_source/auth_source.dart';

@lazySingleton
class AuthRepository {
  AuthRepository(this._source);

  final AuthSource _source;

  Future<ApiResult<UserDto>> login(LoginDto model) async {
    return ApiResultWrapper.wrap(
      func: () => _source.login(model),
      mapper: (data) => UserDto.fromJson(data as Map<String, dynamic>),
    );
  }

  Future<ApiResult<bool>> forgotPassword(ForgotPasswordDto model) async {
    return ApiResultWrapper.wrap(
      func: () => _source.forgotPassword(model),
      mapper: (_) => true,
    );
  }

  Future<ApiResult<UserDto>> signUp(SignUpDto model) async {
    return ApiResultWrapper.wrap(
      func: () => _source.signUp(model),
      mapper: (data) => UserDto.fromJson(data as Map<String, dynamic>),
    );
  }

  Future<ApiResult<SendOtpResponseDto>> sendOtp(SendOtpDto model) async {
    return ApiResultWrapper.wrap(
      func: () => _source.sendOtp(model),
      mapper: (data) =>
          SendOtpResponseDto.fromJson(data as Map<String, dynamic>),
    );
  }

  Future<ApiResult<UserDto>> verifyOtp(VerifyOtpDto model) async {
    return ApiResultWrapper.wrap(
      func: () => _source.verifyOtp(model),
      mapper: (data) =>
          UserDto.fromJson(data as Map<String, dynamic>),
    );
  }

  Future<ApiResult<bool>> verifyForgotPassword(
      VerifyForgotPasswordDto model) async {
    return ApiResultWrapper.wrap(
      func: () => _source.verifyForgotPassword(model),
      mapper: (_) => true,
    );
  }

  Future<ApiResult<bool>> updatePassword(UpdatePasswordDto model) async {
    return ApiResultWrapper.wrap(
      func: () => _source.updatePassword(model),
      mapper: (_) => true,
    );
  }
}
