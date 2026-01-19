import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

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
    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
      ),
    );
    return dio;
  }
}
