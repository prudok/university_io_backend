import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/data/tables/tables.dart';

abstract class VolunteeringRepository {
  Future<void> add(VolunteeringCompanion volunteering);

  Future<void> delete(int id);

  Future<Volunteering> get(int id);

  Future<List<Volunteering>> getAll();
}
