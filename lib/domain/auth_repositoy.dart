abstract class AuthRepository {
  Future<String?> login({
    required String carNumber,
    required String password,
  });

  Future<void> logout();

  Future<String> getCarNumber();

  Future<String> getRole();

  Future<bool> isAuthenticated();
}
