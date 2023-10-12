import 'package:university_io_backend/data/database/university_db.dart';

abstract class SubjectRepository {
  Future<void> add(SubjectsCompanion subject);

  Future<void> delete(int id);

  Future<Subject> get(int id);

  Future<List<Subject>> getAll();
}
