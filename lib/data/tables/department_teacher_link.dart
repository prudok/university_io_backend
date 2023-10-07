import 'package:drift/drift.dart';
import 'package:university_io_backend/data/tables/tables.dart';

class DepartmentTeacherLinks extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get departmentId => integer().references(Departments, #id)();
  IntColumn get teacherId => integer().references(Teachers, #id)();
}
