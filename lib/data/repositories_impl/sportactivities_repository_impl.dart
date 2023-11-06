import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/sport_activities_repository.dart';

@singleton
class SportActivitiesRepositoryImpl extends SportActivitiesRepository {
  SportActivitiesRepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(SportActivitiesCompanion sportActivity) async {
    await _db.into(_db.sportActivities).insert(sportActivity);
  }

  @override
  Future<void> delete(int id) async {
    await _db.deleteSportActivity(id);
  }

  @override
  Future<SportActivity> get(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<SportActivity>> getAll() {
    return _db.sportActivitiesList;
  }
}