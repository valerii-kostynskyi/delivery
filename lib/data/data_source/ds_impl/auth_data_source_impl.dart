import 'package:delivery/data/data_source/auth_data_source.dart';
import 'package:delivery/presentation/utility/error_handler/error_handler.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthDataSourceImpl implements AuthDataSource {
  final FlutterSecureStorage secureStorage;
  final ErrorHandler errorHandler;
  final Dio dio;
  final String api;

  AuthDataSourceImpl({
    required this.secureStorage,
    required this.errorHandler,
    required this.dio,
    required this.api,
  });

  @override
  Future<void> clearTokens() async {
    try {
      print('clearTokens()');
      await secureStorage.delete(key: 'auth_token');
      await secureStorage.delete(key: 'car_number');
      await secureStorage.delete(key: 'role');
      await secureStorage.deleteAll();
    } catch (e) {
      throw errorHandler.handle(e);
    }
  }

  @override
  Future<String?> getAuthToken() async {
    try {
      final token = await secureStorage.read(key: 'auth_token');
      print('Retrieved authToken: $token');
      return token;
    } catch (e) {
      print('Error retrieving authToken: $e');
      throw errorHandler.handle(e);
    }
  }

  @override
  Future<String> getCarNumber() async {
    try {
      return await secureStorage.read(key: 'car_number') ?? '';
    } catch (e) {
      throw errorHandler.handle(e);
    }
  }

  @override
  Future<String> getRole() async {
    try {
      return await secureStorage.read(key: 'role') ?? '';
    } catch (e) {
      throw errorHandler.handle(e);
    }
  }

  @override
  Future<void> saveCredentials({
    required String authToken,
    required String carNumber,
    required String role,
  }) async {
    try {
      print(
          'Saving credentials: authToken=$authToken, carNumber=$carNumber, role=$role');
      await secureStorage.write(key: 'auth_token', value: authToken);
      await secureStorage.write(key: 'car_number', value: carNumber);
      await secureStorage.write(key: 'role', value: role);
    } catch (e) {
      print('Error saving credentials: $e');
      throw errorHandler.handle(e);
    }
  }

  @override
  Future<bool> verifyToken(token) async {
    return false;
  }
}
