import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

///
Future<Response> notAllowedRequestHandler(RequestContext context) async {
  return Response.json(
    body: {'error': '👀 Looks like you are lost 🔦'},
    statusCode: HttpStatus.methodNotAllowed,
  );
}
