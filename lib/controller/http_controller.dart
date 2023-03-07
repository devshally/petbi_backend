import 'dart:async';
import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:either_dart/either.dart';
import 'package:petbi_backend/models/failure/failure.dart';
import 'package:petbi_backend/request_handlers/unimplemented_handler.dart';

///
abstract class HttpController {
  /// index - GET /resource
  FutureOr<Response> index(Request request) => unimplementedHandler();

  /// store - POST /resource
  FutureOr<Response> store(Request request) => unimplementedHandler();

  /// show - GET /resource/{id}
  FutureOr<Response> show(Request request, String id) => unimplementedHandler();

  /// update - PUT /resource/{id}
  FutureOr<Response> update(Request request, String id) =>
      unimplementedHandler();

  /// destory - DELETE /resource/{id}
  FutureOr<Response> destroy(Request request, String id) =>
      unimplementedHandler();

///
  Future<Either<Failure, Map<String, dynamic>>> parseJson(
    Request request,
  ) async {
    try {
      final body = await request.body();
      if (body.isEmpty) {
        throw 'Bad Request Exception';
      }
      late final Map<String, dynamic> json;
      try {
        json = jsonDecode(body) as Map<String, dynamic>;
        return Right(json);
      } catch (e) {
        throw 'Bad Request Exception';
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
