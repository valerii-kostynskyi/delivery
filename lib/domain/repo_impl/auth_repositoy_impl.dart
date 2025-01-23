import 'package:delivery/data/data_source/api_data_source.dart';
import 'package:delivery/data/data_source/auth_data_source.dart';
import 'package:delivery/data/data_source/mock_data_source.dart';
import 'package:delivery/domain/auth_repositoy.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource authDataSource;
  final ApiDataSource apiDataSource;
  final MockDataSource mockDataSource;

  AuthRepositoryImpl({
    required this.authDataSource,
    required this.apiDataSource,
    required this.mockDataSource,
  });

  @override
  Future<bool> isAuthenticated() async {
    final String? token = await authDataSource.getAuthToken();
    if (token != null && token.isNotEmpty) {
      return true;
    }
    return false;
  }

  @override
  Future<String?> login({
    required String carNumber,
    required String password,
  }) async {
    // final AuthModel? authModel = await apiDataSource.login(
    //   carNumber: carNumber,
    //   password: password,
    // );
    // if (authModel != null && authModel.accessToken.isNotEmpty) {
    //   log('accessToken = ${authModel.accessToken}\n carNumner = $carNumber\n role = ${authModel.role}');
    //   await authDataSource.saveCredentials(
    //     authToken: authModel.accessToken,
    //     carNumber: carNumber,
    //     role: authModel.role,
    //   );
    //   return authModel.role;
    // }
    return null;
  }

  @override
  Future<String> getCarNumber() async {
    return await authDataSource.getCarNumber();
  }

  @override
  Future<String> getRole() async {
    return await authDataSource.getRole();
  }

  @override
  Future<void> logout() async {
    await authDataSource.clearTokens();
  }
}
