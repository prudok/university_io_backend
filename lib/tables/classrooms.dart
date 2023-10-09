import 'package:drift/drift.dart';

class Classrooms extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get building => text()();
  IntColumn get roomNumber => integer()();
  IntColumn get capacity => integer()();
}
