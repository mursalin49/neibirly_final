// lib/features/auth/data/repositories/auth_repository.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:naibrly/core/constants/api_constants.dart';
import 'package:naibrly/core/api/api_response.dart';
import 'package:naibrly/features/auth/data/models/provider_register_request.dart';

class AuthRepository {
  final String baseUrl = ApiConstants.baseUrl;
  final http.Client client;

  AuthRepository({required this.client});

  Future<ApiResponse<Map<String, dynamic>>> registerProvider(
      ProviderRegisterRequest request) async {
    try {
      final response = await client.post(
        Uri.parse('$baseUrl${ApiConstants.registerProvider}'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(request.toJson()),
      );

      final responseData = jsonDecode(response.body);

      if (response.statusCode == 201 || response.statusCode == 200) {
        return ApiResponse<Map<String, dynamic>>.fromJson(
          responseData,
              (data) => data,
        );
      } else {
        return ApiResponse<Map<String, dynamic>>(
          success: false,
          error: responseData['message'] ?? 'Registration failed',
        );
      }
    } catch (e) {
      return ApiResponse<Map<String, dynamic>>(
        success: false,
        error: 'An error occurred: $e',
      );
    }
  }
}