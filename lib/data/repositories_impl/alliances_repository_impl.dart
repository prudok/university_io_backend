import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/alliance_repository.dart';

@singleton
class AllianceRepositoryImpl extends AllianceRepository {
  AllianceRepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(AlliancesCompanion alliance) async {
    await _db.into(_db.alliances).insert(alliance);
  }

  @override
  Future<void> delete(int id) async {
    await _db.deleteAlliance(id);
  }

  @override
  Future<Alliance> get(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<Alliance>> getAll() {
    return _db.alliancesList;
  }
}
