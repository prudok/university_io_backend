import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/mark_repository.dart';

@singleton
class MarkRepositoryImpl extends MarkRepository {
  MarkRepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(MarksCompanion mark) async {
    await _db.into(_db.marks).insert(mark);
  }

  @override
  Future<void> delete(int id) async {
    await _db.deleteMark(id);
  }

  @override
  Future<Mark> get(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<Mark>> getAll() {
    return _db.marksList;
  }
}