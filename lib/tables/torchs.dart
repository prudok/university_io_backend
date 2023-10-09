import 'package:drift/drift.dart';

class Torchs extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get date => text()();
  TextColumn get description => text()();
}
