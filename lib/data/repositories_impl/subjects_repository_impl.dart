import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/subject_repository.dart';

@singleton
class SubjectRepositoryImpl extends SubjectRepository {
  SubjectRepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(SubjectsCompanion subject) async {
    await _db.into(_db.subjects).insert(subject);
  }

  @override
  Future<void> delete(int id) async {
    await _db.deleteSubject(id);
  }

  @override
  Future<Subject> get(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<Subject>> getAll() {
    return _db.subjectsList;
  }
}
