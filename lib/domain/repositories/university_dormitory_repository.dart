import 'package:university_io_backend/data/database/university_db.dart';

abstract class UniversityDormitoriesRepository {
  Future<void> add(UniversityDormitoriesCompanion universityDormitory);

  Future<void> delete(int id);

  Future<UniversityDormitory> get(int id);

  Future<List<UniversityDormitory>> getAll();
}
