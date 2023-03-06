import 'package:dart_frog/dart_frog.dart';

/// Executes code before and after a request.
Handler middleware(Handler handler) {
  return handler.use(requestLogger());
}
