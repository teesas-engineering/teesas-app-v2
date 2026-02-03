import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

import '../constants/app_constants.dart';
import '../exceptions/app_exception.dart';
import '../services/secured_storage_service.dart';

@lazySingleton
class NetworkInterceptor extends Interceptor {
  NetworkInterceptor(this._secureStorageService);

  final SecureStorageService _secureStorageService;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final String? token = await _secureStorageService.getToken();
    options.headers['x-api-key'] = AppConstant.apiKey;
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final data = response.data as Map<String, dynamic>;
    final responseValue = data['data'];
    if (responseValue is Map<String, dynamic>) {
      final responseData = data['data'] as Map<String, dynamic>?;
      final token = responseData?['token'] as String?;
      if (token != null) {
        _secureStorageService.saveToken(token);
      }
    }
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    String errorMessage = 'Something went wrong';
    String? errorType;
    final int? statusCode = err.response?.statusCode;

    if (err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.receiveTimeout) {
      errorMessage = 'Connection timeout, please try again.';
    } else if (err.type == DioExceptionType.badResponse) {
      try {
        final json = err.response?.data as Map<String, dynamic>;

        final errorJson = json['error'] as Map<String, dynamic>;
        final message = errorJson['message'] as String?;
        errorType = errorJson['errorType'] as String?;
        switch (statusCode) {
          case 400:
            errorMessage = message ?? 'Bad request. Please check your input.';
          case 401:
            errorMessage = message ?? 'Unauthorized. Please log in again.';
          case 403:
            errorMessage = message ?? 'Forbidden access.';
          case 404:
            errorMessage = message ?? 'Resource not found.';
          case 500:
            errorMessage = message ?? 'Internal server error. Try again later.';
          default:
            errorMessage = message ?? 'Unexpected error occurred.';
        }
      } catch (e) {
        errorMessage = e.toString();
      }
      debugPrint(
        '🔴 🔴  API ERROR ${err.response?.realUri.path}\n-> ${err.response?.data}',
      );

      //What does the  mean?
    } else if (err.type == DioExceptionType.cancel) {
      errorMessage = 'Request was cancelled.';
    } else if (err.type == DioExceptionType.unknown) {
      debugPrintStack(stackTrace: err.stackTrace);
      errorMessage = 'No internet connection.';
    }

    handler.reject(
      DioException(
        requestOptions: err.requestOptions,
        response: err.response,
        type: err.type,
        error: ApiException(
          errorMessage,
          statusCode: statusCode,
          errorType: errorType,
        ),
      ),
    );
  }
}
