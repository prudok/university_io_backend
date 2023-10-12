import 'package:drift/drift.dart';

@DataClassName('Torch')
class Torches extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get date => text()();
  TextColumn get description => text()();
}
