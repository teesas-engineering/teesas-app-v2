import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../common/network/network_interceptor.dart';
import '../../common/utils/app_config.dart';



@module
abstract class AppModule {
  @lazySingleton
  Dio dio(NetworkInterceptor interceptor) {
    final dio = Dio();

    // Add Interceptors
    dio.interceptors.add(interceptor);

    dio.options = BaseOptions(
      baseUrl: AppConfig.baseUrl,
      connectTimeout: Duration(seconds: AppConfig.connectionTimeout),
      sendTimeout: Duration(seconds: AppConfig.connectionTimeout),
      receiveTimeout: Duration(seconds: AppConfig.connectionTimeout),
      persistentConnection: true,
    );

    // Add request transformer to serialize objects with toJson()
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          if (options.data != null &&
              options.data is! String &&
              options.data is! List &&
              options.data is! Map) {
            try {
              // Try to call toJson() if the object has this method
              final jsonResult = (options.data as dynamic).toJson();
              if (jsonResult is Map<String, dynamic>) {
                options.data = jsonResult;
              }
            } on NoSuchMethodError {
              // If toJson doesn't exist, let Dio handle it normally
            } catch (e) {
              // If toJson fails for other reasons, let Dio handle it normally
            }
          }
          handler.next(options);
        },
      ),
    );

    // Enable logging
    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
      ),
    );

    return dio;
  }

}