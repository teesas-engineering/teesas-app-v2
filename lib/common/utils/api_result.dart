sealed class ApiResult<T> {
  const ApiResult();

  void when(
      {required void Function(T) onSuccess,
      required void Function(String) onError}) {
    final value = this;
    if (value is Success<T>) {
      onSuccess(value.data);
    }
    if (value is Failure<T>) {
      onError(value.error);
    }
  }
}

class Success<T> extends ApiResult<T> {

  const Success({required this.data});
  final T data;
}

class Failure<T> extends ApiResult<T> {

  const Failure({required this.error,this.code});
  final int? code;
  final String error;
}
