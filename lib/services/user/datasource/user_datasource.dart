import 'package:petbi_backend/models/responses/login_response.dart';
import 'package:petbi_backend/models/responses/signup_response.dart';

///
abstract class UserDataSource {
  ///
  Future<SignupResponse> signup({
    required String email,
    required String password,
  });

  ///
  Future<LoginResponse> login({
    required String email,
    required String password,
  });
}
