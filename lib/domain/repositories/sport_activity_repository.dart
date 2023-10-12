import 'package:university_io_backend/data/database/university_db.dart';

abstract class SportActivityRepository {
  Future<void> add(SportActivitiesCompanion sportActivity);

  Future<void> delete(int id);

  Future<SportActivity> get(int id);

  Future<List<SportActivity>> getAll();
}
