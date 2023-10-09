import 'package:drift/drift.dart';
import 'package:university_io_backend/tables/students.dart';
import 'package:university_io_backend/tables/volunteering.dart';

class TypesOfActivities extends Table {
  IntColumn get studentId => integer().references(Students, #id)();
  IntColumn get groupId => integer().references(Grops, #id)();
  IntColumn get voliunteeringId => integer().references(Volunteering, #id)();
  IntColumn get tourchId => integer().references(Tourch, #id)();
}
