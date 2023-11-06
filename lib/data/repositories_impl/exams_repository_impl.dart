import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/exam_repository.dart';

@singleton
class ExamRepositoryImpl extends ExamRepository {
  ExamRepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(ExamsCompanion exam) async {
    await _db.into(_db.exams).insert(exam);
  }

  @override
  Future<void> delete(int id) async {
    await _db.deleteExam(id);
  }

  @override
  Future<Exam> get(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<Exam>> getAll() {
    return _db.examsList;
  }
}
