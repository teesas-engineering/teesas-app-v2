import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../app/_shared/data/source/auth_source/auth_source.dart';
import '../../app/_shared/data/source/profile_source/profile_source.dart';
import '../../app/_shared/data/source/util_source/util_source.dart';
import '../../common/network/network_interceptor.dart';
import '../../common/utils/app_config.dart';

@module
abstract class AppModule {
  @lazySingleton
  Dio dio(NetworkInterceptor interceptor) {
    final dio = Dio();
    dio.interceptors.add(interceptor);
    dio.options = BaseOptions(
      baseUrl: AppConfig.baseUrl,
      connectTimeout: Duration(seconds: AppConfig.connectionTimeout),
      sendTimeout: Duration(seconds: AppConfig.connectionTimeout),
      receiveTimeout: Duration(seconds: AppConfig.connectionTimeout),
      persistentConnection: true,
    );
    dio.interceptors.add(LogInterceptor(responseBody: true,requestBody: true));
    return dio;
  }

  @lazySingleton
  AuthSource getAuthSource(Dio dio) => AuthSource(dio);

  @lazySingleton
  UtilSource getUtilSource(Dio dio) => UtilSource(dio);

  @lazySingleton
  ProfileSource getProfileSource(Dio dio) => ProfileSource(dio);
}
