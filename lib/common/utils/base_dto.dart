class BaseDto {
  final int? status;
  final String message;
  final dynamic data;

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

    return BaseDto(status: 200, message: json['message'] ?? "", data: data);
  }
}

class BaseDtoList extends BaseDto {
  @override
  final int status;
  @override
  final String message;
  @override
  final List<Map<String, dynamic>> data;

  const BaseDtoList({
    required this.status,
    required this.message,
    required this.data,
  }) : super(status: status, message: message, data: data);

  factory BaseDtoList.fromJson(Map<String, dynamic> json) {
    return BaseDtoList(
      status: 200,
      message: json['message'],
      data: json['data'] as List<Map<String, dynamic>>,
    );
  }
}
