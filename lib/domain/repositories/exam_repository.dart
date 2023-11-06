import 'package:university_io_backend/data/database/university_db.dart';

abstract class ExamRepository {
  Future<void> add(ExamsCompanion exam);

  Future<void> delete(int id);

  Future<Exam> get(int id);

  Future<List<Exam>> getAll();
}
