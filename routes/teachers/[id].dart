import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:university_io_backend/data/repositories_impl/repositories_impl.dart';

Future<Response> onRequest(RequestContext context, int id) async {
  final studentRepository = context.read<TeacherRepositoryImpl>();
  final student = await studentRepository.get(id);
  return Response.json(body: jsonEncode(student.toJson()));
}
