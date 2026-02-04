// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../common/utils/app_config.dart';
import '../../../../../common/utils/base_dto.dart';
import '../../dto/forgot_password_dto/forgot_password_dto.dart';
import '../../dto/login_dto/login_dto.dart';
import '../../dto/send_otp_dto/send_otp_dto.dart';
import '../../dto/sign_up_dto/sign_up_dto.dart';
import '../../dto/update_password_dto/update_password_dto.dart';
import '../../dto/verify_forgot_password_dto/verify_forgot_password_dto.dart';
import '../../dto/verify_otp_dto/verify_otp_dto.dart';

part 'auth_source.g.dart';

@RestApi(baseUrl: '${AppConfig.baseUrl}/auth/')
abstract class AuthSource {
  factory AuthSource(Dio dio) = _AuthSource;

  @POST('sign-in')
  Future<BaseDto> login(@Body() LoginDto model);

  @POST('forgot-password')
  Future<BaseDto> forgotPassword(@Body() ForgotPasswordDto model);

  @POST('sign-up')
  Future<BaseDto> signUp(@Body() SignUpDto model);

  @POST('send-otp')
  Future<BaseDto> sendOtp(@Body() SendOtpDto model);

  @POST('verify-otp')
  Future<BaseDto> verifyOtp(@Body() VerifyOtpDto model);

  @POST('verify-forgot-password')
  Future<BaseDto> verifyForgotPassword(@Body() VerifyForgotPasswordDto model);

  @POST('update-password')
  Future<BaseDto> updatePassword(@Body() UpdatePasswordDto model);
}
