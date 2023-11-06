import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:university_io_backend/data/repositories_impl/repositories_impl.dart';

Future<Response> onRequest(RequestContext context) async {
  final teacherRepository = context.read<TeacherRepositoryImpl>();
  final teachers = await teacherRepository.getAll();

  return Response.json(body: jsonEncode(teachers.map((e) => e.toJson()).toList()));
}
