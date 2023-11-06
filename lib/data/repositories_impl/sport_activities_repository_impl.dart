import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/repositories.dart';

@singleton
class SportActivitiesRepositoryImpl extends SportActivityRepository {
  SportActivitiesRepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(SportActivitiesCompanion sportActivity) async {
    await _db.into(_db.sportActivities).insert(sportActivity);
  }

  @override
  Future<SportActivity> get(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<SportActivity>> getAll() {
    return _db.sportActivitiesList;
  }

  @override
  Future<void> delete(int id) {
    throw UnimplementedError();
  }
}
