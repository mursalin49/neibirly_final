// lib/features/auth/presentation/viewmodels/provider_register_viewmodel.dart
import 'package:flutter/foundation.dart';
import 'package:naibrly/features/auth/data/models/provider_register_request.dart';
import 'package:naibrly/features/auth/data/repositories/auth_repository.dart';

class ProviderRegisterViewModel extends ChangeNotifier {
  final AuthRepository _authRepository;
  bool _isLoading = false;
  String? _error;

  ProviderRegisterViewModel({required AuthRepository authRepository})
      : _authRepository = authRepository;

  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<bool> registerProvider(ProviderRegisterRequest request) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final response = await _authRepository.registerProvider(request);
      _isLoading = false;

      if (response.success) {
        // Save token and user data to local storage
        // Navigate to next screen
        return true;
      } else {
        _error = response.error;
        notifyListeners();
        return false;
      }
    } catch (e) {
      _isLoading = false;
      _error = 'An error occurred: $e';
      notifyListeners();
      return false;
    }
  }

  void clearError() {
    _error = null;
    notifyListeners();
  }
}