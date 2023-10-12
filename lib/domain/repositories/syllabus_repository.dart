import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/data/tables/tables.dart';

abstract class SyllabusRepository {
  Future<void> add(SyllabusCompanion syllabus);

  Future<void> delete(int id);

  Future<Syllabus> get(int id);

  Future<List<Syllabus>> getAll();
}
