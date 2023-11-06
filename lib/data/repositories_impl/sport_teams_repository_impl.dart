import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/repositories.dart';

@singleton
class SportTeamRepositoryImpl extends SportTeamsRepository {
  SportTeamRepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(SportTeamsCompanion sportTeam) async {
    await _db.into(_db.sportTeams).insert(sportTeam);
  }

  @override
  Future<void> delete(int id) async {
    await _db.deleteSportTeam(id);
  }

  @override
  Future<SportTeam> get(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<SportTeam>> getAll() {
    return _db.sportTeamsList;
  }
}
