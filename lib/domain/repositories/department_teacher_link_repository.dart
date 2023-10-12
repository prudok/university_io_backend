import 'package:university_io_backend/data/database/university_db.dart';

abstract class DepartmentTeacherLinkRepository {
  Future<void> add(DepartmentTeacherLinksCompanion department);

  Future<void> delete(int id);

  Future<DepartmentTeacherLink> get(int id);

  Future<List<DepartmentTeacherLink>> getAll();
}