import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/type_of_activities_repository.dart';

@singleton
class TypeOfActivitiesRepositoryImpl extends TypeOfActivitiesRepository {
  TypeOfActivitiesRepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(TypeOfActivitiesCompanion typeOfActivity) async {
    await _db.into(_db.typesOfActivities).insert(typeOfActivity);
  }

  @override
  Future<void> delete(int id) async {
    await _db.deleteTypeOfActivity(id);
  }

  @override
  Future<TypeOfActivity> get(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<TypeOfActivity>> getAll() {
    return _db.typesOfActivitiesList;
  }
}