import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/repositories.dart';

@singleton
class GTORepositoryImpl extends GTORepository {
  GTORepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(GTOsCompanion gto) async {
    await _db.into(_db.gTOs).insert(gto);
  }

  @override
  Future<void> delete(int id) async {
    await _db.deleteGTO(id);
  }

  @override
  Future<GTO> get(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<GTO>> getAll() {
    return _db.gTOsList;
  }
}
