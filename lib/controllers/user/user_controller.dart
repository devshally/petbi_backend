import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:petbi_backend/models/responses/login_response.dart';
import 'package:petbi_backend/models/responses/signup_response.dart';
import 'package:petbi_backend/services/user/entity/user.dart';

/// [UserController].
class UserController {
  /// [UserController] constructor.
  UserController({required this.firebaseAuth});

  /// FirebaseAuth class to handle user authentication.
  final FirebaseAuth firebaseAuth;

  /// Authenticate an existing user.
  Future<LoginResponse> login({
    required String email,
    required String password,
  }) async {
    try {
      final result = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return LoginResponse(
        accessToken: result.credential!.accessToken!,
        refreshToken: result.user!.refreshToken!,
        user: User(email: email, uid: result.user!.uid),
      );
    } catch (e) {
      rethrow;
    }
  }

  /// Create a new user.
  Future<SignupResponse> signup({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final result = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await result.user!.sendEmailVerification();
      return SignupResponse(
        message:
            'Successfully created a new user. Kindly verify your email to proceed',
      );
    } catch (e) {
      rethrow;
    }
  }
}
