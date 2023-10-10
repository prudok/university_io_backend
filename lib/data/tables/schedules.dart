import 'package:drift/drift.dart';
import 'package:university_io_backend/data/tables/tables.dart';

class Schedules extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get weekday => integer()();
  TextColumn get startTime => text()();
  TextColumn get endTime => text()();
  IntColumn get classroomId => integer().references(Classrooms, #id)();
  IntColumn get groupId => integer().references(Groups, #id)();
  IntColumn get subjectId => integer().references(Subjects, #id)();
  IntColumn get teacherId => integer().references(Teachers, #id)();
}
