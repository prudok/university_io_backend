import 'package:university_io_backend/data/database/university_db.dart';

abstract class MarkRepository {
  Future<void> add(MarksCompanion mark);

  Future<void> delete(int id);

  Future<Mark> get(int id);

  Future<List<Mark>> getAll();
}
