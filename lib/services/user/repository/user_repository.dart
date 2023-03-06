import 'package:petbi_backend/models/responses/login_response.dart';
import 'package:petbi_backend/models/responses/signup_response.dart';

/// Abstract class [UserRepository] defines business contracts to be implemented
abstract class UserRepository {
  /// Login an existing user.
  Future<LoginResponse> login({
    required String email,
    required String password,
  });

  /// Signup a new user.
  Future<SignupResponse> signup({
    required String email,
    required String passowrd,
    required String name,
  });
}
