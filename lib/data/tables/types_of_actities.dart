import 'package:drift/drift.dart';
import 'package:university_io_backend/tables/students.dart';
import 'package:university_io_backend/tables/volunteering.dart';

class TypesOfActivities extends Table {
  IntColumn get studentId => integer().references(Students, #id)();
  IntColumn get groupId => integer().references(Groups, #id)();
  IntColumn get volunteeringId => integer().references(Volunteering, #id)();
  IntColumn get torchId => integer().references(Tourch, #id)();
}
