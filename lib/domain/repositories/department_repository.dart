import 'package:university_io_backend/data/database/university_db.dart';

abstract class DepartmentRepository {
  Future<void> add(DepartmentsCompanion department);

  Future<void> delete(int id);

  Future<Department> get(int id);

  Future<List<Department>> getAll();
}
