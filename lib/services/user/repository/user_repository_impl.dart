import 'package:either_dart/src/either.dart';
import 'package:petbi_backend/models/failure/failure.dart';
import 'package:petbi_backend/models/responses/login_response.dart';
import 'package:petbi_backend/models/responses/signup_response.dart';
import 'package:petbi_backend/services/user/datasource/user_datasource.dart';
import 'package:petbi_backend/services/user/repository/user_repository.dart';

///
class UserRepositoryImpl implements UserRepository {
  ///
  UserRepositoryImpl({required this.userDataSource});

  ///
  final UserDataSource userDataSource;

  @override
  Future<Either<Failure, LoginResponse>> login({
    required String email,
    required String password,
  }) async {
    try {
      final userResponse = await userDataSource.login(
        email: email,
        password: password,
      );
      return Right(userResponse);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, SignupResponse>> signup({
    required String email,
    required String password,
  }) async {
    try {
      final response = await userDataSource.signup(
        email: email,
        password: password,
      );
      return Right(response);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
