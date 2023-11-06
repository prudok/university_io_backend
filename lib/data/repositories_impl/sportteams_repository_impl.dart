import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/department_repository.dart';

@singleton
class SportTeamRepositoryImpl extends DepartmentRepository {
  SportTeamRepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(SportteamsCompanion sportteam) async {
    await _db.into(_db.sportteams).insert(sportteam);
  }

  @override
  Future<void> delete(int id) async {
    await _db.deleteSportteam(id);
  }

  @override
  Future<Sportteam> get(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<Sportteam>> getAll() {
    return _db.sportteamsList;
  }
}