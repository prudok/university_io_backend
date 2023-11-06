import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/repositories.dart';

@singleton
class TypeOfActivitiesRepositoryImpl extends TypeOfActivityRepository {
  TypeOfActivitiesRepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(TypesOfActivitiesCompanion typeOfActivity) async {
    await _db.into(_db.typesOfActivities).insert(typeOfActivity);
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
