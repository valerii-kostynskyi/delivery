abstract class AuthDataSource {
  Future<String?> getAuthToken();

  Future<String> getCarNumber();

  Future<String> getRole();

  Future<void> saveCredentials({
    required String authToken,
    required String carNumber,
    required String role,
  });

  Future<void> clearTokens();

  Future<bool> verifyToken(token);
}
