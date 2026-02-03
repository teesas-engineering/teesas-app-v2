// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../common/utils/app_config.dart';
import '../../../../../common/utils/base_dto.dart';
import '../../dto/forgot_password_dto/forgot_password_dto.dart';
import '../../dto/login_dto/login_dto.dart';

part 'auth_source.g.dart';

@RestApi(baseUrl: '${AppConfig.baseUrl}/auth/')
abstract class AuthSource {
  factory AuthSource(Dio dio) = _AuthSource;

  @POST('sign-in')
  Future<BaseDto> login(@Body() LoginDto model);

  @POST('forgot-password')
  Future<BaseDto> forgotPassword(@Body() ForgotPasswordDto model);

}
