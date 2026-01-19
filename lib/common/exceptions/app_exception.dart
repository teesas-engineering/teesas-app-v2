class ApiException implements Exception {

  ApiException(this.message, {this.statusCode,this.errorType});
  final String message;
  final int? statusCode;
  final String? errorType;

  @override
  String toString() => message;
}
