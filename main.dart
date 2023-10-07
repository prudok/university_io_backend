import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:university_io_backend/config/service_locator.dart';

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) {
  configureDependencies();
  return serve(handler, ip, port);
}
