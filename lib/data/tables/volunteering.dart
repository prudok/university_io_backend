import 'package:drift/drift.dart';

class Volunteering extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get date => text()();
}
