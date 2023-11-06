import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/volunteering_repository.dart';

@singleton
class VolunteeringRepositoryImpl extends VolunteeringRepository {
  VolunteeringRepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(VolunteeringCompanion volunteering) async {
    await _db.into(_db.volunteering).insert(volunteering);
  }

  @override
  Future<void> delete(int id) async {
    await _db.deleteVolunteering(id);
  }

  @override
  Future<OVolunteering> get(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<OVolunteering>> getAll() {
    return _db.volunteeringList;
  }
}
