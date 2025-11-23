// lib/core/api/api_response.dart
class ApiResponse<T> {
  final T? data;
  final String? error;
  final bool success;

  ApiResponse({
    this.data,
    this.error,
    required this.success,
  });

  factory ApiResponse.fromJson(
      Map<String, dynamic> json, T Function(dynamic) fromJson) {
    return ApiResponse<T>(
      data: json['data'] != null ? fromJson(json['data']) : null,
      error: json['message'],
      success: json['success'] ?? false,
    );
  }
}