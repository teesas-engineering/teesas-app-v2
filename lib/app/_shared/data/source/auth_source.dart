// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../common/utils/base_dto.dart';
import '../dto/login_dto.dart';
part 'auth_source.g.dart';

@RestApi()
abstract class AuthSource {
  factory AuthSource(Dio dio) = _AuthSource;

  @GET('v1/auth/sign-in')
  Future<BaseDto> login(@Body()LoginDto model);

}
