import 'package:university_io_backend/data/database/university_db.dart';

abstract class TeacherRepository {
  Future<void> add(TeachersCompanion teacher);

  Future<void> delete(int id);

  Future<Teacher> get(int id);

  Future<List<Teacher>> getAll();
}
