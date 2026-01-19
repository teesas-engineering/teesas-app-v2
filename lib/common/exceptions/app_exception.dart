class ApiException implements Exception {
  final String message;
  final int? statusCode;
  final String? errorType;

  ApiException(this.message, {this.statusCode,this.errorType});

  @override
  String toString() => message;
}
