import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/accuracy_table_repository.dart';

@singleton
class AccuracytableRepositoryImpl extends AccuracyTableRepository {
  AccuracytableRepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(AccuracyTablesCompanion accuracyTable) async {
    await _db.into(_db.accuracyTables).insert(accuracyTable);
  }

  @override
  Future<void> delete(int id) async {
    await _db.deleteAccuracyTable(id);
  }

  @override
  Future<Accuracytable> get(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<Accuracytable>> getAll() {
    return _db.accuracytablesList;
  }
}
