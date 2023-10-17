import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/repositories.dart';

@singleton
class GTORepositoryImpl extends GTORepository {
  GTORepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(GTOsCompanion gto) async {
    await _db.into(_db.gto).insert(gto);
  }

  @override
  Future<void> delete(int id) async {
    await _db.deleteGto(id);
  }

  @override
  Future<Gto> get(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<Gto>> getAll() {
    return _db.gtoList;
  }
}
