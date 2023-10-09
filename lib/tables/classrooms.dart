import 'package:drift/drift.dart';

class Classrooms extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get building => text()();
  TextColumn get roomNumber => integer()();
  TextColumn get capacity => integer()();
}
