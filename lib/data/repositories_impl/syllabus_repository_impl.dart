import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/syllabus_repository.dart';

@singleton
class SyllabusRepositoryImpl extends SyllabusRepository {
  SyllabusRepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(SyllabusCompanion syllabus) async {
    await _db.into(_db.syllabus).insert(syllabus);
  }

  @override
  Future<void> delete(int id) async {
    await _db.deleteSyllabus(id);
  }

  @override
  Future<Syllabus> get(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<Syllabus>> getAll() {
    return _db.syllabusList;
  }
}