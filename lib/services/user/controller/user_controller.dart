import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:petbi_backend/controller/http_controller.dart';
import 'package:petbi_backend/services/user/repository/user_repository.dart';

/// [UserController].
class UserController extends HttpController {
  /// [UserController] constructor.
  UserController(this.userRepository);

  ///
  final UserRepository userRepository;

  // @override
  // FutureOr<Response> store(Request request) async {
  //   final parsedBody = await parseJson(request);
  //   if (parsedBody.isLeft) {
  //     return Response.json(
  //       body: {'message': parsedBody.left.message},
  //       statusCode: HttpStatus.badRequest,
  //     );
  //   }
  //   final json = parsedBody.right;
  //   final res = await userRepository.login(
  //     email: json['email'] as String,
  //     password: json['password'] as String,
  //   );

  //   res.fold(
  //     (left) => Response.json(body: {'message': left.message}),
  //     (right) => userRepository.login(
  //       email: right.user.email,
  //       password: right.user.uid,
  //     ),
  //   );
  // }
}
