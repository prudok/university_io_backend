import 'package:drift/drift.dart';

class Gto extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
}