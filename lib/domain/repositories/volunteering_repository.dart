import 'package:university_io_backend/data/database/university_db.dart';

abstract class VolunteeringRepository {
  Future<void> add(VolunteeringCompanion volunteering);

  Future<void> delete(int id);

  Future<OVolunteering> get(int id);

  Future<List<OVolunteering>> getAll();
}
