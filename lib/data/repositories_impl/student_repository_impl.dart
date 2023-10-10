import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/student_repository.dart';

@singleton
class StudentRepositoryImpl extends StudentRepository {
  StudentRepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(StudentsCompanion student) async {
    await _db.into(_db.students).insert(student);
  }

  @override
  Future<void> delete(int id) async {
    await _db.deleteStudent(id);
  }

  @override
  Future<Student> get(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<Student>> getAll() {
    return _db.studentsList;
  }
}
