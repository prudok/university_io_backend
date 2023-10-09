import 'package:drift/drift.dart';

class Schedules extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get weekday => integer()();
  TextColumn get startTime => text()();
  TextColumn get endTime => text()();
  TextColumn get classroomId => integer()();
  TextColumn get groupId => integer()();
  TextColumn get subjectId => integer()();
  TextColumn get teacherId => integer()();
}
