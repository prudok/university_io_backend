import 'package:drift/drift.dart';

class AccuracyTables extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get studentId => integer()();
  TextColumn get groupId => integer()();
  TextColumn get subjectId => integer()();
  TextColumn get examId => integer()();
}
