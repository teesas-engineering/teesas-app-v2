class BaseDto {

  const BaseDto({
    required this.status,
    required this.message,
    required this.data,
  });

  factory BaseDto.fromJson(Map<String, dynamic> json) {
    dynamic data = json['data'];
    if (data is List) {
      data = json['data'] as List;
    }

    return BaseDto(status: 200, message: json['message'] ?? '', data: data);
  }
  final int? status;
  final String message;
  final dynamic data;
}
