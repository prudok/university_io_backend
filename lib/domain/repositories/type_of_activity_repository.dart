import 'package:university_io_backend/data/database/university_db.dart';

abstract class TypeOfActivityRepository {
  Future<void> add(TypesOfActivitiesCompanion typeOfActivity);

  Future<TypeOfActivity> get(int id);

  Future<List<TypeOfActivity>> getAll();
}
