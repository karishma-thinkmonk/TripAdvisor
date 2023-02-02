class ApiResponse {
  ApiResponse({
    this.status,
    required this.message,
  });

  ApiResponse.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
  }

  int? status;
  String? message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    return map;
  }
}
