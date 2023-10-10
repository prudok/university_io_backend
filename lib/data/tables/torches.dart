import 'package:drift/drift.dart';

class Torches extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get date => text()();
  TextColumn get description => text()();
}
