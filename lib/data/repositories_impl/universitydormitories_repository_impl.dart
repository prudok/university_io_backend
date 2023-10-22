import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/university_dormitory_repository.dart';

@singleton
class UniversityDormitoryRepositoryImpl extends UniversityDormitoryRepository {
  UniversityDormitoryRepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(UniversityDormitoriesCompanion universityDormitory) async {
    await _db.into(_db.universitydormitories).insert(universityDormitory);
  }

  @override
  Future<void> delete(int id) async {
    await _db.deleteUniversityDormitory(id);
  }

  @override
  Future<UniversityDormitory> get(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<UniversityDormitory>> getAll() {
    return _db.universitydormitoriesList;
  }
}