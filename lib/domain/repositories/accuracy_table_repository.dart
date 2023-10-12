import 'package:university_io_backend/data/database/university_db.dart';

abstract class AccuracyTableRepository {
  Future<void> add(AccuracyTablesCompanion accuracyTable);

  Future<void> delete(int id);

  Future<AccuracyTable> get(int id);

  Future<List<AccuracyTable>> getAll();
}
