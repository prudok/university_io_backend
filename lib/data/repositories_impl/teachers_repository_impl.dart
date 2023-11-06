import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/teacher_repository.dart';

@singleton
class TeacherRepositoryImpl extends TeacherRepository {
  TeacherRepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(TeachersCompanion teacher) async {
    await _db.into(_db.teachers).insert(teacher);
  }

  @override
  Future<void> delete(int id) async {
    await _db.deleteTeacher(id);
  }

  @override
  Future<Teacher> get(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<Teacher>> getAll() {
    return _db.teachersList;
  }
}
