import 'package:drift/drift.dart';
import 'package:university_io_backend/data/tables/tables.dart';

class AccuracyTables extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get studentId => integer().references(Students, #id)();
  IntColumn get groupId => integer().references(Groups, #id)();
  IntColumn get subjectId => integer().references(Subjects, #id)();
  IntColumn get examId => integer().references(Exams, #id)();
}
