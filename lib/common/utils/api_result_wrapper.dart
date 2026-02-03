import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import '../exceptions/app_exception.dart';
import 'api_result.dart';
import 'base_dto.dart';

class ApiResultWrapper {
  ApiResultWrapper._();

  static Future<ApiResult<T>> wrap<T>({
    required Future<BaseDto> Function() func,
    required T Function(dynamic) mapper,
  }) async {
    try {
      final result = await func.call();
      if (result.data==null) {
        return Failure(error: result.message, code: result.status);
      }
      final finalResult = mapper(result.data);
      return Success(data: finalResult);
    } on DioException catch (dioException, trace) {
      final error = dioException.error! as ApiException;
      debugPrintStack(stackTrace: trace);
      return Failure(error: error.message, code: -1);
    }
    catch (e, trace) {
      debugPrintStack(stackTrace: trace);
      return Failure(error: e.toString(), code: -1);
    }
  }

  static Future<ApiResult<T>> wrapList<T>({
    required Future<BaseDto> Function() func,
    required T Function(List<dynamic>) mapper,
  }) async {
    try {
      final result = await func.call();

      if (result.data==null) {
        return Failure(error: result.message, code: result.status);
      }
      if (result.data is List<dynamic>) {
        final list = result.data as List<dynamic>;
        final finalResult = mapper(list);
        return Success(data: finalResult);
      }
      final finalResult = mapper(result.data);
      return Success(data: finalResult);
    } on DioException catch (dioException) {
      final error = dioException.error! as ApiException;
      return Failure(error: error.message, code: -1);
    }
    catch (e) {
      return Failure(error: e.toString(), code: -1);
    }
  }

}
