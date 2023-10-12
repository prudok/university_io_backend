import 'package:university_io_backend/data/database/university_db.dart';

abstract class AllianceRepository {
  Future<void> add(AlliancesCompanion alliance);

  Future<void> delete(int id);

  Future<Alliance> get(int id);

  Future<List<Alliance>> getAll();
}
