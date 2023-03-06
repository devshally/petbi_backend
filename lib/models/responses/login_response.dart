import 'package:petbi_backend/services/user/entity/user.dart';

/// [LoginResponse].
class LoginResponse {
  /// [LoginResponse] constructor.
  LoginResponse({
    required this.accessToken,
    required this.refreshToken,
    required this.user,
  });

  /// String [accessToken].
  final String accessToken;

  /// String [refreshToken].
  final String refreshToken;

  /// User [user].
  final User user;
}
