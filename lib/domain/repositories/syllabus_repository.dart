import 'package:university_io_backend/data/database/university_db.dart';

abstract class SyllabusRepository {
  Future<void> add(SyllabusCompanion syllabus);

  Future<void> delete(int id);

  Future<Syllabu> get(int id);

  Future<List<Syllabu>> getAll();
}
