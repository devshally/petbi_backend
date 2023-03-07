import 'package:either_dart/either.dart';
import 'package:petbi_backend/models/failure/failure.dart';
import 'package:petbi_backend/models/responses/login_response.dart';
import 'package:petbi_backend/models/responses/signup_response.dart';

/// Abstract class [UserRepository] defines business contracts to be implemented
abstract class UserRepository {
  /// Login an existing user.
  Future<Either<Failure, LoginResponse>> login({
    required String email,
    required String password,
  });

  /// Signup a new user.
  Future<Either<Failure, SignupResponse>> signup({
    required String email,
    required String password,
  });
}
