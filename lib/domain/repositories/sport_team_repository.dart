import 'package:university_io_backend/data/database/university_db.dart';

abstract class SportTeamsRepository {
  Future<void> add(SportTeamsCompanion sportTeam);

  Future<void> delete(int id);

  Future<SportTeam> get(int id);

  Future<List<SportTeam>> getAll();
}
