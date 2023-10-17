import 'package:injectable/injectable.dart';
import 'package:university_io_backend/data/database/university_db.dart';
import 'package:university_io_backend/domain/repositories/department_repository.dart';

@singleton
class GroupRepositoryImpl extends DepartmentRepository {
  GroupRepositoryImpl({required UniversityDatabase db}) : _db = db;

  final UniversityDatabase _db;

  @override
  Future<void> add(DepartmentsCompanion group) async {
    await _db.into(_db.groups).insert(group);
  }

  @override
  Future<void> delete(int id) async {
    await _db.deleteGroup(id);
  }

  @override
  Future<Department> get(int id) {
    throw UnimplementedError();
  }

  @override
  Future<List<Department>> getAll() {
    return _db.groupsList;
  }
}