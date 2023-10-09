import 'package:drift/drift.dart';

class SportTeams extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
}
